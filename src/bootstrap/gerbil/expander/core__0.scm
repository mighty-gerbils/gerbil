(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707740667)
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
      (lambda _$args144806_
        (apply make-instance gx#expander-context::t _$args144806_)))
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
      (lambda _$args144803_
        (apply make-instance gx#root-context::t _$args144803_)))
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
      (lambda _$args144800_
        (apply make-instance gx#phi-context::t _$args144800_)))
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
      (lambda _$args144797_
        (apply make-instance gx#top-context::t _$args144797_)))
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
      (lambda _$args144794_
        (apply make-instance gx#module-context::t _$args144794_)))
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
      (lambda _$args144791_
        (apply make-instance gx#prelude-context::t _$args144791_)))
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
      (lambda _$args144788_
        (apply make-instance gx#local-context::t _$args144788_)))
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
      (lambda (_self144772_ _id144773_ _super144774_)
        (if (##fx< '3 (##structure-length _self144772_))
            (begin
              (##unchecked-structure-set!
               _self144772_
               _id144773_
               '1
               (##structure-type _self144772_)
               '#f)
              (##unchecked-structure-set!
               _self144772_
               (make-table 'test: eq?)
               '2
               (##structure-type _self144772_)
               '#f)
              (##unchecked-structure-set!
               _self144772_
               _super144774_
               '3
               (##structure-type _self144772_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self144772_
                   '3
                   (##vector-length _self144772_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self144779_ _id144780_)
        (let ((_super144782_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self144779_ _id144780_ _super144782_))))
    (define gx#phi-context:::init!
      (lambda _g149417_
        (let ((_g149416_ (##length _g149417_)))
          (cond ((##fx= _g149416_ 2)
                 (apply (lambda (_self144779_ _id144780_)
                          (gx#phi-context:::init!__0 _self144779_ _id144780_))
                        _g149417_))
                ((##fx= _g149416_ 3)
                 (apply (lambda (_self144784_ _id144785_ _super144786_)
                          (gx#phi-context:::init!__%
                           _self144784_
                           _id144785_
                           _super144786_))
                        _g149417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g149417_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self144636_ _super144637_)
        (if (##fx< '3 (##structure-length _self144636_))
            (begin
              (##unchecked-structure-set!
               _self144636_
               (gensym 'L)
               '1
               (##structure-type _self144636_)
               '#f)
              (##unchecked-structure-set!
               _self144636_
               (make-table 'test: eq?)
               '2
               (##structure-type _self144636_)
               '#f)
              (##unchecked-structure-set!
               _self144636_
               _super144637_
               '3
               (##structure-type _self144636_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self144636_
                   '3
                   (##vector-length _self144636_)))))
    (define gx#local-context:::init!__0
      (lambda (_self144642_)
        (let ((_super144644_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self144642_ _super144644_))))
    (define gx#local-context:::init!
      (lambda _g149419_
        (let ((_g149418_ (##length _g149419_)))
          (cond ((##fx= _g149418_ 1)
                 (apply (lambda (_self144642_)
                          (gx#local-context:::init!__0 _self144642_))
                        _g149419_))
                ((##fx= _g149418_ 2)
                 (apply (lambda (_self144646_ _super144647_)
                          (gx#local-context:::init!__%
                           _self144646_
                           _super144647_))
                        _g149419_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g149419_))))))
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
      (lambda _$args144510_ (apply make-instance gx#binding::t _$args144510_)))
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
      (lambda _$args144507_
        (apply make-instance gx#runtime-binding::t _$args144507_)))
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
      (lambda _$args144504_
        (apply make-instance gx#local-binding::t _$args144504_)))
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
      (lambda _$args144501_
        (apply make-instance gx#top-binding::t _$args144501_)))
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
      (lambda _$args144498_
        (apply make-instance gx#module-binding::t _$args144498_)))
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
      (lambda _$args144495_
        (apply make-instance gx#extern-binding::t _$args144495_)))
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
      (lambda _$args144492_
        (apply make-instance gx#syntax-binding::t _$args144492_)))
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
      (lambda _$args144489_
        (apply make-instance gx#import-binding::t _$args144489_)))
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
      (lambda _$args144486_
        (apply make-instance gx#alias-binding::t _$args144486_)))
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
      (lambda _$args144483_
        (apply make-instance gx#expander::t _$args144483_)))
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
      (lambda _$args144480_
        (apply make-instance gx#core-expander::t _$args144480_)))
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
      (lambda _$args144477_
        (apply make-instance gx#expression-form::t _$args144477_)))
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
      (lambda _$args144474_
        (apply make-instance gx#special-form::t _$args144474_)))
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
      (lambda _$args144471_
        (apply make-instance gx#definition-form::t _$args144471_)))
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
      (lambda _$args144468_
        (apply make-instance gx#top-special-form::t _$args144468_)))
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
      (lambda _$args144465_
        (apply make-instance gx#module-special-form::t _$args144465_)))
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
      (lambda _$args144462_
        (apply make-instance gx#feature-expander::t _$args144462_)))
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
      (lambda _$args144459_
        (apply make-instance gx#private-feature-expander::t _$args144459_)))
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
      (lambda _$args144456_
        (apply make-instance gx#reserved-expander::t _$args144456_)))
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
      (lambda _$args144453_
        (apply make-instance gx#macro-expander::t _$args144453_)))
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
      (lambda _$args144450_
        (apply make-instance gx#rename-macro-expander::t _$args144450_)))
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
      (lambda _$args144447_
        (apply make-instance gx#user-expander::t _$args144447_)))
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
      (lambda _$args144444_
        (apply make-instance gx#expander-mark::t _$args144444_)))
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
      (lambda (_ctx144429_ _message144430_ _stx144431_ . _details144432_)
        (let ((_ctx144442_
               (let ((_$e144434_ _ctx144429_))
                 (if _$e144434_
                     _$e144434_
                     (let ((_$e144437_ (gx#core-context-top__0)))
                       (if _$e144437_
                           ((lambda (_ctx144440_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx144440_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e144437_)
                           '#f))))))
          (raise (make-syntax-error
                  _message144430_
                  (cons _stx144431_ _details144432_)
                  _ctx144442_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx144416_ _expression?144417_)
        (gx#eval-syntax* (gx#core-expand__% _stx144416_ _expression?144417_))))
    (define gx#eval-syntax__0
      (lambda (_stx144422_)
        (let ((_expression?144424_ '#f))
          (gx#eval-syntax__% _stx144422_ _expression?144424_))))
    (define gx#eval-syntax
      (lambda _g149421_
        (let ((_g149420_ (##length _g149421_)))
          (cond ((##fx= _g149420_ 1)
                 (apply (lambda (_stx144422_) (gx#eval-syntax__0 _stx144422_))
                        _g149421_))
                ((##fx= _g149420_ 2)
                 (apply (lambda (_stx144426_ _expression?144427_)
                          (gx#eval-syntax__% _stx144426_ _expression?144427_))
                        _g149421_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g149421_))))))
    (define gx#eval-syntax*
      (lambda (_stx144413_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx144413_))))
    (define gx#core-expand__%
      (lambda (_stx144400_ _expression?144401_)
        (if _expression?144401_
            (gx#core-expand-expression _stx144400_)
            (gx#core-expand-top _stx144400_))))
    (define gx#core-expand__0
      (lambda (_stx144406_)
        (let ((_expression?144408_ '#f))
          (gx#core-expand__% _stx144406_ _expression?144408_))))
    (define gx#core-expand
      (lambda _g149423_
        (let ((_g149422_ (##length _g149423_)))
          (cond ((##fx= _g149422_ 1)
                 (apply (lambda (_stx144406_) (gx#core-expand__0 _stx144406_))
                        _g149423_))
                ((##fx= _g149422_ 2)
                 (apply (lambda (_stx144410_ _expression?144411_)
                          (gx#core-expand__% _stx144410_ _expression?144411_))
                        _g149423_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g149423_))))))
    (define gx#core-expand-top
      (lambda (_stx144367_)
        (let* ((_stx144369_ (gx#core-expand*__0 _stx144367_))
               (_e144370144377_ _stx144369_)
               (_E144372144381_
                (lambda () (gx#core-expand-expression _stx144369_)))
               (_E144371144395_
                (lambda ()
                  (if (gx#stx-pair? _e144370144377_)
                      (let ((_e144373144385_ (gx#syntax-e _e144370144377_)))
                        (let ((_hd144374144388_ (##car _e144373144385_))
                              (_tl144375144390_ (##cdr _e144373144385_)))
                          (let ((_form144393_ _hd144374144388_))
                            (if (gx#core-bound-identifier?__0 _form144393_)
                                _stx144369_
                                (_E144372144381_)))))
                      (_E144372144381_)))))
          (_E144371144395_))))
    (define gx#core-expand-expression
      (lambda (_stx144314_)
        (letrec ((_sealed-expression?144316_
                  (lambda (_hd144337_)
                    (if (gx#sealed-syntax? _hd144337_)
                        (let* ((_e144338144345_ _hd144337_)
                               (_E144340144349_ (lambda () '#f))
                               (_E144339144363_
                                (lambda ()
                                  (if (gx#stx-pair? _e144338144345_)
                                      (let ((_e144341144353_
                                             (gx#syntax-e _e144338144345_)))
                                        (let ((_hd144342144356_
                                               (##car _e144341144353_))
                                              (_tl144343144358_
                                               (##cdr _e144341144353_)))
                                          (let ((_form144361_
                                                 _hd144342144356_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form144361_
                                                 gx#expression-form-binding?)
                                                (_E144340144349_)))))
                                      (_E144340144349_)))))
                          (_E144339144363_))
                        '#f)))
                 (_illegal-expression144317_
                  (lambda (_hd144335_ . _g149424_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx144314_
                     _hd144335_)))
                 (_expand-e144318_
                  (lambda (_form144330_ _hd144331_)
                    (let ((_bind144333_
                           (if (##structure-instance-of?
                                _form144330_
                                'gx#binding::t)
                               _form144330_
                               (gx#resolve-identifier__0 _form144330_))))
                      (if (gx#core-expander-binding? _bind144333_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind144333_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd144331_
                            (gx#stx-source _stx144314_)))
                          (if (##structure-direct-instance-of?
                               _bind144333_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind144333_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd144331_
                                 (gx#stx-source _stx144314_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx144314_
                               _form144330_)))))))
          (let ((_hd144320_ (gx#core-expand-head _stx144314_)))
            (if (_sealed-expression?144316_ _hd144320_)
                _hd144320_
                (if (gx#stx-pair? _hd144320_)
                    (let* ((_form144322_ (gx#stx-car _hd144320_))
                           (_bind144324_
                            (if (gx#identifier? _form144322_)
                                (gx#resolve-identifier__0 _form144322_)
                                '#f)))
                      (if (or (not _bind144324_)
                              (not (gx#core-expander-binding? _bind144324_)))
                          (_expand-e144318_ '%%app (cons '%%app _hd144320_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind144324_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd144320_
                               _illegal-expression144317_)
                              (if (gx#expression-form-binding? _bind144324_)
                                  (_expand-e144318_ _bind144324_ _hd144320_)
                                  (if (gx#direct-special-form-binding?
                                       _bind144324_)
                                      (gx#core-expand-expression
                                       (_expand-e144318_
                                        _bind144324_
                                        _hd144320_))
                                      (_illegal-expression144317_
                                       _hd144320_))))))
                    (if (gx#core-bound-identifier?__0 _hd144320_)
                        (_illegal-expression144317_ _hd144320_)
                        (if (gx#identifier? _hd144320_)
                            (_expand-e144318_
                             '%%ref
                             (cons '%%ref (cons _hd144320_ '())))
                            (if (gx#stx-datum? _hd144320_)
                                (_expand-e144318_
                                 '%#quote
                                 (cons '%#quote (cons _hd144320_ '())))
                                (_illegal-expression144317_
                                 _hd144320_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx144309_)
        (call-with-parameters
         (lambda ()
           (let ((_stx144312_ (gx#core-expand-expression _stx144309_)))
             (values _stx144312_ (gx#eval-syntax* _stx144312_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx144290_ _stop?144291_)
        (let _lp144293_ ((_stx144295_ _stx144290_))
          (if (_stop?144291_ _stx144295_)
              _stx144295_
              (let ((_rstx144297_ (gx#core-expand1 _stx144295_)))
                (if (eq? _stx144295_ _rstx144297_)
                    _stx144295_
                    (_lp144293_ _rstx144297_)))))))
    (define gx#core-expand*__0
      (lambda (_stx144302_)
        (let ((_stop?144304_ false))
          (gx#core-expand*__% _stx144302_ _stop?144304_))))
    (define gx#core-expand*
      (lambda _g149426_
        (let ((_g149425_ (##length _g149426_)))
          (cond ((##fx= _g149425_ 1)
                 (apply (lambda (_stx144302_) (gx#core-expand*__0 _stx144302_))
                        _g149426_))
                ((##fx= _g149425_ 2)
                 (apply (lambda (_stx144306_ _stop?144307_)
                          (gx#core-expand*__% _stx144306_ _stop?144307_))
                        _g149426_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g149426_))))))
    (define gx#core-expand1
      (lambda (_stx144246_)
        (letrec ((_step144248_
                  (lambda (_hd144285_)
                    (let ((_bind144287_ (gx#resolve-identifier__0 _hd144285_)))
                      (if (##structure-instance-of?
                           _bind144287_
                           'gx#runtime-binding::t)
                          _stx144246_
                          (if (##structure-direct-instance-of?
                               _bind144287_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind144287_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx144246_)
                              (if (not _bind144287_)
                                  _stx144246_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx144246_))))))))
          (let* ((_e144249144257_ _stx144246_)
                 (_E144255144261_ (lambda () _stx144246_))
                 (_E144251144267_
                  (lambda ()
                    (let ((_hd144265_ _e144249144257_))
                      (if (gx#identifier? _hd144265_)
                          (_step144248_ _hd144265_)
                          (_E144255144261_)))))
                 (_E144250144281_
                  (lambda ()
                    (if (gx#stx-pair? _e144249144257_)
                        (let ((_e144252144271_ (gx#syntax-e _e144249144257_)))
                          (let ((_hd144253144274_ (##car _e144252144271_))
                                (_tl144254144276_ (##cdr _e144252144271_)))
                            (let ((_hd144279_ _hd144253144274_))
                              (if (gx#identifier? _hd144279_)
                                  (_step144248_ _hd144279_)
                                  (_E144251144267_)))))
                        (_E144251144267_)))))
            (_E144250144281_)))))
    (define gx#core-expand-head
      (lambda (_stx144212_)
        (letrec ((_stop?144214_
                  (lambda (_stx144216_)
                    (let* ((_e144217144224_ _stx144216_)
                           (_E144219144228_ (lambda () '#f))
                           (_E144218144242_
                            (lambda ()
                              (if (gx#stx-pair? _e144217144224_)
                                  (let ((_e144220144232_
                                         (gx#syntax-e _e144217144224_)))
                                    (let ((_hd144221144235_
                                           (##car _e144220144232_))
                                          (_tl144222144237_
                                           (##cdr _e144220144232_)))
                                      (let ((_hd144240_ _hd144221144235_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd144240_)
                                            (_E144219144228_)))))
                                  (_E144219144228_)))))
                      (_E144218144242_)))))
          (gx#core-expand*__% _stx144212_ _stop?144214_))))
    (define gx#core-expand-block__%
      (lambda (_stx144018_
               _expand-special144019_
               _begin-form144020_
               _expand-e144021_)
        (letrec ((_expand-splice144023_
                  (lambda (_hd144186_ _body144187_ _rest144188_ _r144189_)
                    (if (gx#stx-list? _body144187_)
                        (_K144027_
                         (gx#stx-foldr cons _rest144188_ _body144187_)
                         _r144189_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx144018_
                         _hd144186_))))
                 (_expand-cond-expand144024_
                  (lambda (_hd144182_ _rest144183_ _r144184_)
                    (_K144027_
                     (cons (gx#core-expand-cond-expand% _hd144182_)
                           _rest144183_)
                     _r144184_)))
                 (_expand-include144025_
                  (lambda (_hd144131_ _rest144132_ _r144133_)
                    (let* ((_e144134144144_ _hd144131_)
                           (_E144136144148_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e144134144144_)))
                           (_E144135144178_
                            (lambda ()
                              (if (gx#stx-pair? _e144134144144_)
                                  (let ((_e144137144152_
                                         (gx#syntax-e _e144134144144_)))
                                    (let ((_hd144138144155_
                                           (##car _e144137144152_))
                                          (_tl144139144157_
                                           (##cdr _e144137144152_)))
                                      (if (gx#stx-pair? _tl144139144157_)
                                          (let ((_e144140144160_
                                                 (gx#syntax-e
                                                  _tl144139144157_)))
                                            (let ((_hd144141144163_
                                                   (##car _e144140144160_))
                                                  (_tl144142144165_
                                                   (##cdr _e144140144160_)))
                                              (let ((_path144168_
                                                     _hd144141144163_))
                                                (if (gx#stx-null?
                                                     _tl144142144165_)
                                                    (if (gx#stx-string?
                                                         _path144168_)
                                                        (let* ((_rpath144170_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path144168_
                         (gx#stx-source _hd144131_)))
                       (_block144172_
                        (gx#core-expand-include%__% _hd144131_ _rpath144170_))
                       (_rbody144175_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block144172_
                            _expand-special144019_
                            '#f
                            _expand-e144021_))
                         gx#current-expander-path
                         (cons _rpath144170_ (gx#current-expander-path)))))
                  (_K144027_
                   _rest144132_
                   (foldr1 cons _r144133_ _rbody144175_)))
                (_E144136144148_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E144136144148_)))))
                                          (_E144136144148_))))
                                  (_E144136144148_)))))
                      (_E144135144178_))))
                 (_expand-expression144026_
                  (lambda (_hd144127_ _rest144128_ _r144129_)
                    (_K144027_
                     _rest144128_
                     (cons (_expand-e144021_ _hd144127_) _r144129_))))
                 (_K144027_
                  (lambda (_rest144057_ _r144058_)
                    (let* ((_e144059144066_ _rest144057_)
                           (_E144061144070_
                            (lambda ()
                              (if _begin-form144020_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form144020_
                                    (reverse _r144058_))
                                   (gx#stx-source _stx144018_))
                                  _r144058_)))
                           (_E144060144123_
                            (lambda ()
                              (if (gx#stx-pair? _e144059144066_)
                                  (let ((_e144062144074_
                                         (gx#syntax-e _e144059144066_)))
                                    (let ((_hd144063144077_
                                           (##car _e144062144074_))
                                          (_tl144064144079_
                                           (##cdr _e144062144074_)))
                                      (let* ((_hd144082_ _hd144063144077_)
                                             (_rest144084_ _tl144064144079_))
                                        (if '#t
                                            (let* ((_hd144086_
                                                    (gx#core-expand-head
                                                     _hd144082_))
                                                   (_e144087144094_ _hd144086_)
                                                   (_E144089144098_
                                                    (lambda ()
                                                      (_expand-expression144026_
                                                       _hd144086_
                                                       _rest144084_
                                                       _r144058_)))
                                                   (_E144088144119_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e144087144094_)
                                                          (let ((_e144090144102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e144087144094_)))
                    (let ((_hd144091144105_ (##car _e144090144102_))
                          (_tl144092144107_ (##cdr _e144090144102_)))
                      (let* ((_form144110_ _hd144091144105_)
                             (_body144112_ _tl144092144107_))
                        (if '#t
                            (let ((_bind144114_
                                   (if (gx#identifier? _form144110_)
                                       (gx#resolve-identifier__0 _form144110_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind144114_)
                                  (let ((_$e144116_
                                         (##unchecked-structure-ref
                                          _bind144114_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e144116_)
                                        (_expand-splice144023_
                                         _hd144086_
                                         _body144112_
                                         _rest144084_
                                         _r144058_)
                                        (if (eq? '%#cond-expand _$e144116_)
                                            (_expand-cond-expand144024_
                                             _hd144086_
                                             _rest144084_
                                             _r144058_)
                                            (if (eq? '%#include _$e144116_)
                                                (_expand-include144025_
                                                 _hd144086_
                                                 _rest144084_
                                                 _r144058_)
                                                (_expand-special144019_
                                                 _hd144086_
                                                 _K144027_
                                                 _rest144084_
                                                 _r144058_)))))
                                  (_expand-expression144026_
                                   _hd144086_
                                   _rest144084_
                                   _r144058_)))
                            (_E144089144098_)))))
                  (_E144089144098_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E144088144119_))
                                            (_E144061144070_)))))
                                  (_E144061144070_)))))
                      (_E144060144123_)))))
          (let* ((_e144028144035_ _stx144018_)
                 (_E144030144039_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e144028144035_)))
                 (_E144029144053_
                  (lambda ()
                    (if (gx#stx-pair? _e144028144035_)
                        (let ((_e144031144043_ (gx#syntax-e _e144028144035_)))
                          (let ((_hd144032144046_ (##car _e144031144043_))
                                (_tl144033144048_ (##cdr _e144031144043_)))
                            (let ((_body144051_ _tl144033144048_))
                              (if (gx#stx-list? _body144051_)
                                  (_K144027_ _body144051_ '())
                                  (_E144030144039_)))))
                        (_E144030144039_)))))
            (_E144029144053_)))))
    (define gx#core-expand-block__0
      (lambda (_stx144194_ _expand-special144195_)
        (let* ((_begin-form144197_ '%#begin)
               (_expand-e144199_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx144194_
           _expand-special144195_
           _begin-form144197_
           _expand-e144199_))))
    (define gx#core-expand-block__1
      (lambda (_stx144201_ _expand-special144202_ _begin-form144203_)
        (let ((_expand-e144205_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx144201_
           _expand-special144202_
           _begin-form144203_
           _expand-e144205_))))
    (define gx#core-expand-block
      (lambda _g149428_
        (let ((_g149427_ (##length _g149428_)))
          (cond ((##fx= _g149427_ 2)
                 (apply (lambda (_stx144194_ _expand-special144195_)
                          (gx#core-expand-block__0
                           _stx144194_
                           _expand-special144195_))
                        _g149428_))
                ((##fx= _g149427_ 3)
                 (apply (lambda (_stx144201_
                                 _expand-special144202_
                                 _begin-form144203_)
                          (gx#core-expand-block__1
                           _stx144201_
                           _expand-special144202_
                           _begin-form144203_))
                        _g149428_))
                ((##fx= _g149427_ 4)
                 (apply (lambda (_stx144207_
                                 _expand-special144208_
                                 _begin-form144209_
                                 _expand-e144210_)
                          (gx#core-expand-block__%
                           _stx144207_
                           _expand-special144208_
                           _begin-form144209_
                           _expand-e144210_))
                        _g149428_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g149428_))))))
    (define gx#core-expand-block*
      (lambda (_stx143966_ _expand-special143967_)
        (let* ((_g143968143979_
                (gx#core-expand-block__1
                 _stx143966_
                 _expand-special143967_
                 '#f))
               (_E143972143983_
                (lambda () (error '"No clause matching" _g143968143979_))))
          (let ((_K143977144014_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx143966_)))
                (_K143974144000_ (lambda (_expr143998_) _expr143998_))
                (_K143973143989_
                 (lambda (_body143987_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body143987_))
                    (gx#stx-source _stx143966_)))))
            (let ((_try-match143970144010_
                   (lambda ()
                     (if (##pair? _g143968143979_)
                         (let ((_tl143976144005_ (##cdr _g143968143979_))
                               (_hd143975144003_ (##car _g143968143979_)))
                           (if (##null? _tl143976144005_)
                               (let ((_expr144008_ _hd143975144003_))
                                 (_K143974144000_ _expr144008_))
                               (let ((_body143992_ _g143968143979_))
                                 (_K143973143989_ _body143992_))))
                         (let ((_body143992_ _g143968143979_))
                           (_K143973143989_ _body143992_))))))
              (if (##null? _g143968143979_)
                  (_K143977144014_)
                  (_try-match143970144010_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx143794_)
        (letrec ((_satisfied?143796_
                  (lambda (_condition143894_)
                    (let* ((_e143895143910_ _condition143894_)
                           (_E143905143914_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e143895143910_)))
                           (_E143898143933_
                            (lambda ()
                              (if (gx#stx-pair? _e143895143910_)
                                  (let ((_e143906143918_
                                         (gx#syntax-e _e143895143910_)))
                                    (let ((_hd143907143921_
                                           (##car _e143906143918_))
                                          (_tl143908143923_
                                           (##cdr _e143906143918_)))
                                      (let* ((_combinator143926_
                                              _hd143907143921_)
                                             (_body143928_ _tl143908143923_))
                                        (if (gx#stx-list? _body143928_)
                                            (let ((_$e143930_
                                                   (gx#stx-e
                                                    _combinator143926_)))
                                              (if (eq? 'not _$e143930_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?143796_
                                                        _body143928_))
                                                  (if (eq? 'and _$e143930_)
                                                      (gx#stx-andmap
                                                       _satisfied?143796_
                                                       _body143928_)
                                                      (if (eq? 'or _$e143930_)
                                                          (gx#stx-ormap
                                                           _satisfied?143796_
                                                           _body143928_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e143930_)
                      (gx#stx-andmap gx#core-resolve-identifier _body143928_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx143794_
                       _combinator143926_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E143905143914_)))))
                                  (_E143905143914_))))
                           (_E143897143956_
                            (lambda ()
                              (if (gx#stx-pair? _e143895143910_)
                                  (let ((_e143899143937_
                                         (gx#syntax-e _e143895143910_)))
                                    (let ((_hd143900143940_
                                           (##car _e143899143937_))
                                          (_tl143901143942_
                                           (##cdr _e143899143937_)))
                                      (if (and (gx#identifier?
                                                _hd143900143940_)
                                               (gx#core-identifier=?
                                                _hd143900143940_
                                                'unquote))
                                          (if (gx#stx-pair? _tl143901143942_)
                                              (let ((_e143902143945_
                                                     (gx#syntax-e
                                                      _tl143901143942_)))
                                                (let ((_hd143903143948_
                                                       (##car _e143902143945_))
                                                      (_tl143904143950_
                                                       (##cdr _e143902143945_)))
                                                  (let ((_expr143953_
                                                         _hd143903143948_))
                                                    (if (gx#stx-null?
                                                         _tl143904143950_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr143953_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E143898143933_))
                (_E143898143933_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E143898143933_))
                                          (_E143898143933_))))
                                  (_E143898143933_))))
                           (_E143896143962_
                            (lambda ()
                              (let ((_id143960_ _e143895143910_))
                                (if (gx#identifier? _id143960_)
                                    (gx#core-bound-identifier?__%
                                     _id143960_
                                     gx#feature-binding?)
                                    (_E143897143956_))))))
                      (_E143896143962_))))
                 (_loop143797_
                  (lambda (_rest143827_)
                    (let* ((_e143828143836_ _rest143827_)
                           (_E143834143840_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e143828143836_)))
                           (_E143830143844_
                            (lambda ()
                              (if (gx#stx-null? _e143828143836_)
                                  (if '#t '() (_E143834143840_))
                                  (_E143834143840_))))
                           (_E143829143890_
                            (lambda ()
                              (if (gx#stx-pair? _e143828143836_)
                                  (let ((_e143831143848_
                                         (gx#syntax-e _e143828143836_)))
                                    (let ((_hd143832143851_
                                           (##car _e143831143848_))
                                          (_tl143833143853_
                                           (##cdr _e143831143848_)))
                                      (let* ((_hd143856_ _hd143832143851_)
                                             (_rest143858_ _tl143833143853_))
                                        (if '#t
                                            (let* ((_e143859143866_ _hd143856_)
                                                   (_E143861143870_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e143859143866_)))
                                                   (_E143860143886_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e143859143866_)
                                                          (let ((_e143862143874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e143859143866_)))
                    (let ((_hd143863143877_ (##car _e143862143874_))
                          (_tl143864143879_ (##cdr _e143862143874_)))
                      (let* ((_condition143882_ _hd143863143877_)
                             (_body143884_ _tl143864143879_))
                        (if '#t
                            (if (gx#stx-eq? _condition143882_ 'else)
                                (if (gx#stx-null? _rest143858_)
                                    _body143884_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx143794_
                                     _hd143856_))
                                (if (_satisfied?143796_ _condition143882_)
                                    _body143884_
                                    (_loop143797_ _rest143858_)))
                            (_E143861143870_)))))
                  (_E143861143870_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E143860143886_))
                                            (_E143830143844_)))))
                                  (_E143830143844_)))))
                      (_E143829143890_)))))
          (let* ((_e143798143805_ _stx143794_)
                 (_E143800143809_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e143798143805_)))
                 (_E143799143823_
                  (lambda ()
                    (if (gx#stx-pair? _e143798143805_)
                        (let ((_e143801143813_ (gx#syntax-e _e143798143805_)))
                          (let ((_hd143802143816_ (##car _e143801143813_))
                                (_tl143803143818_ (##cdr _e143801143813_)))
                            (let ((_clauses143821_ _tl143803143818_))
                              (if (gx#stx-list? _clauses143821_)
                                  (gx#core-cons
                                   'begin
                                   (_loop143797_ _clauses143821_))
                                  (_E143800143809_)))))
                        (_E143800143809_)))))
            (_E143799143823_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx143737_ _rpath143738_)
        (let* ((_e143739143749_ _stx143737_)
               (_E143741143753_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e143739143749_)))
               (_E143740143780_
                (lambda ()
                  (if (gx#stx-pair? _e143739143749_)
                      (let ((_e143742143757_ (gx#syntax-e _e143739143749_)))
                        (let ((_hd143743143760_ (##car _e143742143757_))
                              (_tl143744143762_ (##cdr _e143742143757_)))
                          (if (gx#stx-pair? _tl143744143762_)
                              (let ((_e143745143765_
                                     (gx#syntax-e _tl143744143762_)))
                                (let ((_hd143746143768_
                                       (##car _e143745143765_))
                                      (_tl143747143770_
                                       (##cdr _e143745143765_)))
                                  (let ((_path143773_ _hd143746143768_))
                                    (if (gx#stx-null? _tl143747143770_)
                                        (if (gx#stx-string? _path143773_)
                                            (let ((_rpath143778_
                                                   (let ((_$e143775_
                                                          _rpath143738_))
                                                     (if _$e143775_
                                                         _$e143775_
                                                         (gx#core-resolve-path__%
                                                          _path143773_
                                                          (gx#stx-source
                                                           _stx143737_))))))
                                              (if (member _rpath143778_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx143737_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath143778_))
                                                    (gx#stx-source
                                                     _stx143737_)))))
                                            (_E143741143753_))
                                        (_E143741143753_)))))
                              (_E143741143753_))))
                      (_E143741143753_)))))
          (_E143740143780_))))
    (define gx#core-expand-include%__0
      (lambda (_stx143787_)
        (let ((_rpath143789_ '#f))
          (gx#core-expand-include%__% _stx143787_ _rpath143789_))))
    (define gx#core-expand-include%
      (lambda _g149430_
        (let ((_g149429_ (##length _g149430_)))
          (cond ((##fx= _g149429_ 1)
                 (apply (lambda (_stx143787_)
                          (gx#core-expand-include%__0 _stx143787_))
                        _g149430_))
                ((##fx= _g149429_ 2)
                 (apply (lambda (_stx143791_ _rpath143792_)
                          (gx#core-expand-include%__%
                           _stx143791_
                           _rpath143792_))
                        _g149430_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g149430_))))))
    (define gx#core-apply-expander__%
      (lambda (_K143706_ _stx143707_ _method143708_)
        (if (procedure? _K143706_)
            (let ((_$e143710_ (gx#stx-source _stx143707_)))
              (if _$e143710_
                  ((lambda (_g143712143714_)
                     (gx#stx-wrap-source
                      (_K143706_ _stx143707_)
                      _g143712143714_))
                   _$e143710_)
                  (_K143706_ _stx143707_)))
            (let ((_$e143717_ (bound-method-ref _K143706_ _method143708_)))
              (if _$e143717_
                  ((lambda (_g143719143721_)
                     (gx#core-apply-expander__%
                      _g143719143721_
                      _stx143707_
                      _method143708_))
                   _$e143717_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx143707_
                   _method143708_))))))
    (define gx#core-apply-expander__0
      (lambda (_K143727_ _stx143728_)
        (let ((_method143730_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K143727_ _stx143728_ _method143730_))))
    (define gx#core-apply-expander
      (lambda _g149432_
        (let ((_g149431_ (##length _g149432_)))
          (cond ((##fx= _g149431_ 2)
                 (apply (lambda (_K143727_ _stx143728_)
                          (gx#core-apply-expander__0 _K143727_ _stx143728_))
                        _g149432_))
                ((##fx= _g149431_ 3)
                 (apply (lambda (_K143732_ _stx143733_ _method143734_)
                          (gx#core-apply-expander__%
                           _K143732_
                           _stx143733_
                           _method143734_))
                        _g149432_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g149432_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self143702_ _stx143703_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx143703_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self143555_ _stx143556_)
        (let* ((_self143557143563_ _self143555_)
               (_E143559143567_
                (lambda () (error '"No clause matching" _self143557143563_)))
               (_K143560143572_
                (lambda (_K143570_)
                  (gx#core-apply-expander__0 _K143570_ _stx143556_))))
          (if (##structure-instance-of? _self143557143563_ 'gx#core-macro::t)
              (let* ((_e143561143575_
                      (##unchecked-structure-ref
                       _self143557143563_
                       '1
                       gx#expander::t
                       '#f))
                     (_K143578_ _e143561143575_))
                (_K143560143572_ _K143578_))
              (_E143559143567_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self143408_ _stx143409_)
        (if (gx#sealed-syntax? _stx143409_)
            _stx143409_
            (let* ((_self143410143416_ _self143408_)
                   (_E143412143420_
                    (lambda ()
                      (error '"No clause matching" _self143410143416_)))
                   (_K143413143425_
                    (lambda (_K143423_)
                      (gx#core-apply-expander__0 _K143423_ _stx143409_))))
              (if (##structure-instance-of?
                   _self143410143416_
                   'gx#core-expander::t)
                  (let* ((_e143414143428_
                          (##unchecked-structure-ref
                           _self143410143416_
                           '1
                           gx#expander::t
                           '#f))
                         (_K143431_ _e143414143428_))
                    (_K143413143425_ _K143431_))
                  (_E143412143420_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self143270_ _stx143271_ _top?143272_)
        (if (_top?143272_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self143270_ _stx143271_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx143271_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self143277_ _stx143278_)
        (let ((_top?143280_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self143277_
           _stx143278_
           _top?143280_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g149434_
        (let ((_g149433_ (##length _g149434_)))
          (cond ((##fx= _g149433_ 2)
                 (apply (lambda (_self143277_ _stx143278_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self143277_
                           _stx143278_))
                        _g149434_))
                ((##fx= _g149433_ 3)
                 (apply (lambda (_self143282_ _stx143283_ _top?143284_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self143282_
                           _stx143283_
                           _top?143284_))
                        _g149434_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g149434_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self143144_ _stx143145_)
        (gx#top-special-form::apply-macro-expander__%
         _self143144_
         _stx143145_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self142969_ _stx142970_)
        (let* ((_self142971142977_ _self142969_)
               (_E142973142981_
                (lambda () (error '"No clause matching" _self142971142977_)))
               (_K142974143014_
                (lambda (_id142984_)
                  (let* ((_e142985142992_ _stx142970_)
                         (_E142987142996_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e142985142992_)))
                         (_E142986143010_
                          (lambda ()
                            (if (gx#stx-pair? _e142985142992_)
                                (let ((_e142988143000_
                                       (gx#syntax-e _e142985142992_)))
                                  (let ((_hd142989143003_
                                         (##car _e142988143000_))
                                        (_tl142990143005_
                                         (##cdr _e142988143000_)))
                                    (let ((_body143008_ _tl142990143005_))
                                      (if '#t
                                          (gx#core-cons
                                           _id142984_
                                           _body143008_)
                                          (_E142987142996_)))))
                                (_E142987142996_)))))
                    (_E142986143010_)))))
          (if (##structure-instance-of?
               _self142971142977_
               'gx#rename-macro-expander::t)
              (let* ((_e142975143017_
                      (##unchecked-structure-ref
                       _self142971142977_
                       '1
                       gx#expander::t
                       '#f))
                     (_id143020_ _e142975143017_))
                (_K142974143014_ _id143020_))
              (_E142973142981_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self142795_ _stx142796_ _method142797_)
        (let* ((_self142798142806_ _self142795_)
               (_E142800142810_
                (lambda () (error '"No clause matching" _self142798142806_)))
               (_K142801142817_
                (lambda (_phi142813_ _ctx142814_ _K142815_)
                  (gx#core-apply-user-macro
                   _K142815_
                   _stx142796_
                   _ctx142814_
                   _phi142813_
                   _method142797_))))
          (if (##structure-instance-of?
               _self142798142806_
               'gx#macro-expander::t)
              (let* ((_e142802142820_
                      (##unchecked-structure-ref
                       _self142798142806_
                       '1
                       gx#expander::t
                       '#f))
                     (_K142823_ _e142802142820_)
                     (_e142803142825_
                      (##unchecked-structure-ref
                       _self142798142806_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx142828_ _e142803142825_)
                     (_e142804142830_
                      (##unchecked-structure-ref
                       _self142798142806_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi142833_ _e142804142830_))
                (_K142801142817_ _phi142833_ _ctx142828_ _K142823_))
              (_E142800142810_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self142838_ _stx142839_)
        (let ((_method142841_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self142838_
           _stx142839_
           _method142841_))))
    (define gx#core-apply-user-expander
      (lambda _g149436_
        (let ((_g149435_ (##length _g149436_)))
          (cond ((##fx= _g149435_ 2)
                 (apply (lambda (_self142838_ _stx142839_)
                          (gx#core-apply-user-expander__0
                           _self142838_
                           _stx142839_))
                        _g149436_))
                ((##fx= _g149435_ 3)
                 (apply (lambda (_self142843_ _stx142844_ _method142845_)
                          (gx#core-apply-user-expander__%
                           _self142843_
                           _stx142844_
                           _method142845_))
                        _g149436_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g149436_))))))
    (define gx#core-apply-user-macro
      (lambda (_K142785_ _stx142786_ _ctx142787_ _phi142788_ _method142789_)
        (let ((_mark142791_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx142787_
                _phi142788_
                _stx142786_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K142785_
               (gx#stx-apply-mark _stx142786_ _mark142791_)
               _method142789_)
              _mark142791_))
           gx#current-expander-marks
           (cons _mark142791_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx142637_ _phi142638_ _ctx142639_)
        (let _lp142641_ ((_bind142643_
                          (gx#core-resolve-identifier__%
                           _stx142637_
                           _phi142638_
                           _ctx142639_)))
          (if (##structure-direct-instance-of?
               _bind142643_
               'gx#import-binding::t)
              (_lp142641_
               (##unchecked-structure-ref
                _bind142643_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind142643_
                   'gx#alias-binding::t)
                  (_lp142641_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind142643_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi142638_
                    _ctx142639_))
                  _bind142643_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx142648_)
        (let* ((_phi142650_ (gx#current-expander-phi))
               (_ctx142652_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx142648_ _phi142650_ _ctx142652_))))
    (define gx#resolve-identifier__1
      (lambda (_stx142654_ _phi142655_)
        (let ((_ctx142657_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx142654_ _phi142655_ _ctx142657_))))
    (define gx#resolve-identifier
      (lambda _g149438_
        (let ((_g149437_ (##length _g149438_)))
          (cond ((##fx= _g149437_ 1)
                 (apply (lambda (_stx142648_)
                          (gx#resolve-identifier__0 _stx142648_))
                        _g149438_))
                ((##fx= _g149437_ 2)
                 (apply (lambda (_stx142654_ _phi142655_)
                          (gx#resolve-identifier__1 _stx142654_ _phi142655_))
                        _g149438_))
                ((##fx= _g149437_ 3)
                 (apply (lambda (_stx142659_ _phi142660_ _ctx142661_)
                          (gx#resolve-identifier__%
                           _stx142659_
                           _phi142660_
                           _ctx142661_))
                        _g149438_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g149438_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx142595_ _val142596_ _rebind?142597_ _phi142598_ _ctx142599_)
        (let ((_rebind?142601_
               (if (not _rebind?142597_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?142597_) _rebind?142597_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx142595_)
           _val142596_
           _rebind?142601_
           _phi142598_
           _ctx142599_))))
    (define gx#bind-identifier!__0
      (lambda (_stx142606_ _val142607_)
        (let* ((_rebind?142609_ '#f)
               (_phi142611_ (gx#current-expander-phi))
               (_ctx142613_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx142606_
           _val142607_
           _rebind?142609_
           _phi142611_
           _ctx142613_))))
    (define gx#bind-identifier!__1
      (lambda (_stx142615_ _val142616_ _rebind?142617_)
        (let* ((_phi142619_ (gx#current-expander-phi))
               (_ctx142621_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx142615_
           _val142616_
           _rebind?142617_
           _phi142619_
           _ctx142621_))))
    (define gx#bind-identifier!__2
      (lambda (_stx142623_ _val142624_ _rebind?142625_ _phi142626_)
        (let ((_ctx142628_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx142623_
           _val142624_
           _rebind?142625_
           _phi142626_
           _ctx142628_))))
    (define gx#bind-identifier!
      (lambda _g149440_
        (let ((_g149439_ (##length _g149440_)))
          (cond ((##fx= _g149439_ 2)
                 (apply (lambda (_stx142606_ _val142607_)
                          (gx#bind-identifier!__0 _stx142606_ _val142607_))
                        _g149440_))
                ((##fx= _g149439_ 3)
                 (apply (lambda (_stx142615_ _val142616_ _rebind?142617_)
                          (gx#bind-identifier!__1
                           _stx142615_
                           _val142616_
                           _rebind?142617_))
                        _g149440_))
                ((##fx= _g149439_ 4)
                 (apply (lambda (_stx142623_
                                 _val142624_
                                 _rebind?142625_
                                 _phi142626_)
                          (gx#bind-identifier!__2
                           _stx142623_
                           _val142624_
                           _rebind?142625_
                           _phi142626_))
                        _g149440_))
                ((##fx= _g149439_ 5)
                 (apply (lambda (_stx142630_
                                 _val142631_
                                 _rebind?142632_
                                 _phi142633_
                                 _ctx142634_)
                          (gx#bind-identifier!__%
                           _stx142630_
                           _val142631_
                           _rebind?142632_
                           _phi142633_
                           _ctx142634_))
                        _g149440_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g149440_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx142567_ _phi142568_ _ctx142569_)
        (let _lp142571_ ((_e142573_ _stx142567_)
                         (_marks142574_ (gx#current-expander-marks)))
          (if (symbol? _e142573_)
              (gx#core-resolve-binding
               _e142573_
               _phi142568_
               _phi142568_
               _ctx142569_
               (reverse _marks142574_))
              (if (gx#identifier-quote? _e142573_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e142573_ '1 gx#AST::t '#f)
                   _phi142568_
                   '0
                   (##unchecked-structure-ref
                    _e142573_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e142573_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e142573_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e142573_ '1 gx#AST::t '#f)
                       _phi142568_
                       _phi142568_
                       _ctx142569_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e142573_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks142574_))
                      (if (##structure-direct-instance-of?
                           _e142573_
                           'gx#syntax-wrap::t)
                          (_lp142571_
                           (##unchecked-structure-ref
                            _e142573_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e142573_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks142574_))
                          (if (##structure-instance-of?
                               _e142573_
                               'gerbil#AST::t)
                              (_lp142571_
                               (##unchecked-structure-ref
                                _e142573_
                                '1
                                gx#AST::t
                                '#f)
                               _marks142574_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx142567_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx142579_)
        (let* ((_phi142581_ (gx#current-expander-phi))
               (_ctx142583_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx142579_
           _phi142581_
           _ctx142583_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx142585_ _phi142586_)
        (let ((_ctx142588_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx142585_
           _phi142586_
           _ctx142588_))))
    (define gx#core-resolve-identifier
      (lambda _g149442_
        (let ((_g149441_ (##length _g149442_)))
          (cond ((##fx= _g149441_ 1)
                 (apply (lambda (_stx142579_)
                          (gx#core-resolve-identifier__0 _stx142579_))
                        _g149442_))
                ((##fx= _g149441_ 2)
                 (apply (lambda (_stx142585_ _phi142586_)
                          (gx#core-resolve-identifier__1
                           _stx142585_
                           _phi142586_))
                        _g149442_))
                ((##fx= _g149441_ 3)
                 (apply (lambda (_stx142590_ _phi142591_ _ctx142592_)
                          (gx#core-resolve-identifier__%
                           _stx142590_
                           _phi142591_
                           _ctx142592_))
                        _g149442_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g149442_))))))
    (define gx#core-resolve-binding
      (lambda (_id142480_
               _phi142481_
               _src-phi142482_
               _ctx142483_
               _marks142484_)
        (letrec ((_resolve142486_
                  (lambda (_ctx142554_ _src-phi142555_ _key142556_)
                    (let _lp142558_ ((_ctx142560_
                                      (gx#core-context-shift
                                       _ctx142554_
                                       _phi142481_))
                                     (_dphi142561_
                                      (fx- _phi142481_ _src-phi142555_)))
                      (let ((_$e142563_
                             (gx#core-context-resolve
                              _ctx142560_
                              _key142556_)))
                        (if _$e142563_
                            (values _$e142563_)
                            (if (fxzero? _dphi142561_)
                                '#f
                                (if (fxpositive? _dphi142561_)
                                    (_lp142558_
                                     (gx#core-context-shift _ctx142560_ '-1)
                                     (fx- _dphi142561_ '1))
                                    (_lp142558_
                                     (gx#core-context-shift _ctx142560_ '1)
                                     (fx+ _dphi142561_ '1))))))))))
          (let _lp142488_ ((_ctx142490_ _ctx142483_)
                           (_src-phi142491_ _src-phi142482_)
                           (_rest142492_ _marks142484_))
            (let* ((_rest142493142501_ _rest142492_)
                   (_else142495142509_
                    (lambda ()
                      (_resolve142486_
                       _ctx142490_
                       _src-phi142491_
                       _id142480_)))
                   (_K142497142542_
                    (lambda (_rest142512_ _hd142513_)
                      (let* ((_hd142514142520_ _hd142513_)
                             (_E142516142524_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd142514142520_)))
                             (_K142517142534_
                              (lambda (_subst142527_)
                                (let ((_$e142531_
                                       (let ((_key142529_
                                              (if _subst142527_
                                                  (table-ref
                                                   _subst142527_
                                                   _id142480_
                                                   '#f)
                                                  '#f)))
                                         (if _key142529_
                                             (_resolve142486_
                                              _ctx142490_
                                              _src-phi142491_
                                              _key142529_)
                                             '#f))))
                                  (if _$e142531_
                                      _$e142531_
                                      (_lp142488_
                                       (##unchecked-structure-ref
                                        _hd142513_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd142513_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest142512_))))))
                        (if (##structure-instance-of?
                             _hd142514142520_
                             'gx#expander-mark::t)
                            (let* ((_e142518142537_
                                    (##unchecked-structure-ref
                                     _hd142514142520_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst142540_ _e142518142537_))
                              (_K142517142534_ _subst142540_))
                            (_E142516142524_))))))
              (if (##pair? _rest142493142501_)
                  (let ((_hd142498142545_ (##car _rest142493142501_))
                        (_tl142499142547_ (##cdr _rest142493142501_)))
                    (let* ((_hd142550_ _hd142498142545_)
                           (_rest142552_ _tl142499142547_))
                      (_K142497142542_ _rest142552_ _hd142550_)))
                  (_else142495142509_)))))))
    (define gx#core-bind!__%
      (lambda (_key142356_ _val142357_ _rebind?142358_ _phi142359_ _ctx142360_)
        (letrec ((_update-binding142362_
                  (lambda (_xval142433_)
                    (if (or (_rebind?142358_
                             _ctx142360_
                             _xval142433_
                             _val142357_)
                            (and (##structure-direct-instance-of?
                                  _xval142433_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval142433_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val142357_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val142357_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval142433_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val142357_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val142357_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval142433_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val142357_
                        (if (and (##structure-direct-instance-of?
                                  _val142357_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val142357_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval142433_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val142357_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval142433_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval142433_
                            (if (and (##structure-direct-instance-of?
                                      _val142357_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval142433_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key142356_
                                 (cons (##unchecked-structure-ref
                                        _val142357_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val142357_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval142433_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval142433_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval142433_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval142433_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key142356_
                                 _val142357_
                                 _xval142433_))))))
                 (_gensubst142363_
                  (lambda (_subst142428_ _id142429_)
                    (let ((_eid142431_
                           (gensym (if (uninterned-symbol? _id142429_)
                                       '%
                                       _id142429_))))
                      (table-set! _subst142428_ _id142429_ _eid142431_)
                      _eid142431_)))
                 (_subst!142364_
                  (lambda (_key142366_)
                    (let* ((_key142367142375_ _key142366_)
                           (_else142369142383_ (lambda () _key142366_))
                           (_K142371142416_
                            (lambda (_mark142386_ _id142387_)
                              (let* ((_mark142388142394_ _mark142386_)
                                     (_E142390142398_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark142388142394_)))
                                     (_K142391142408_
                                      (lambda (_subst142401_)
                                        (if (not _subst142401_)
                                            (let ((_subst142403_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark142386_
                                               _subst142403_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst142363_
                                               _subst142403_
                                               _id142387_))
                                            (let ((_$e142405_
                                                   (table-ref
                                                    _subst142401_
                                                    _id142387_
                                                    '#f)))
                                              (if _$e142405_
                                                  (values _$e142405_)
                                                  (_gensubst142363_
                                                   _subst142401_
                                                   _id142387_)))))))
                                (if (##structure-instance-of?
                                     _mark142388142394_
                                     'gx#expander-mark::t)
                                    (let* ((_e142392142411_
                                            (##unchecked-structure-ref
                                             _mark142388142394_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst142414_ _e142392142411_))
                                      (_K142391142408_ _subst142414_))
                                    (_E142390142398_))))))
                      (if (##pair? _key142367142375_)
                          (let ((_hd142372142419_ (##car _key142367142375_))
                                (_tl142373142421_ (##cdr _key142367142375_)))
                            (let* ((_id142424_ _hd142372142419_)
                                   (_mark142426_ _tl142373142421_))
                              (_K142371142416_ _mark142426_ _id142424_)))
                          (_else142369142383_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx142360_ _phi142359_)
           (_subst!142364_ _key142356_)
           _val142357_
           _update-binding142362_))))
    (define gx#core-bind!__0
      (lambda (_key142450_ _val142451_)
        (let* ((_rebind?142453_ false)
               (_phi142455_ (gx#current-expander-phi))
               (_ctx142457_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key142450_
           _val142451_
           _rebind?142453_
           _phi142455_
           _ctx142457_))))
    (define gx#core-bind!__1
      (lambda (_key142459_ _val142460_ _rebind?142461_)
        (let* ((_phi142463_ (gx#current-expander-phi))
               (_ctx142465_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key142459_
           _val142460_
           _rebind?142461_
           _phi142463_
           _ctx142465_))))
    (define gx#core-bind!__2
      (lambda (_key142467_ _val142468_ _rebind?142469_ _phi142470_)
        (let ((_ctx142472_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key142467_
           _val142468_
           _rebind?142469_
           _phi142470_
           _ctx142472_))))
    (define gx#core-bind!
      (lambda _g149444_
        (let ((_g149443_ (##length _g149444_)))
          (cond ((##fx= _g149443_ 2)
                 (apply (lambda (_key142450_ _val142451_)
                          (gx#core-bind!__0 _key142450_ _val142451_))
                        _g149444_))
                ((##fx= _g149443_ 3)
                 (apply (lambda (_key142459_ _val142460_ _rebind?142461_)
                          (gx#core-bind!__1
                           _key142459_
                           _val142460_
                           _rebind?142461_))
                        _g149444_))
                ((##fx= _g149443_ 4)
                 (apply (lambda (_key142467_
                                 _val142468_
                                 _rebind?142469_
                                 _phi142470_)
                          (gx#core-bind!__2
                           _key142467_
                           _val142468_
                           _rebind?142469_
                           _phi142470_))
                        _g149444_))
                ((##fx= _g149443_ 5)
                 (apply (lambda (_key142474_
                                 _val142475_
                                 _rebind?142476_
                                 _phi142477_
                                 _ctx142478_)
                          (gx#core-bind!__%
                           _key142474_
                           _val142475_
                           _rebind?142476_
                           _phi142477_
                           _ctx142478_))
                        _g149444_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g149444_))))))
    (define gx#core-identifier-key
      (lambda (_stx142290_)
        (if (symbol? _stx142290_)
            (let* ((_g142291142299_ (gx#current-expander-marks))
                   (_else142293142307_ (lambda () _stx142290_))
                   (_K142295142312_
                    (lambda (_hd142310_) (cons _stx142290_ _hd142310_))))
              (if (##pair? _g142291142299_)
                  (let* ((_hd142296142315_ (##car _g142291142299_))
                         (_hd142318_ _hd142296142315_))
                    (_K142295142312_ _hd142318_))
                  (_else142293142307_)))
            (if (gx#identifier? _stx142290_)
                (let* ((_id142320_ (gx#syntax-local-unwrap _stx142290_))
                       (_eid142322_ (gx#stx-e _id142320_))
                       (_marks142324_ (gx#stx-identifier-marks* _id142320_)))
                  (let* ((_marks142326142334_ _marks142324_)
                         (_else142328142342_ (lambda () _eid142322_))
                         (_K142330142347_
                          (lambda (_hd142345_) (cons _eid142322_ _hd142345_))))
                    (if (##pair? _marks142326142334_)
                        (let* ((_hd142331142350_ (##car _marks142326142334_))
                               (_hd142353_ _hd142331142350_))
                          (_K142330142347_ _hd142353_))
                        (_else142328142342_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx142290_)))))
    (define gx#core-context-shift
      (lambda (_ctx142235_ _phi142236_)
        (letrec ((_make-phi142238_
                  (lambda (_super142288_)
                    (let ((__obj149415
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj149415
                       (gensym 'phi)
                       _super142288_)
                      __obj149415)))
                 (_make-phi/up142239_
                  (lambda (_ctx142283_ _super142284_)
                    (let ((_ctx+1142286_ (_make-phi142238_ _super142284_)))
                      (##unchecked-structure-set!
                       _ctx142283_
                       _ctx+1142286_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1142286_
                       _ctx142283_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1142286_)))
                 (_make-phi/down142240_
                  (lambda (_ctx142278_ _super142279_)
                    (let ((_ctx-1142281_ (_make-phi142238_ _super142279_)))
                      (##unchecked-structure-set!
                       _ctx-1142281_
                       _ctx142278_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx142278_
                       _ctx-1142281_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1142281_)))
                 (_shift142241_
                  (lambda (_ctx142262_
                           _delta142263_
                           _make-delta-context142264_
                           _phi142265_
                           _K142266_)
                    (let ((_$e142268_
                           (##unchecked-structure-ref
                            _ctx142262_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e142268_
                          ((lambda (_super142271_)
                             (let* ((_super142273_
                                     (_K142266_ _super142271_ _delta142263_))
                                    (_ctx+d142275_
                                     (_make-delta-context142264_
                                      _ctx142262_
                                      _super142273_)))
                               (_K142266_
                                _ctx+d142275_
                                (fx- _phi142265_ _delta142263_))))
                           _$e142268_)
                          (error '"Bad context" _ctx142262_))))))
          (let _K142243_ ((_ctx142245_ _ctx142235_) (_phi142246_ _phi142236_))
            (if (fxzero? _phi142246_)
                _ctx142245_
                (if (fx> (##vector-length _ctx142245_) '3)
                    (if (fxpositive? _phi142246_)
                        (let ((_$e142248_
                               (##unchecked-structure-ref
                                _ctx142245_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e142248_
                              ((lambda (_g142250142252_)
                                 (_K142243_
                                  _g142250142252_
                                  (fx- _phi142246_ '1)))
                               _$e142248_)
                              (_shift142241_
                               _ctx142245_
                               '1
                               _make-phi/up142239_
                               _phi142246_
                               _K142243_)))
                        (let ((_$e142255_
                               (##unchecked-structure-ref
                                _ctx142245_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e142255_
                              ((lambda (_g142257142259_)
                                 (_K142243_
                                  _g142257142259_
                                  (fx+ _phi142246_ '1)))
                               _$e142255_)
                              (_shift142241_
                               _ctx142245_
                               '-1
                               _make-phi/down142240_
                               _phi142246_
                               _K142243_))))
                    _ctx142245_))))))
    (define gx#core-context-get
      (lambda (_ctx142232_ _key142233_)
        (table-ref
         (##unchecked-structure-ref _ctx142232_ '2 gx#expander-context::t '#f)
         _key142233_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx142228_ _key142229_ _val142230_)
        (table-set!
         (##unchecked-structure-ref _ctx142228_ '2 gx#expander-context::t '#f)
         _key142229_
         _val142230_)))
    (define gx#core-context-resolve
      (lambda (_ctx142215_ _key142216_)
        (let _lp142218_ ((_ctx142220_ _ctx142215_))
          (let ((_$e142222_ (gx#core-context-get _ctx142220_ _key142216_)))
            (if _$e142222_
                (values _$e142222_)
                (let ((_$e142225_
                       (if (fx> (##vector-length _ctx142220_) '3)
                           (##unchecked-structure-ref
                            _ctx142220_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e142225_ (_lp142218_ _$e142225_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx142205_ _key142206_ _val142207_ _rebind142208_)
        (let ((_$e142210_ (gx#core-context-get _ctx142205_ _key142206_)))
          (if _$e142210_
              ((lambda (_xval142213_)
                 (gx#core-context-put!
                  _ctx142205_
                  _key142206_
                  (_rebind142208_ _xval142213_)))
               _$e142210_)
              (gx#core-context-put! _ctx142205_ _key142206_ _val142207_)))))
    (define gx#core-context-top__%
      (lambda (_ctx142183_ _stop?142184_)
        (let _lp142186_ ((_ctx142188_ _ctx142183_))
          (if (_stop?142184_ _ctx142188_)
              _ctx142188_
              (if (##structure-instance-of? _ctx142188_ 'gx#context-phi::t)
                  (_lp142186_
                   (##unchecked-structure-ref
                    _ctx142188_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx142194_ (gx#current-expander-context))
               (_stop?142196_ gx#top-context?))
          (gx#core-context-top__% _ctx142194_ _stop?142196_))))
    (define gx#core-context-top__1
      (lambda (_ctx142198_)
        (let ((_stop?142200_ gx#top-context?))
          (gx#core-context-top__% _ctx142198_ _stop?142200_))))
    (define gx#core-context-top
      (lambda _g149446_
        (let ((_g149445_ (##length _g149446_)))
          (cond ((##fx= _g149445_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g149446_))
                ((##fx= _g149445_ 1)
                 (apply (lambda (_ctx142198_)
                          (gx#core-context-top__1 _ctx142198_))
                        _g149446_))
                ((##fx= _g149445_ 2)
                 (apply (lambda (_ctx142202_ _stop?142203_)
                          (gx#core-context-top__% _ctx142202_ _stop?142203_))
                        _g149446_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g149446_))))))
    (define gx#core-context-root__%
      (lambda (_ctx142168_)
        (let _lp142170_ ((_ctx142172_ _ctx142168_))
          (if (##structure-instance-of? _ctx142172_ 'gx#context-phi::t)
              (_lp142170_
               (##unchecked-structure-ref
                _ctx142172_
                '3
                gx#phi-context::t
                '#f))
              _ctx142172_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx142178_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx142178_))))
    (define gx#core-context-root
      (lambda _g149448_
        (let ((_g149447_ (##length _g149448_)))
          (cond ((##fx= _g149447_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g149448_))
                ((##fx= _g149447_ 1)
                 (apply (lambda (_ctx142180_)
                          (gx#core-context-root__% _ctx142180_))
                        _g149448_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g149448_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx142149_ . __142146142150_)
        (let ((_$e142153_ (gx#current-expander-allow-rebind?)))
          (if _$e142153_
              _$e142153_
              (if (##structure-instance-of? _ctx142149_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx142149_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx142149_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx142160_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx142160_))))
    (define gx#core-context-rebind?
      (lambda _g149450_
        (let ((_g149449_ (##length _g149450_)))
          (cond ((##fx= _g149449_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g149450_))
                ((##fx= _g149449_ 1)
                 (apply (lambda (_ctx142162_)
                          (gx#core-context-rebind?__% _ctx142162_))
                        _g149450_))
                ((##fx>= _g149449_ 1)
                 (apply gx#core-context-rebind?__% _g149450_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g149450_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx142132_)
        (let ((_$e142134_ (gx#core-context-top__1 _ctx142132_)))
          (if _$e142134_
              ((lambda (_ctx142137_)
                 (if (##structure-instance-of?
                      _ctx142137_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx142137_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e142134_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx142143_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx142143_))))
    (define gx#core-context-namespace
      (lambda _g149452_
        (let ((_g149451_ (##length _g149452_)))
          (cond ((##fx= _g149451_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g149452_))
                ((##fx= _g149451_ 1)
                 (apply (lambda (_ctx142145_)
                          (gx#core-context-namespace__% _ctx142145_))
                        _g149452_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g149452_))))))
    (define gx#expander-binding?__%
      (lambda (_bind142118_ _is?142119_)
        (if (##structure-direct-instance-of?
             _bind142118_
             'gx#syntax-binding::t)
            (_is?142119_
             (##unchecked-structure-ref
              _bind142118_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind142124_)
        (let ((_is?142126_ gx#expander?))
          (gx#expander-binding?__% _bind142124_ _is?142126_))))
    (define gx#expander-binding?
      (lambda _g149454_
        (let ((_g149453_ (##length _g149454_)))
          (cond ((##fx= _g149453_ 1)
                 (apply (lambda (_bind142124_)
                          (gx#expander-binding?__0 _bind142124_))
                        _g149454_))
                ((##fx= _g149453_ 2)
                 (apply (lambda (_bind142128_ _is?142129_)
                          (gx#expander-binding?__% _bind142128_ _is?142129_))
                        _g149454_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g149454_))))))
    (define gx#core-expander-binding?
      (lambda (_bind142115_)
        (gx#expander-binding?__% _bind142115_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind142113_)
        (gx#expander-binding?__% _bind142113_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind142107_)
        (letrec ((_direct-special-form?142109_
                  (lambda (_obj142111_)
                    (##structure-direct-instance-of?
                     _obj142111_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind142107_
           _direct-special-form?142109_))))
    (define gx#special-form-binding?
      (lambda (_bind142105_)
        (gx#expander-binding?__% _bind142105_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind142096_)
        (letrec ((_feature?142098_
                  (lambda (_e142100_)
                    (let ((_$e142102_
                           (##structure-instance-of?
                            _e142100_
                            'gx#feature-expander::t)))
                      (if _$e142102_
                          _$e142102_
                          (##structure-instance-of?
                           _e142100_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind142096_ _feature?142098_))))
    (define gx#private-feature-binding?
      (lambda (_bind142094_)
        (gx#expander-binding?__% _bind142094_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id142081_ _bound?142082_)
        (if (gx#identifier? _id142081_)
            (_bound?142082_ (gx#resolve-identifier__0 _id142081_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id142087_)
        (let ((_bound?142089_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id142087_ _bound?142089_))))
    (define gx#core-bound-identifier?
      (lambda _g149456_
        (let ((_g149455_ (##length _g149456_)))
          (cond ((##fx= _g149455_ 1)
                 (apply (lambda (_id142087_)
                          (gx#core-bound-identifier?__0 _id142087_))
                        _g149456_))
                ((##fx= _g149455_ 2)
                 (apply (lambda (_id142091_ _bound?142092_)
                          (gx#core-bound-identifier?__%
                           _id142091_
                           _bound?142092_))
                        _g149456_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g149456_))))))
    (define gx#core-identifier=?
      (lambda (_x142071_ _y142072_)
        (letrec ((_y=?142074_
                  (lambda (_xid142078_)
                    ((if (list? _y142072_) memq eq?) _xid142078_ _y142072_))))
          (let ((_bind142076_ (gx#resolve-identifier__0 _x142071_)))
            (if (##structure-instance-of? _bind142076_ 'gx#binding::t)
                (_y=?142074_
                 (##unchecked-structure-ref _bind142076_ '1 gx#binding::t '#f))
                (_y=?142074_ (gx#stx-e _x142071_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e142069_)
        (if (interned-symbol? _e142069_)
            (string-index (symbol->string _e142069_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx142024_ _src142025_ _ctx142026_ _marks142027_)
        (if (##structure? _stx142024_)
            (let ((_$e142029_ (gx#sealed-syntax-unwrap _stx142024_)))
              (if _$e142029_
                  (values _$e142029_)
                  (if (gx#identifier? _stx142024_)
                      (let ((_id142032_
                             (gx#stx-unwrap__% _stx142024_ _marks142027_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id142032_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e142034_
                                (##unchecked-structure-ref
                                 _id142032_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e142034_ _$e142034_ _src142025_))
                         _ctx142026_
                         (##unchecked-structure-ref
                          _id142032_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx142024_)
                       (let ((_$e142037_ (gx#stx-source _stx142024_)))
                         (if _$e142037_ _$e142037_ _src142025_))
                       _ctx142026_
                       (reverse _marks142027_)))))
            (##structure
             gx#syntax-quote::t
             _stx142024_
             _src142025_
             _ctx142026_
             (reverse _marks142027_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx142043_)
        (let* ((_src142045_ '#f)
               (_ctx142047_ (gx#current-expander-context))
               (_marks142049_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142043_
           _src142045_
           _ctx142047_
           _marks142049_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx142051_ _src142052_)
        (let* ((_ctx142054_ (gx#current-expander-context))
               (_marks142056_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142051_
           _src142052_
           _ctx142054_
           _marks142056_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx142058_ _src142059_ _ctx142060_)
        (let ((_marks142062_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx142058_
           _src142059_
           _ctx142060_
           _marks142062_))))
    (define gx#core-quote-syntax
      (lambda _g149458_
        (let ((_g149457_ (##length _g149458_)))
          (cond ((##fx= _g149457_ 1)
                 (apply (lambda (_stx142043_)
                          (gx#core-quote-syntax__0 _stx142043_))
                        _g149458_))
                ((##fx= _g149457_ 2)
                 (apply (lambda (_stx142051_ _src142052_)
                          (gx#core-quote-syntax__1 _stx142051_ _src142052_))
                        _g149458_))
                ((##fx= _g149457_ 3)
                 (apply (lambda (_stx142058_ _src142059_ _ctx142060_)
                          (gx#core-quote-syntax__2
                           _stx142058_
                           _src142059_
                           _ctx142060_))
                        _g149458_))
                ((##fx= _g149457_ 4)
                 (apply (lambda (_stx142064_
                                 _src142065_
                                 _ctx142066_
                                 _marks142067_)
                          (gx#core-quote-syntax__%
                           _stx142064_
                           _src142065_
                           _ctx142066_
                           _marks142067_))
                        _g149458_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g149458_))))))
    (define gx#core-cons
      (lambda (_hd142020_ _tl142021_)
        (cons (gx#core-quote-syntax__0 _hd142020_) _tl142021_)))
    (define gx#core-list
      (lambda (_hd142017_ . _rest142018_)
        (cons (gx#core-quote-syntax__0 _hd142017_) _rest142018_)))
    (define gx#core-cons*
      (lambda (_hd142014_ . _rest142015_)
        (apply cons* (gx#core-quote-syntax__0 _hd142014_) _rest142015_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path141988_ _rel141989_)
        (let ((_path142001_ (gx#stx-e _stx-path141988_))
              (_reldir142002_
               (let _lp141991_ ((_relsrc141993_
                                 (let ((_$e141998_
                                        (gx#stx-source _stx-path141988_)))
                                   (if _$e141998_ _$e141998_ _rel141989_))))
                 (if (##structure-instance-of? _relsrc141993_ 'gerbil#AST::t)
                     (_lp141991_
                      (let ((_$e141995_ (gx#stx-source _relsrc141993_)))
                        (if _$e141995_ _$e141995_ (gx#stx-e _relsrc141993_))))
                     (if (source-location-path? _relsrc141993_)
                         (path-directory (source-location-path _relsrc141993_))
                         (if (string? _relsrc141993_)
                             (path-directory _relsrc141993_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path142001_ (path-normalize _reldir142002_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path142007_)
        (let ((_rel142009_ '#f))
          (gx#core-resolve-path__% _stx-path142007_ _rel142009_))))
    (define gx#core-resolve-path
      (lambda _g149460_
        (let ((_g149459_ (##length _g149460_)))
          (cond ((##fx= _g149459_ 1)
                 (apply (lambda (_stx-path142007_)
                          (gx#core-resolve-path__0 _stx-path142007_))
                        _g149460_))
                ((##fx= _g149459_ 2)
                 (apply (lambda (_stx-path142011_ _rel142012_)
                          (gx#core-resolve-path__%
                           _stx-path142011_
                           _rel142012_))
                        _g149460_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g149460_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr141944_ _ctx141945_)
        (let* ((_repr141946141953_ _repr141944_)
               (_E141948141957_
                (lambda () (error '"No clause matching" _repr141946141953_)))
               (_K141949141965_
                (lambda (_subs141960_ _phi141961_)
                  (let ((_subst141963_
                         (if (not (null? _subs141960_))
                             (list->table _subs141960_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst141963_
                     _ctx141945_
                     _phi141961_
                     '#f)))))
          (if (##pair? _repr141946141953_)
              (let ((_hd141950141968_ (##car _repr141946141953_))
                    (_tl141951141970_ (##cdr _repr141946141953_)))
                (let* ((_phi141973_ _hd141950141968_)
                       (_subs141975_ _tl141951141970_))
                  (_K141949141965_ _subs141975_ _phi141973_)))
              (_E141948141957_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr141980_)
        (let ((_ctx141982_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr141980_ _ctx141982_))))
    (define gx#core-deserialize-mark
      (lambda _g149462_
        (let ((_g149461_ (##length _g149462_)))
          (cond ((##fx= _g149461_ 1)
                 (apply (lambda (_repr141980_)
                          (gx#core-deserialize-mark__0 _repr141980_))
                        _g149462_))
                ((##fx= _g149461_ 2)
                 (apply (lambda (_repr141984_ _ctx141985_)
                          (gx#core-deserialize-mark__%
                           _repr141984_
                           _ctx141985_))
                        _g149462_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g149462_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx141941_)
        (gx#stx-rewrap _stx141941_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx141939_)
        (gx#stx-unwrap__% _stx141939_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx141909_)
        (let* ((_g141910141918_ (gx#current-expander-marks))
               (_else141912141926_ (lambda () _stx141909_))
               (_K141914141931_
                (lambda (_hd141929_)
                  (gx#stx-apply-mark _stx141909_ _hd141929_))))
          (if (##pair? _g141910141918_)
              (let* ((_hd141915141934_ (##car _g141910141918_))
                     (_hd141937_ _hd141915141934_))
                (_K141914141931_ _hd141937_))
              (_else141912141926_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx141894_ _E141895_)
        (let ((_bind141897_ (gx#resolve-identifier__0 _stx141894_)))
          (if (##structure-direct-instance-of?
               _bind141897_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind141897_
               '4
               gx#syntax-binding::t
               '#f)
              (_E141895_ _stx141894_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx141902_)
        (let ((_E141904_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx141902_ _E141904_))))
    (define gx#syntax-local-e
      (lambda _g149464_
        (let ((_g149463_ (##length _g149464_)))
          (cond ((##fx= _g149463_ 1)
                 (apply (lambda (_stx141902_)
                          (gx#syntax-local-e__0 _stx141902_))
                        _g149464_))
                ((##fx= _g149463_ 2)
                 (apply (lambda (_stx141906_ _E141907_)
                          (gx#syntax-local-e__% _stx141906_ _E141907_))
                        _g149464_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g149464_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx141878_ _E141879_)
        (let ((_e141881_ (gx#syntax-local-e__% _stx141878_ _E141879_)))
          (if (##structure-instance-of? _e141881_ 'gx#expander::t)
              (##structure-ref _e141881_ '1 gx#expander::t '#f)
              _e141881_))))
    (define gx#syntax-local-value__0
      (lambda (_stx141886_)
        (let ((_E141888_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx141886_ _E141888_))))
    (define gx#syntax-local-value
      (lambda _g149466_
        (let ((_g149465_ (##length _g149466_)))
          (cond ((##fx= _g149465_ 1)
                 (apply (lambda (_stx141886_)
                          (gx#syntax-local-value__0 _stx141886_))
                        _g149466_))
                ((##fx= _g149465_ 2)
                 (apply (lambda (_stx141890_ _E141891_)
                          (gx#syntax-local-value__% _stx141890_ _E141891_))
                        _g149466_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g149466_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx141875_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx141875_)))))
