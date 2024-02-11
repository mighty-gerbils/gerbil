(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707657570)
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
      (lambda _$args143218_
        (apply make-class-instance gx#expander-context::t _$args143218_)))
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
      (lambda _$args143215_
        (apply make-class-instance gx#root-context::t _$args143215_)))
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
      (lambda _$args143212_
        (apply make-class-instance gx#phi-context::t _$args143212_)))
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
      (lambda _$args143209_
        (apply make-class-instance gx#top-context::t _$args143209_)))
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
      (lambda _$args143206_
        (apply make-class-instance gx#module-context::t _$args143206_)))
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
      (lambda _$args143203_
        (apply make-class-instance gx#prelude-context::t _$args143203_)))
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
      (lambda _$args143200_
        (apply make-class-instance gx#local-context::t _$args143200_)))
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
      (lambda (_self143184_ _id143185_ _super143186_)
        (if (##fx< '3 (##structure-length _self143184_))
            (begin
              (##unchecked-structure-set!
               _self143184_
               _id143185_
               '1
               (##structure-type _self143184_)
               '#f)
              (##unchecked-structure-set!
               _self143184_
               (make-table 'test: eq?)
               '2
               (##structure-type _self143184_)
               '#f)
              (##unchecked-structure-set!
               _self143184_
               _super143186_
               '3
               (##structure-type _self143184_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143184_
                   '3
                   (##vector-length _self143184_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self143191_ _id143192_)
        (let ((_super143194_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self143191_ _id143192_ _super143194_))))
    (define gx#phi-context:::init!
      (lambda _g147729_
        (let ((_g147728_ (##length _g147729_)))
          (cond ((##fx= _g147728_ 2)
                 (apply (lambda (_self143191_ _id143192_)
                          (gx#phi-context:::init!__0 _self143191_ _id143192_))
                        _g147729_))
                ((##fx= _g147728_ 3)
                 (apply (lambda (_self143196_ _id143197_ _super143198_)
                          (gx#phi-context:::init!__%
                           _self143196_
                           _id143197_
                           _super143198_))
                        _g147729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g147729_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self143048_ _super143049_)
        (if (##fx< '3 (##structure-length _self143048_))
            (begin
              (##unchecked-structure-set!
               _self143048_
               (gensym 'L)
               '1
               (##structure-type _self143048_)
               '#f)
              (##unchecked-structure-set!
               _self143048_
               (make-table 'test: eq?)
               '2
               (##structure-type _self143048_)
               '#f)
              (##unchecked-structure-set!
               _self143048_
               _super143049_
               '3
               (##structure-type _self143048_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143048_
                   '3
                   (##vector-length _self143048_)))))
    (define gx#local-context:::init!__0
      (lambda (_self143054_)
        (let ((_super143056_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self143054_ _super143056_))))
    (define gx#local-context:::init!
      (lambda _g147731_
        (let ((_g147730_ (##length _g147731_)))
          (cond ((##fx= _g147730_ 1)
                 (apply (lambda (_self143054_)
                          (gx#local-context:::init!__0 _self143054_))
                        _g147731_))
                ((##fx= _g147730_ 2)
                 (apply (lambda (_self143058_ _super143059_)
                          (gx#local-context:::init!__%
                           _self143058_
                           _super143059_))
                        _g147731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g147731_))))))
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
      (lambda _$args142922_
        (apply make-class-instance gx#binding::t _$args142922_)))
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
      (lambda _$args142919_
        (apply make-class-instance gx#runtime-binding::t _$args142919_)))
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
      (lambda _$args142916_
        (apply make-class-instance gx#local-binding::t _$args142916_)))
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
      (lambda _$args142913_
        (apply make-class-instance gx#top-binding::t _$args142913_)))
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
      (lambda _$args142910_
        (apply make-class-instance gx#module-binding::t _$args142910_)))
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
      (lambda _$args142907_
        (apply make-class-instance gx#extern-binding::t _$args142907_)))
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
      (lambda _$args142904_
        (apply make-class-instance gx#syntax-binding::t _$args142904_)))
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
      (lambda _$args142901_
        (apply make-class-instance gx#import-binding::t _$args142901_)))
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
      (lambda _$args142898_
        (apply make-class-instance gx#alias-binding::t _$args142898_)))
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
      (lambda _$args142895_
        (apply make-class-instance gx#expander::t _$args142895_)))
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
      (lambda _$args142892_
        (apply make-class-instance gx#core-expander::t _$args142892_)))
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
      (lambda _$args142889_
        (apply make-class-instance gx#expression-form::t _$args142889_)))
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
      (lambda _$args142886_
        (apply make-class-instance gx#special-form::t _$args142886_)))
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
      (lambda _$args142883_
        (apply make-class-instance gx#definition-form::t _$args142883_)))
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
      (lambda _$args142880_
        (apply make-class-instance gx#top-special-form::t _$args142880_)))
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
      (lambda _$args142877_
        (apply make-class-instance gx#module-special-form::t _$args142877_)))
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
      (lambda _$args142874_
        (apply make-class-instance gx#feature-expander::t _$args142874_)))
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
      (lambda _$args142871_
        (apply make-class-instance
               gx#private-feature-expander::t
               _$args142871_)))
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
      (lambda _$args142868_
        (apply make-class-instance gx#reserved-expander::t _$args142868_)))
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
      (lambda _$args142865_
        (apply make-class-instance gx#macro-expander::t _$args142865_)))
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
      (lambda _$args142862_
        (apply make-class-instance gx#rename-macro-expander::t _$args142862_)))
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
      (lambda _$args142859_
        (apply make-class-instance gx#user-expander::t _$args142859_)))
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
      (lambda _$args142856_
        (apply make-class-instance gx#expander-mark::t _$args142856_)))
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
      (lambda (_ctx142841_ _message142842_ _stx142843_ . _details142844_)
        (let ((_ctx142854_
               (let ((_$e142846_ _ctx142841_))
                 (if _$e142846_
                     _$e142846_
                     (let ((_$e142849_ (gx#core-context-top__0)))
                       (if _$e142849_
                           ((lambda (_ctx142852_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx142852_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e142849_)
                           '#f))))))
          (raise (make-syntax-error
                  _message142842_
                  (cons _stx142843_ _details142844_)
                  _ctx142854_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx142828_ _expression?142829_)
        (gx#eval-syntax* (gx#core-expand__% _stx142828_ _expression?142829_))))
    (define gx#eval-syntax__0
      (lambda (_stx142834_)
        (let ((_expression?142836_ '#f))
          (gx#eval-syntax__% _stx142834_ _expression?142836_))))
    (define gx#eval-syntax
      (lambda _g147733_
        (let ((_g147732_ (##length _g147733_)))
          (cond ((##fx= _g147732_ 1)
                 (apply (lambda (_stx142834_) (gx#eval-syntax__0 _stx142834_))
                        _g147733_))
                ((##fx= _g147732_ 2)
                 (apply (lambda (_stx142838_ _expression?142839_)
                          (gx#eval-syntax__% _stx142838_ _expression?142839_))
                        _g147733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g147733_))))))
    (define gx#eval-syntax*
      (lambda (_stx142825_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx142825_))))
    (define gx#core-expand__%
      (lambda (_stx142812_ _expression?142813_)
        (if _expression?142813_
            (gx#core-expand-expression _stx142812_)
            (gx#core-expand-top _stx142812_))))
    (define gx#core-expand__0
      (lambda (_stx142818_)
        (let ((_expression?142820_ '#f))
          (gx#core-expand__% _stx142818_ _expression?142820_))))
    (define gx#core-expand
      (lambda _g147735_
        (let ((_g147734_ (##length _g147735_)))
          (cond ((##fx= _g147734_ 1)
                 (apply (lambda (_stx142818_) (gx#core-expand__0 _stx142818_))
                        _g147735_))
                ((##fx= _g147734_ 2)
                 (apply (lambda (_stx142822_ _expression?142823_)
                          (gx#core-expand__% _stx142822_ _expression?142823_))
                        _g147735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g147735_))))))
    (define gx#core-expand-top
      (lambda (_stx142779_)
        (let* ((_stx142781_ (gx#core-expand*__0 _stx142779_))
               (_e142782142789_ _stx142781_)
               (_E142784142793_
                (lambda () (gx#core-expand-expression _stx142781_)))
               (_E142783142807_
                (lambda ()
                  (if (gx#stx-pair? _e142782142789_)
                      (let ((_e142785142797_ (gx#syntax-e _e142782142789_)))
                        (let ((_hd142786142800_ (##car _e142785142797_))
                              (_tl142787142802_ (##cdr _e142785142797_)))
                          (let ((_form142805_ _hd142786142800_))
                            (if (gx#core-bound-identifier?__0 _form142805_)
                                _stx142781_
                                (_E142784142793_)))))
                      (_E142784142793_)))))
          (_E142783142807_))))
    (define gx#core-expand-expression
      (lambda (_stx142726_)
        (letrec ((_sealed-expression?142728_
                  (lambda (_hd142749_)
                    (if (gx#sealed-syntax? _hd142749_)
                        (let* ((_e142750142757_ _hd142749_)
                               (_E142752142761_ (lambda () '#f))
                               (_E142751142775_
                                (lambda ()
                                  (if (gx#stx-pair? _e142750142757_)
                                      (let ((_e142753142765_
                                             (gx#syntax-e _e142750142757_)))
                                        (let ((_hd142754142768_
                                               (##car _e142753142765_))
                                              (_tl142755142770_
                                               (##cdr _e142753142765_)))
                                          (let ((_form142773_
                                                 _hd142754142768_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form142773_
                                                 gx#expression-form-binding?)
                                                (_E142752142761_)))))
                                      (_E142752142761_)))))
                          (_E142751142775_))
                        '#f)))
                 (_illegal-expression142729_
                  (lambda (_hd142747_ . _g147736_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx142726_
                     _hd142747_)))
                 (_expand-e142730_
                  (lambda (_form142742_ _hd142743_)
                    (let ((_bind142745_
                           (if (##structure-instance-of?
                                _form142742_
                                'gx#binding::t)
                               _form142742_
                               (gx#resolve-identifier__0 _form142742_))))
                      (if (gx#core-expander-binding? _bind142745_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind142745_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd142743_
                            (gx#stx-source _stx142726_)))
                          (if (##structure-direct-instance-of?
                               _bind142745_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind142745_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd142743_
                                 (gx#stx-source _stx142726_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx142726_
                               _form142742_)))))))
          (let ((_hd142732_ (gx#core-expand-head _stx142726_)))
            (if (_sealed-expression?142728_ _hd142732_)
                _hd142732_
                (if (gx#stx-pair? _hd142732_)
                    (let* ((_form142734_ (gx#stx-car _hd142732_))
                           (_bind142736_
                            (if (gx#identifier? _form142734_)
                                (gx#resolve-identifier__0 _form142734_)
                                '#f)))
                      (if (or (not _bind142736_)
                              (not (gx#core-expander-binding? _bind142736_)))
                          (_expand-e142730_ '%%app (cons '%%app _hd142732_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind142736_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd142732_
                               _illegal-expression142729_)
                              (if (gx#expression-form-binding? _bind142736_)
                                  (_expand-e142730_ _bind142736_ _hd142732_)
                                  (if (gx#direct-special-form-binding?
                                       _bind142736_)
                                      (gx#core-expand-expression
                                       (_expand-e142730_
                                        _bind142736_
                                        _hd142732_))
                                      (_illegal-expression142729_
                                       _hd142732_))))))
                    (if (gx#core-bound-identifier?__0 _hd142732_)
                        (_illegal-expression142729_ _hd142732_)
                        (if (gx#identifier? _hd142732_)
                            (_expand-e142730_
                             '%%ref
                             (cons '%%ref (cons _hd142732_ '())))
                            (if (gx#stx-datum? _hd142732_)
                                (_expand-e142730_
                                 '%#quote
                                 (cons '%#quote (cons _hd142732_ '())))
                                (_illegal-expression142729_
                                 _hd142732_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx142721_)
        (call-with-parameters
         (lambda ()
           (let ((_stx142724_ (gx#core-expand-expression _stx142721_)))
             (values _stx142724_ (gx#eval-syntax* _stx142724_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx142702_ _stop?142703_)
        (let _lp142705_ ((_stx142707_ _stx142702_))
          (if (_stop?142703_ _stx142707_)
              _stx142707_
              (let ((_rstx142709_ (gx#core-expand1 _stx142707_)))
                (if (eq? _stx142707_ _rstx142709_)
                    _stx142707_
                    (_lp142705_ _rstx142709_)))))))
    (define gx#core-expand*__0
      (lambda (_stx142714_)
        (let ((_stop?142716_ false))
          (gx#core-expand*__% _stx142714_ _stop?142716_))))
    (define gx#core-expand*
      (lambda _g147738_
        (let ((_g147737_ (##length _g147738_)))
          (cond ((##fx= _g147737_ 1)
                 (apply (lambda (_stx142714_) (gx#core-expand*__0 _stx142714_))
                        _g147738_))
                ((##fx= _g147737_ 2)
                 (apply (lambda (_stx142718_ _stop?142719_)
                          (gx#core-expand*__% _stx142718_ _stop?142719_))
                        _g147738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g147738_))))))
    (define gx#core-expand1
      (lambda (_stx142658_)
        (letrec ((_step142660_
                  (lambda (_hd142697_)
                    (let ((_bind142699_ (gx#resolve-identifier__0 _hd142697_)))
                      (if (##structure-instance-of?
                           _bind142699_
                           'gx#runtime-binding::t)
                          _stx142658_
                          (if (##structure-direct-instance-of?
                               _bind142699_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind142699_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx142658_)
                              (if (not _bind142699_)
                                  _stx142658_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx142658_))))))))
          (let* ((_e142661142669_ _stx142658_)
                 (_E142667142673_ (lambda () _stx142658_))
                 (_E142663142679_
                  (lambda ()
                    (let ((_hd142677_ _e142661142669_))
                      (if (gx#identifier? _hd142677_)
                          (_step142660_ _hd142677_)
                          (_E142667142673_)))))
                 (_E142662142693_
                  (lambda ()
                    (if (gx#stx-pair? _e142661142669_)
                        (let ((_e142664142683_ (gx#syntax-e _e142661142669_)))
                          (let ((_hd142665142686_ (##car _e142664142683_))
                                (_tl142666142688_ (##cdr _e142664142683_)))
                            (let ((_hd142691_ _hd142665142686_))
                              (if (gx#identifier? _hd142691_)
                                  (_step142660_ _hd142691_)
                                  (_E142663142679_)))))
                        (_E142663142679_)))))
            (_E142662142693_)))))
    (define gx#core-expand-head
      (lambda (_stx142624_)
        (letrec ((_stop?142626_
                  (lambda (_stx142628_)
                    (let* ((_e142629142636_ _stx142628_)
                           (_E142631142640_ (lambda () '#f))
                           (_E142630142654_
                            (lambda ()
                              (if (gx#stx-pair? _e142629142636_)
                                  (let ((_e142632142644_
                                         (gx#syntax-e _e142629142636_)))
                                    (let ((_hd142633142647_
                                           (##car _e142632142644_))
                                          (_tl142634142649_
                                           (##cdr _e142632142644_)))
                                      (let ((_hd142652_ _hd142633142647_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd142652_)
                                            (_E142631142640_)))))
                                  (_E142631142640_)))))
                      (_E142630142654_)))))
          (gx#core-expand*__% _stx142624_ _stop?142626_))))
    (define gx#core-expand-block__%
      (lambda (_stx142430_
               _expand-special142431_
               _begin-form142432_
               _expand-e142433_)
        (letrec ((_expand-splice142435_
                  (lambda (_hd142598_ _body142599_ _rest142600_ _r142601_)
                    (if (gx#stx-list? _body142599_)
                        (_K142439_
                         (gx#stx-foldr cons _rest142600_ _body142599_)
                         _r142601_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx142430_
                         _hd142598_))))
                 (_expand-cond-expand142436_
                  (lambda (_hd142594_ _rest142595_ _r142596_)
                    (_K142439_
                     (cons (gx#core-expand-cond-expand% _hd142594_)
                           _rest142595_)
                     _r142596_)))
                 (_expand-include142437_
                  (lambda (_hd142543_ _rest142544_ _r142545_)
                    (let* ((_e142546142556_ _hd142543_)
                           (_E142548142560_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142546142556_)))
                           (_E142547142590_
                            (lambda ()
                              (if (gx#stx-pair? _e142546142556_)
                                  (let ((_e142549142564_
                                         (gx#syntax-e _e142546142556_)))
                                    (let ((_hd142550142567_
                                           (##car _e142549142564_))
                                          (_tl142551142569_
                                           (##cdr _e142549142564_)))
                                      (if (gx#stx-pair? _tl142551142569_)
                                          (let ((_e142552142572_
                                                 (gx#syntax-e
                                                  _tl142551142569_)))
                                            (let ((_hd142553142575_
                                                   (##car _e142552142572_))
                                                  (_tl142554142577_
                                                   (##cdr _e142552142572_)))
                                              (let ((_path142580_
                                                     _hd142553142575_))
                                                (if (gx#stx-null?
                                                     _tl142554142577_)
                                                    (if (gx#stx-string?
                                                         _path142580_)
                                                        (let* ((_rpath142582_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path142580_
                         (gx#stx-source _hd142543_)))
                       (_block142584_
                        (gx#core-expand-include%__% _hd142543_ _rpath142582_))
                       (_rbody142587_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block142584_
                            _expand-special142431_
                            '#f
                            _expand-e142433_))
                         gx#current-expander-path
                         (cons _rpath142582_ (gx#current-expander-path)))))
                  (_K142439_
                   _rest142544_
                   (foldr1 cons _r142545_ _rbody142587_)))
                (_E142548142560_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E142548142560_)))))
                                          (_E142548142560_))))
                                  (_E142548142560_)))))
                      (_E142547142590_))))
                 (_expand-expression142438_
                  (lambda (_hd142539_ _rest142540_ _r142541_)
                    (_K142439_
                     _rest142540_
                     (cons (_expand-e142433_ _hd142539_) _r142541_))))
                 (_K142439_
                  (lambda (_rest142469_ _r142470_)
                    (let* ((_e142471142478_ _rest142469_)
                           (_E142473142482_
                            (lambda ()
                              (if _begin-form142432_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form142432_
                                    (reverse _r142470_))
                                   (gx#stx-source _stx142430_))
                                  _r142470_)))
                           (_E142472142535_
                            (lambda ()
                              (if (gx#stx-pair? _e142471142478_)
                                  (let ((_e142474142486_
                                         (gx#syntax-e _e142471142478_)))
                                    (let ((_hd142475142489_
                                           (##car _e142474142486_))
                                          (_tl142476142491_
                                           (##cdr _e142474142486_)))
                                      (let* ((_hd142494_ _hd142475142489_)
                                             (_rest142496_ _tl142476142491_))
                                        (if '#t
                                            (let* ((_hd142498_
                                                    (gx#core-expand-head
                                                     _hd142494_))
                                                   (_e142499142506_ _hd142498_)
                                                   (_E142501142510_
                                                    (lambda ()
                                                      (_expand-expression142438_
                                                       _hd142498_
                                                       _rest142496_
                                                       _r142470_)))
                                                   (_E142500142531_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142499142506_)
                                                          (let ((_e142502142514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142499142506_)))
                    (let ((_hd142503142517_ (##car _e142502142514_))
                          (_tl142504142519_ (##cdr _e142502142514_)))
                      (let* ((_form142522_ _hd142503142517_)
                             (_body142524_ _tl142504142519_))
                        (if '#t
                            (let ((_bind142526_
                                   (if (gx#identifier? _form142522_)
                                       (gx#resolve-identifier__0 _form142522_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind142526_)
                                  (let ((_$e142528_
                                         (##unchecked-structure-ref
                                          _bind142526_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e142528_)
                                        (_expand-splice142435_
                                         _hd142498_
                                         _body142524_
                                         _rest142496_
                                         _r142470_)
                                        (if (eq? '%#cond-expand _$e142528_)
                                            (_expand-cond-expand142436_
                                             _hd142498_
                                             _rest142496_
                                             _r142470_)
                                            (if (eq? '%#include _$e142528_)
                                                (_expand-include142437_
                                                 _hd142498_
                                                 _rest142496_
                                                 _r142470_)
                                                (_expand-special142431_
                                                 _hd142498_
                                                 _K142439_
                                                 _rest142496_
                                                 _r142470_)))))
                                  (_expand-expression142438_
                                   _hd142498_
                                   _rest142496_
                                   _r142470_)))
                            (_E142501142510_)))))
                  (_E142501142510_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142500142531_))
                                            (_E142473142482_)))))
                                  (_E142473142482_)))))
                      (_E142472142535_)))))
          (let* ((_e142440142447_ _stx142430_)
                 (_E142442142451_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142440142447_)))
                 (_E142441142465_
                  (lambda ()
                    (if (gx#stx-pair? _e142440142447_)
                        (let ((_e142443142455_ (gx#syntax-e _e142440142447_)))
                          (let ((_hd142444142458_ (##car _e142443142455_))
                                (_tl142445142460_ (##cdr _e142443142455_)))
                            (let ((_body142463_ _tl142445142460_))
                              (if (gx#stx-list? _body142463_)
                                  (_K142439_ _body142463_ '())
                                  (_E142442142451_)))))
                        (_E142442142451_)))))
            (_E142441142465_)))))
    (define gx#core-expand-block__0
      (lambda (_stx142606_ _expand-special142607_)
        (let* ((_begin-form142609_ '%#begin)
               (_expand-e142611_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142606_
           _expand-special142607_
           _begin-form142609_
           _expand-e142611_))))
    (define gx#core-expand-block__1
      (lambda (_stx142613_ _expand-special142614_ _begin-form142615_)
        (let ((_expand-e142617_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142613_
           _expand-special142614_
           _begin-form142615_
           _expand-e142617_))))
    (define gx#core-expand-block
      (lambda _g147740_
        (let ((_g147739_ (##length _g147740_)))
          (cond ((##fx= _g147739_ 2)
                 (apply (lambda (_stx142606_ _expand-special142607_)
                          (gx#core-expand-block__0
                           _stx142606_
                           _expand-special142607_))
                        _g147740_))
                ((##fx= _g147739_ 3)
                 (apply (lambda (_stx142613_
                                 _expand-special142614_
                                 _begin-form142615_)
                          (gx#core-expand-block__1
                           _stx142613_
                           _expand-special142614_
                           _begin-form142615_))
                        _g147740_))
                ((##fx= _g147739_ 4)
                 (apply (lambda (_stx142619_
                                 _expand-special142620_
                                 _begin-form142621_
                                 _expand-e142622_)
                          (gx#core-expand-block__%
                           _stx142619_
                           _expand-special142620_
                           _begin-form142621_
                           _expand-e142622_))
                        _g147740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g147740_))))))
    (define gx#core-expand-block*
      (lambda (_stx142378_ _expand-special142379_)
        (let* ((_g142380142391_
                (gx#core-expand-block__1
                 _stx142378_
                 _expand-special142379_
                 '#f))
               (_E142384142395_
                (lambda () (error '"No clause matching" _g142380142391_))))
          (let ((_K142389142426_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx142378_)))
                (_K142386142412_ (lambda (_expr142410_) _expr142410_))
                (_K142385142401_
                 (lambda (_body142399_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body142399_))
                    (gx#stx-source _stx142378_)))))
            (let ((_try-match142382142422_
                   (lambda ()
                     (if (##pair? _g142380142391_)
                         (let ((_tl142388142417_ (##cdr _g142380142391_))
                               (_hd142387142415_ (##car _g142380142391_)))
                           (if (##null? _tl142388142417_)
                               (let ((_expr142420_ _hd142387142415_))
                                 (_K142386142412_ _expr142420_))
                               (let ((_body142404_ _g142380142391_))
                                 (_K142385142401_ _body142404_))))
                         (let ((_body142404_ _g142380142391_))
                           (_K142385142401_ _body142404_))))))
              (if (##null? _g142380142391_)
                  (_K142389142426_)
                  (_try-match142382142422_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx142206_)
        (letrec ((_satisfied?142208_
                  (lambda (_condition142306_)
                    (let* ((_e142307142322_ _condition142306_)
                           (_E142317142326_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142307142322_)))
                           (_E142310142345_
                            (lambda ()
                              (if (gx#stx-pair? _e142307142322_)
                                  (let ((_e142318142330_
                                         (gx#syntax-e _e142307142322_)))
                                    (let ((_hd142319142333_
                                           (##car _e142318142330_))
                                          (_tl142320142335_
                                           (##cdr _e142318142330_)))
                                      (let* ((_combinator142338_
                                              _hd142319142333_)
                                             (_body142340_ _tl142320142335_))
                                        (if (gx#stx-list? _body142340_)
                                            (let ((_$e142342_
                                                   (gx#stx-e
                                                    _combinator142338_)))
                                              (if (eq? 'not _$e142342_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?142208_
                                                        _body142340_))
                                                  (if (eq? 'and _$e142342_)
                                                      (gx#stx-andmap
                                                       _satisfied?142208_
                                                       _body142340_)
                                                      (if (eq? 'or _$e142342_)
                                                          (gx#stx-ormap
                                                           _satisfied?142208_
                                                           _body142340_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e142342_)
                      (gx#stx-andmap gx#core-resolve-identifier _body142340_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx142206_
                       _combinator142338_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E142317142326_)))))
                                  (_E142317142326_))))
                           (_E142309142368_
                            (lambda ()
                              (if (gx#stx-pair? _e142307142322_)
                                  (let ((_e142311142349_
                                         (gx#syntax-e _e142307142322_)))
                                    (let ((_hd142312142352_
                                           (##car _e142311142349_))
                                          (_tl142313142354_
                                           (##cdr _e142311142349_)))
                                      (if (and (gx#identifier?
                                                _hd142312142352_)
                                               (gx#core-identifier=?
                                                _hd142312142352_
                                                'unquote))
                                          (if (gx#stx-pair? _tl142313142354_)
                                              (let ((_e142314142357_
                                                     (gx#syntax-e
                                                      _tl142313142354_)))
                                                (let ((_hd142315142360_
                                                       (##car _e142314142357_))
                                                      (_tl142316142362_
                                                       (##cdr _e142314142357_)))
                                                  (let ((_expr142365_
                                                         _hd142315142360_))
                                                    (if (gx#stx-null?
                                                         _tl142316142362_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr142365_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E142310142345_))
                (_E142310142345_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142310142345_))
                                          (_E142310142345_))))
                                  (_E142310142345_))))
                           (_E142308142374_
                            (lambda ()
                              (let ((_id142372_ _e142307142322_))
                                (if (gx#identifier? _id142372_)
                                    (gx#core-bound-identifier?__%
                                     _id142372_
                                     gx#feature-binding?)
                                    (_E142309142368_))))))
                      (_E142308142374_))))
                 (_loop142209_
                  (lambda (_rest142239_)
                    (let* ((_e142240142248_ _rest142239_)
                           (_E142246142252_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142240142248_)))
                           (_E142242142256_
                            (lambda ()
                              (if (gx#stx-null? _e142240142248_)
                                  (if '#t '() (_E142246142252_))
                                  (_E142246142252_))))
                           (_E142241142302_
                            (lambda ()
                              (if (gx#stx-pair? _e142240142248_)
                                  (let ((_e142243142260_
                                         (gx#syntax-e _e142240142248_)))
                                    (let ((_hd142244142263_
                                           (##car _e142243142260_))
                                          (_tl142245142265_
                                           (##cdr _e142243142260_)))
                                      (let* ((_hd142268_ _hd142244142263_)
                                             (_rest142270_ _tl142245142265_))
                                        (if '#t
                                            (let* ((_e142271142278_ _hd142268_)
                                                   (_E142273142282_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e142271142278_)))
                                                   (_E142272142298_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142271142278_)
                                                          (let ((_e142274142286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142271142278_)))
                    (let ((_hd142275142289_ (##car _e142274142286_))
                          (_tl142276142291_ (##cdr _e142274142286_)))
                      (let* ((_condition142294_ _hd142275142289_)
                             (_body142296_ _tl142276142291_))
                        (if '#t
                            (if (gx#stx-eq? _condition142294_ 'else)
                                (if (gx#stx-null? _rest142270_)
                                    _body142296_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx142206_
                                     _hd142268_))
                                (if (_satisfied?142208_ _condition142294_)
                                    _body142296_
                                    (_loop142209_ _rest142270_)))
                            (_E142273142282_)))))
                  (_E142273142282_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142272142298_))
                                            (_E142242142256_)))))
                                  (_E142242142256_)))))
                      (_E142241142302_)))))
          (let* ((_e142210142217_ _stx142206_)
                 (_E142212142221_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142210142217_)))
                 (_E142211142235_
                  (lambda ()
                    (if (gx#stx-pair? _e142210142217_)
                        (let ((_e142213142225_ (gx#syntax-e _e142210142217_)))
                          (let ((_hd142214142228_ (##car _e142213142225_))
                                (_tl142215142230_ (##cdr _e142213142225_)))
                            (let ((_clauses142233_ _tl142215142230_))
                              (if (gx#stx-list? _clauses142233_)
                                  (gx#core-cons
                                   'begin
                                   (_loop142209_ _clauses142233_))
                                  (_E142212142221_)))))
                        (_E142212142221_)))))
            (_E142211142235_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx142149_ _rpath142150_)
        (let* ((_e142151142161_ _stx142149_)
               (_E142153142165_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e142151142161_)))
               (_E142152142192_
                (lambda ()
                  (if (gx#stx-pair? _e142151142161_)
                      (let ((_e142154142169_ (gx#syntax-e _e142151142161_)))
                        (let ((_hd142155142172_ (##car _e142154142169_))
                              (_tl142156142174_ (##cdr _e142154142169_)))
                          (if (gx#stx-pair? _tl142156142174_)
                              (let ((_e142157142177_
                                     (gx#syntax-e _tl142156142174_)))
                                (let ((_hd142158142180_
                                       (##car _e142157142177_))
                                      (_tl142159142182_
                                       (##cdr _e142157142177_)))
                                  (let ((_path142185_ _hd142158142180_))
                                    (if (gx#stx-null? _tl142159142182_)
                                        (if (gx#stx-string? _path142185_)
                                            (let ((_rpath142190_
                                                   (let ((_$e142187_
                                                          _rpath142150_))
                                                     (if _$e142187_
                                                         _$e142187_
                                                         (gx#core-resolve-path__%
                                                          _path142185_
                                                          (gx#stx-source
                                                           _stx142149_))))))
                                              (if (member _rpath142190_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx142149_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath142190_))
                                                    (gx#stx-source
                                                     _stx142149_)))))
                                            (_E142153142165_))
                                        (_E142153142165_)))))
                              (_E142153142165_))))
                      (_E142153142165_)))))
          (_E142152142192_))))
    (define gx#core-expand-include%__0
      (lambda (_stx142199_)
        (let ((_rpath142201_ '#f))
          (gx#core-expand-include%__% _stx142199_ _rpath142201_))))
    (define gx#core-expand-include%
      (lambda _g147742_
        (let ((_g147741_ (##length _g147742_)))
          (cond ((##fx= _g147741_ 1)
                 (apply (lambda (_stx142199_)
                          (gx#core-expand-include%__0 _stx142199_))
                        _g147742_))
                ((##fx= _g147741_ 2)
                 (apply (lambda (_stx142203_ _rpath142204_)
                          (gx#core-expand-include%__%
                           _stx142203_
                           _rpath142204_))
                        _g147742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g147742_))))))
    (define gx#core-apply-expander__%
      (lambda (_K142118_ _stx142119_ _method142120_)
        (if (procedure? _K142118_)
            (let ((_$e142122_ (gx#stx-source _stx142119_)))
              (if _$e142122_
                  ((lambda (_g142124142126_)
                     (gx#stx-wrap-source
                      (_K142118_ _stx142119_)
                      _g142124142126_))
                   _$e142122_)
                  (_K142118_ _stx142119_)))
            (let ((_$e142129_ (bound-method-ref _K142118_ _method142120_)))
              (if _$e142129_
                  ((lambda (_g142131142133_)
                     (gx#core-apply-expander__%
                      _g142131142133_
                      _stx142119_
                      _method142120_))
                   _$e142129_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx142119_
                   _method142120_))))))
    (define gx#core-apply-expander__0
      (lambda (_K142139_ _stx142140_)
        (let ((_method142142_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K142139_ _stx142140_ _method142142_))))
    (define gx#core-apply-expander
      (lambda _g147744_
        (let ((_g147743_ (##length _g147744_)))
          (cond ((##fx= _g147743_ 2)
                 (apply (lambda (_K142139_ _stx142140_)
                          (gx#core-apply-expander__0 _K142139_ _stx142140_))
                        _g147744_))
                ((##fx= _g147743_ 3)
                 (apply (lambda (_K142144_ _stx142145_ _method142146_)
                          (gx#core-apply-expander__%
                           _K142144_
                           _stx142145_
                           _method142146_))
                        _g147744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g147744_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self142114_ _stx142115_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx142115_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self141967_ _stx141968_)
        (let* ((_self141969141975_ _self141967_)
               (_E141971141979_
                (lambda () (error '"No clause matching" _self141969141975_)))
               (_K141972141984_
                (lambda (_K141982_)
                  (gx#core-apply-expander__0 _K141982_ _stx141968_))))
          (if (##structure-instance-of? _self141969141975_ 'gx#core-macro::t)
              (let* ((_e141973141987_
                      (##unchecked-structure-ref
                       _self141969141975_
                       '1
                       gx#expander::t
                       '#f))
                     (_K141990_ _e141973141987_))
                (_K141972141984_ _K141990_))
              (_E141971141979_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self141820_ _stx141821_)
        (if (gx#sealed-syntax? _stx141821_)
            _stx141821_
            (let* ((_self141822141828_ _self141820_)
                   (_E141824141832_
                    (lambda ()
                      (error '"No clause matching" _self141822141828_)))
                   (_K141825141837_
                    (lambda (_K141835_)
                      (gx#core-apply-expander__0 _K141835_ _stx141821_))))
              (if (##structure-instance-of?
                   _self141822141828_
                   'gx#core-expander::t)
                  (let* ((_e141826141840_
                          (##unchecked-structure-ref
                           _self141822141828_
                           '1
                           gx#expander::t
                           '#f))
                         (_K141843_ _e141826141840_))
                    (_K141825141837_ _K141843_))
                  (_E141824141832_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self141682_ _stx141683_ _top?141684_)
        (if (_top?141684_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self141682_ _stx141683_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx141683_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self141689_ _stx141690_)
        (let ((_top?141692_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self141689_
           _stx141690_
           _top?141692_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g147746_
        (let ((_g147745_ (##length _g147746_)))
          (cond ((##fx= _g147745_ 2)
                 (apply (lambda (_self141689_ _stx141690_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self141689_
                           _stx141690_))
                        _g147746_))
                ((##fx= _g147745_ 3)
                 (apply (lambda (_self141694_ _stx141695_ _top?141696_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self141694_
                           _stx141695_
                           _top?141696_))
                        _g147746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g147746_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self141556_ _stx141557_)
        (gx#top-special-form::apply-macro-expander__%
         _self141556_
         _stx141557_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self141381_ _stx141382_)
        (let* ((_self141383141389_ _self141381_)
               (_E141385141393_
                (lambda () (error '"No clause matching" _self141383141389_)))
               (_K141386141426_
                (lambda (_id141396_)
                  (let* ((_e141397141404_ _stx141382_)
                         (_E141399141408_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e141397141404_)))
                         (_E141398141422_
                          (lambda ()
                            (if (gx#stx-pair? _e141397141404_)
                                (let ((_e141400141412_
                                       (gx#syntax-e _e141397141404_)))
                                  (let ((_hd141401141415_
                                         (##car _e141400141412_))
                                        (_tl141402141417_
                                         (##cdr _e141400141412_)))
                                    (let ((_body141420_ _tl141402141417_))
                                      (if '#t
                                          (gx#core-cons
                                           _id141396_
                                           _body141420_)
                                          (_E141399141408_)))))
                                (_E141399141408_)))))
                    (_E141398141422_)))))
          (if (##structure-instance-of?
               _self141383141389_
               'gx#rename-macro-expander::t)
              (let* ((_e141387141429_
                      (##unchecked-structure-ref
                       _self141383141389_
                       '1
                       gx#expander::t
                       '#f))
                     (_id141432_ _e141387141429_))
                (_K141386141426_ _id141432_))
              (_E141385141393_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self141207_ _stx141208_ _method141209_)
        (let* ((_self141210141218_ _self141207_)
               (_E141212141222_
                (lambda () (error '"No clause matching" _self141210141218_)))
               (_K141213141229_
                (lambda (_phi141225_ _ctx141226_ _K141227_)
                  (gx#core-apply-user-macro
                   _K141227_
                   _stx141208_
                   _ctx141226_
                   _phi141225_
                   _method141209_))))
          (if (##structure-instance-of?
               _self141210141218_
               'gx#macro-expander::t)
              (let* ((_e141214141232_
                      (##unchecked-structure-ref
                       _self141210141218_
                       '1
                       gx#expander::t
                       '#f))
                     (_K141235_ _e141214141232_)
                     (_e141215141237_
                      (##unchecked-structure-ref
                       _self141210141218_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx141240_ _e141215141237_)
                     (_e141216141242_
                      (##unchecked-structure-ref
                       _self141210141218_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi141245_ _e141216141242_))
                (_K141213141229_ _phi141245_ _ctx141240_ _K141235_))
              (_E141212141222_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self141250_ _stx141251_)
        (let ((_method141253_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self141250_
           _stx141251_
           _method141253_))))
    (define gx#core-apply-user-expander
      (lambda _g147748_
        (let ((_g147747_ (##length _g147748_)))
          (cond ((##fx= _g147747_ 2)
                 (apply (lambda (_self141250_ _stx141251_)
                          (gx#core-apply-user-expander__0
                           _self141250_
                           _stx141251_))
                        _g147748_))
                ((##fx= _g147747_ 3)
                 (apply (lambda (_self141255_ _stx141256_ _method141257_)
                          (gx#core-apply-user-expander__%
                           _self141255_
                           _stx141256_
                           _method141257_))
                        _g147748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g147748_))))))
    (define gx#core-apply-user-macro
      (lambda (_K141197_ _stx141198_ _ctx141199_ _phi141200_ _method141201_)
        (let ((_mark141203_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx141199_
                _phi141200_
                _stx141198_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K141197_
               (gx#stx-apply-mark _stx141198_ _mark141203_)
               _method141201_)
              _mark141203_))
           gx#current-expander-marks
           (cons _mark141203_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx141049_ _phi141050_ _ctx141051_)
        (let _lp141053_ ((_bind141055_
                          (gx#core-resolve-identifier__%
                           _stx141049_
                           _phi141050_
                           _ctx141051_)))
          (if (##structure-direct-instance-of?
               _bind141055_
               'gx#import-binding::t)
              (_lp141053_
               (##unchecked-structure-ref
                _bind141055_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind141055_
                   'gx#alias-binding::t)
                  (_lp141053_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind141055_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi141050_
                    _ctx141051_))
                  _bind141055_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx141060_)
        (let* ((_phi141062_ (gx#current-expander-phi))
               (_ctx141064_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141060_ _phi141062_ _ctx141064_))))
    (define gx#resolve-identifier__1
      (lambda (_stx141066_ _phi141067_)
        (let ((_ctx141069_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141066_ _phi141067_ _ctx141069_))))
    (define gx#resolve-identifier
      (lambda _g147750_
        (let ((_g147749_ (##length _g147750_)))
          (cond ((##fx= _g147749_ 1)
                 (apply (lambda (_stx141060_)
                          (gx#resolve-identifier__0 _stx141060_))
                        _g147750_))
                ((##fx= _g147749_ 2)
                 (apply (lambda (_stx141066_ _phi141067_)
                          (gx#resolve-identifier__1 _stx141066_ _phi141067_))
                        _g147750_))
                ((##fx= _g147749_ 3)
                 (apply (lambda (_stx141071_ _phi141072_ _ctx141073_)
                          (gx#resolve-identifier__%
                           _stx141071_
                           _phi141072_
                           _ctx141073_))
                        _g147750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g147750_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx141007_ _val141008_ _rebind?141009_ _phi141010_ _ctx141011_)
        (let ((_rebind?141013_
               (if (not _rebind?141009_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?141009_) _rebind?141009_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx141007_)
           _val141008_
           _rebind?141013_
           _phi141010_
           _ctx141011_))))
    (define gx#bind-identifier!__0
      (lambda (_stx141018_ _val141019_)
        (let* ((_rebind?141021_ '#f)
               (_phi141023_ (gx#current-expander-phi))
               (_ctx141025_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141018_
           _val141019_
           _rebind?141021_
           _phi141023_
           _ctx141025_))))
    (define gx#bind-identifier!__1
      (lambda (_stx141027_ _val141028_ _rebind?141029_)
        (let* ((_phi141031_ (gx#current-expander-phi))
               (_ctx141033_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141027_
           _val141028_
           _rebind?141029_
           _phi141031_
           _ctx141033_))))
    (define gx#bind-identifier!__2
      (lambda (_stx141035_ _val141036_ _rebind?141037_ _phi141038_)
        (let ((_ctx141040_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141035_
           _val141036_
           _rebind?141037_
           _phi141038_
           _ctx141040_))))
    (define gx#bind-identifier!
      (lambda _g147752_
        (let ((_g147751_ (##length _g147752_)))
          (cond ((##fx= _g147751_ 2)
                 (apply (lambda (_stx141018_ _val141019_)
                          (gx#bind-identifier!__0 _stx141018_ _val141019_))
                        _g147752_))
                ((##fx= _g147751_ 3)
                 (apply (lambda (_stx141027_ _val141028_ _rebind?141029_)
                          (gx#bind-identifier!__1
                           _stx141027_
                           _val141028_
                           _rebind?141029_))
                        _g147752_))
                ((##fx= _g147751_ 4)
                 (apply (lambda (_stx141035_
                                 _val141036_
                                 _rebind?141037_
                                 _phi141038_)
                          (gx#bind-identifier!__2
                           _stx141035_
                           _val141036_
                           _rebind?141037_
                           _phi141038_))
                        _g147752_))
                ((##fx= _g147751_ 5)
                 (apply (lambda (_stx141042_
                                 _val141043_
                                 _rebind?141044_
                                 _phi141045_
                                 _ctx141046_)
                          (gx#bind-identifier!__%
                           _stx141042_
                           _val141043_
                           _rebind?141044_
                           _phi141045_
                           _ctx141046_))
                        _g147752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g147752_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx140979_ _phi140980_ _ctx140981_)
        (let _lp140983_ ((_e140985_ _stx140979_)
                         (_marks140986_ (gx#current-expander-marks)))
          (if (symbol? _e140985_)
              (gx#core-resolve-binding
               _e140985_
               _phi140980_
               _phi140980_
               _ctx140981_
               (reverse _marks140986_))
              (if (gx#identifier-quote? _e140985_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e140985_ '1 gx#AST::t '#f)
                   _phi140980_
                   '0
                   (##unchecked-structure-ref
                    _e140985_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e140985_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e140985_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e140985_ '1 gx#AST::t '#f)
                       _phi140980_
                       _phi140980_
                       _ctx140981_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e140985_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks140986_))
                      (if (##structure-direct-instance-of?
                           _e140985_
                           'gx#syntax-wrap::t)
                          (_lp140983_
                           (##unchecked-structure-ref
                            _e140985_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e140985_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks140986_))
                          (if (##structure-instance-of?
                               _e140985_
                               'gerbil#AST::t)
                              (_lp140983_
                               (##unchecked-structure-ref
                                _e140985_
                                '1
                                gx#AST::t
                                '#f)
                               _marks140986_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx140979_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx140991_)
        (let* ((_phi140993_ (gx#current-expander-phi))
               (_ctx140995_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx140991_
           _phi140993_
           _ctx140995_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx140997_ _phi140998_)
        (let ((_ctx141000_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx140997_
           _phi140998_
           _ctx141000_))))
    (define gx#core-resolve-identifier
      (lambda _g147754_
        (let ((_g147753_ (##length _g147754_)))
          (cond ((##fx= _g147753_ 1)
                 (apply (lambda (_stx140991_)
                          (gx#core-resolve-identifier__0 _stx140991_))
                        _g147754_))
                ((##fx= _g147753_ 2)
                 (apply (lambda (_stx140997_ _phi140998_)
                          (gx#core-resolve-identifier__1
                           _stx140997_
                           _phi140998_))
                        _g147754_))
                ((##fx= _g147753_ 3)
                 (apply (lambda (_stx141002_ _phi141003_ _ctx141004_)
                          (gx#core-resolve-identifier__%
                           _stx141002_
                           _phi141003_
                           _ctx141004_))
                        _g147754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g147754_))))))
    (define gx#core-resolve-binding
      (lambda (_id140892_
               _phi140893_
               _src-phi140894_
               _ctx140895_
               _marks140896_)
        (letrec ((_resolve140898_
                  (lambda (_ctx140966_ _src-phi140967_ _key140968_)
                    (let _lp140970_ ((_ctx140972_
                                      (gx#core-context-shift
                                       _ctx140966_
                                       _phi140893_))
                                     (_dphi140973_
                                      (fx- _phi140893_ _src-phi140967_)))
                      (let ((_$e140975_
                             (gx#core-context-resolve
                              _ctx140972_
                              _key140968_)))
                        (if _$e140975_
                            (values _$e140975_)
                            (if (fxzero? _dphi140973_)
                                '#f
                                (if (fxpositive? _dphi140973_)
                                    (_lp140970_
                                     (gx#core-context-shift _ctx140972_ '-1)
                                     (fx- _dphi140973_ '1))
                                    (_lp140970_
                                     (gx#core-context-shift _ctx140972_ '1)
                                     (fx+ _dphi140973_ '1))))))))))
          (let _lp140900_ ((_ctx140902_ _ctx140895_)
                           (_src-phi140903_ _src-phi140894_)
                           (_rest140904_ _marks140896_))
            (let* ((_rest140905140913_ _rest140904_)
                   (_else140907140921_
                    (lambda ()
                      (_resolve140898_
                       _ctx140902_
                       _src-phi140903_
                       _id140892_)))
                   (_K140909140954_
                    (lambda (_rest140924_ _hd140925_)
                      (let* ((_hd140926140932_ _hd140925_)
                             (_E140928140936_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd140926140932_)))
                             (_K140929140946_
                              (lambda (_subst140939_)
                                (let ((_$e140943_
                                       (let ((_key140941_
                                              (if _subst140939_
                                                  (table-ref
                                                   _subst140939_
                                                   _id140892_
                                                   '#f)
                                                  '#f)))
                                         (if _key140941_
                                             (_resolve140898_
                                              _ctx140902_
                                              _src-phi140903_
                                              _key140941_)
                                             '#f))))
                                  (if _$e140943_
                                      _$e140943_
                                      (_lp140900_
                                       (##unchecked-structure-ref
                                        _hd140925_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd140925_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest140924_))))))
                        (if (##structure-instance-of?
                             _hd140926140932_
                             'gx#expander-mark::t)
                            (let* ((_e140930140949_
                                    (##unchecked-structure-ref
                                     _hd140926140932_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst140952_ _e140930140949_))
                              (_K140929140946_ _subst140952_))
                            (_E140928140936_))))))
              (if (##pair? _rest140905140913_)
                  (let ((_hd140910140957_ (##car _rest140905140913_))
                        (_tl140911140959_ (##cdr _rest140905140913_)))
                    (let* ((_hd140962_ _hd140910140957_)
                           (_rest140964_ _tl140911140959_))
                      (_K140909140954_ _rest140964_ _hd140962_)))
                  (_else140907140921_)))))))
    (define gx#core-bind!__%
      (lambda (_key140768_ _val140769_ _rebind?140770_ _phi140771_ _ctx140772_)
        (letrec ((_update-binding140774_
                  (lambda (_xval140845_)
                    (if (or (_rebind?140770_
                             _ctx140772_
                             _xval140845_
                             _val140769_)
                            (and (##structure-direct-instance-of?
                                  _xval140845_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval140845_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val140769_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val140769_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval140845_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val140769_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val140769_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval140845_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val140769_
                        (if (and (##structure-direct-instance-of?
                                  _val140769_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val140769_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval140845_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val140769_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval140845_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval140845_
                            (if (and (##structure-direct-instance-of?
                                      _val140769_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval140845_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key140768_
                                 (cons (##unchecked-structure-ref
                                        _val140769_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val140769_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval140845_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval140845_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval140845_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval140845_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key140768_
                                 _val140769_
                                 _xval140845_))))))
                 (_gensubst140775_
                  (lambda (_subst140840_ _id140841_)
                    (let ((_eid140843_
                           (gensym (if (uninterned-symbol? _id140841_)
                                       '%
                                       _id140841_))))
                      (table-set! _subst140840_ _id140841_ _eid140843_)
                      _eid140843_)))
                 (_subst!140776_
                  (lambda (_key140778_)
                    (let* ((_key140779140787_ _key140778_)
                           (_else140781140795_ (lambda () _key140778_))
                           (_K140783140828_
                            (lambda (_mark140798_ _id140799_)
                              (let* ((_mark140800140806_ _mark140798_)
                                     (_E140802140810_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark140800140806_)))
                                     (_K140803140820_
                                      (lambda (_subst140813_)
                                        (if (not _subst140813_)
                                            (let ((_subst140815_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark140798_
                                               _subst140815_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst140775_
                                               _subst140815_
                                               _id140799_))
                                            (let ((_$e140817_
                                                   (table-ref
                                                    _subst140813_
                                                    _id140799_
                                                    '#f)))
                                              (if _$e140817_
                                                  (values _$e140817_)
                                                  (_gensubst140775_
                                                   _subst140813_
                                                   _id140799_)))))))
                                (if (##structure-instance-of?
                                     _mark140800140806_
                                     'gx#expander-mark::t)
                                    (let* ((_e140804140823_
                                            (##unchecked-structure-ref
                                             _mark140800140806_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst140826_ _e140804140823_))
                                      (_K140803140820_ _subst140826_))
                                    (_E140802140810_))))))
                      (if (##pair? _key140779140787_)
                          (let ((_hd140784140831_ (##car _key140779140787_))
                                (_tl140785140833_ (##cdr _key140779140787_)))
                            (let* ((_id140836_ _hd140784140831_)
                                   (_mark140838_ _tl140785140833_))
                              (_K140783140828_ _mark140838_ _id140836_)))
                          (_else140781140795_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx140772_ _phi140771_)
           (_subst!140776_ _key140768_)
           _val140769_
           _update-binding140774_))))
    (define gx#core-bind!__0
      (lambda (_key140862_ _val140863_)
        (let* ((_rebind?140865_ false)
               (_phi140867_ (gx#current-expander-phi))
               (_ctx140869_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key140862_
           _val140863_
           _rebind?140865_
           _phi140867_
           _ctx140869_))))
    (define gx#core-bind!__1
      (lambda (_key140871_ _val140872_ _rebind?140873_)
        (let* ((_phi140875_ (gx#current-expander-phi))
               (_ctx140877_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key140871_
           _val140872_
           _rebind?140873_
           _phi140875_
           _ctx140877_))))
    (define gx#core-bind!__2
      (lambda (_key140879_ _val140880_ _rebind?140881_ _phi140882_)
        (let ((_ctx140884_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key140879_
           _val140880_
           _rebind?140881_
           _phi140882_
           _ctx140884_))))
    (define gx#core-bind!
      (lambda _g147756_
        (let ((_g147755_ (##length _g147756_)))
          (cond ((##fx= _g147755_ 2)
                 (apply (lambda (_key140862_ _val140863_)
                          (gx#core-bind!__0 _key140862_ _val140863_))
                        _g147756_))
                ((##fx= _g147755_ 3)
                 (apply (lambda (_key140871_ _val140872_ _rebind?140873_)
                          (gx#core-bind!__1
                           _key140871_
                           _val140872_
                           _rebind?140873_))
                        _g147756_))
                ((##fx= _g147755_ 4)
                 (apply (lambda (_key140879_
                                 _val140880_
                                 _rebind?140881_
                                 _phi140882_)
                          (gx#core-bind!__2
                           _key140879_
                           _val140880_
                           _rebind?140881_
                           _phi140882_))
                        _g147756_))
                ((##fx= _g147755_ 5)
                 (apply (lambda (_key140886_
                                 _val140887_
                                 _rebind?140888_
                                 _phi140889_
                                 _ctx140890_)
                          (gx#core-bind!__%
                           _key140886_
                           _val140887_
                           _rebind?140888_
                           _phi140889_
                           _ctx140890_))
                        _g147756_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g147756_))))))
    (define gx#core-identifier-key
      (lambda (_stx140702_)
        (if (symbol? _stx140702_)
            (let* ((_g140703140711_ (gx#current-expander-marks))
                   (_else140705140719_ (lambda () _stx140702_))
                   (_K140707140724_
                    (lambda (_hd140722_) (cons _stx140702_ _hd140722_))))
              (if (##pair? _g140703140711_)
                  (let* ((_hd140708140727_ (##car _g140703140711_))
                         (_hd140730_ _hd140708140727_))
                    (_K140707140724_ _hd140730_))
                  (_else140705140719_)))
            (if (gx#identifier? _stx140702_)
                (let* ((_id140732_ (gx#syntax-local-unwrap _stx140702_))
                       (_eid140734_ (gx#stx-e _id140732_))
                       (_marks140736_ (gx#stx-identifier-marks* _id140732_)))
                  (let* ((_marks140738140746_ _marks140736_)
                         (_else140740140754_ (lambda () _eid140734_))
                         (_K140742140759_
                          (lambda (_hd140757_) (cons _eid140734_ _hd140757_))))
                    (if (##pair? _marks140738140746_)
                        (let* ((_hd140743140762_ (##car _marks140738140746_))
                               (_hd140765_ _hd140743140762_))
                          (_K140742140759_ _hd140765_))
                        (_else140740140754_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx140702_)))))
    (define gx#core-context-shift
      (lambda (_ctx140647_ _phi140648_)
        (letrec ((_make-phi140650_
                  (lambda (_super140700_)
                    (let ((__obj147727
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj147727
                       (gensym 'phi)
                       _super140700_)
                      __obj147727)))
                 (_make-phi/up140651_
                  (lambda (_ctx140695_ _super140696_)
                    (let ((_ctx+1140698_ (_make-phi140650_ _super140696_)))
                      (##unchecked-structure-set!
                       _ctx140695_
                       _ctx+1140698_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1140698_
                       _ctx140695_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1140698_)))
                 (_make-phi/down140652_
                  (lambda (_ctx140690_ _super140691_)
                    (let ((_ctx-1140693_ (_make-phi140650_ _super140691_)))
                      (##unchecked-structure-set!
                       _ctx-1140693_
                       _ctx140690_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx140690_
                       _ctx-1140693_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1140693_)))
                 (_shift140653_
                  (lambda (_ctx140674_
                           _delta140675_
                           _make-delta-context140676_
                           _phi140677_
                           _K140678_)
                    (let ((_$e140680_
                           (##unchecked-structure-ref
                            _ctx140674_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e140680_
                          ((lambda (_super140683_)
                             (let* ((_super140685_
                                     (_K140678_ _super140683_ _delta140675_))
                                    (_ctx+d140687_
                                     (_make-delta-context140676_
                                      _ctx140674_
                                      _super140685_)))
                               (_K140678_
                                _ctx+d140687_
                                (fx- _phi140677_ _delta140675_))))
                           _$e140680_)
                          (error '"Bad context" _ctx140674_))))))
          (let _K140655_ ((_ctx140657_ _ctx140647_) (_phi140658_ _phi140648_))
            (if (fxzero? _phi140658_)
                _ctx140657_
                (if (fx> (##vector-length _ctx140657_) '3)
                    (if (fxpositive? _phi140658_)
                        (let ((_$e140660_
                               (##unchecked-structure-ref
                                _ctx140657_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e140660_
                              ((lambda (_g140662140664_)
                                 (_K140655_
                                  _g140662140664_
                                  (fx- _phi140658_ '1)))
                               _$e140660_)
                              (_shift140653_
                               _ctx140657_
                               '1
                               _make-phi/up140651_
                               _phi140658_
                               _K140655_)))
                        (let ((_$e140667_
                               (##unchecked-structure-ref
                                _ctx140657_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e140667_
                              ((lambda (_g140669140671_)
                                 (_K140655_
                                  _g140669140671_
                                  (fx+ _phi140658_ '1)))
                               _$e140667_)
                              (_shift140653_
                               _ctx140657_
                               '-1
                               _make-phi/down140652_
                               _phi140658_
                               _K140655_))))
                    _ctx140657_))))))
    (define gx#core-context-get
      (lambda (_ctx140644_ _key140645_)
        (table-ref
         (##unchecked-structure-ref _ctx140644_ '2 gx#expander-context::t '#f)
         _key140645_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx140640_ _key140641_ _val140642_)
        (table-set!
         (##unchecked-structure-ref _ctx140640_ '2 gx#expander-context::t '#f)
         _key140641_
         _val140642_)))
    (define gx#core-context-resolve
      (lambda (_ctx140627_ _key140628_)
        (let _lp140630_ ((_ctx140632_ _ctx140627_))
          (let ((_$e140634_ (gx#core-context-get _ctx140632_ _key140628_)))
            (if _$e140634_
                (values _$e140634_)
                (let ((_$e140637_
                       (if (fx> (##vector-length _ctx140632_) '3)
                           (##unchecked-structure-ref
                            _ctx140632_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e140637_ (_lp140630_ _$e140637_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx140617_ _key140618_ _val140619_ _rebind140620_)
        (let ((_$e140622_ (gx#core-context-get _ctx140617_ _key140618_)))
          (if _$e140622_
              ((lambda (_xval140625_)
                 (gx#core-context-put!
                  _ctx140617_
                  _key140618_
                  (_rebind140620_ _xval140625_)))
               _$e140622_)
              (gx#core-context-put! _ctx140617_ _key140618_ _val140619_)))))
    (define gx#core-context-top__%
      (lambda (_ctx140595_ _stop?140596_)
        (let _lp140598_ ((_ctx140600_ _ctx140595_))
          (if (_stop?140596_ _ctx140600_)
              _ctx140600_
              (if (##structure-instance-of? _ctx140600_ 'gx#context-phi::t)
                  (_lp140598_
                   (##unchecked-structure-ref
                    _ctx140600_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx140606_ (gx#current-expander-context))
               (_stop?140608_ gx#top-context?))
          (gx#core-context-top__% _ctx140606_ _stop?140608_))))
    (define gx#core-context-top__1
      (lambda (_ctx140610_)
        (let ((_stop?140612_ gx#top-context?))
          (gx#core-context-top__% _ctx140610_ _stop?140612_))))
    (define gx#core-context-top
      (lambda _g147758_
        (let ((_g147757_ (##length _g147758_)))
          (cond ((##fx= _g147757_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g147758_))
                ((##fx= _g147757_ 1)
                 (apply (lambda (_ctx140610_)
                          (gx#core-context-top__1 _ctx140610_))
                        _g147758_))
                ((##fx= _g147757_ 2)
                 (apply (lambda (_ctx140614_ _stop?140615_)
                          (gx#core-context-top__% _ctx140614_ _stop?140615_))
                        _g147758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g147758_))))))
    (define gx#core-context-root__%
      (lambda (_ctx140580_)
        (let _lp140582_ ((_ctx140584_ _ctx140580_))
          (if (##structure-instance-of? _ctx140584_ 'gx#context-phi::t)
              (_lp140582_
               (##unchecked-structure-ref
                _ctx140584_
                '3
                gx#phi-context::t
                '#f))
              _ctx140584_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx140590_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx140590_))))
    (define gx#core-context-root
      (lambda _g147760_
        (let ((_g147759_ (##length _g147760_)))
          (cond ((##fx= _g147759_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g147760_))
                ((##fx= _g147759_ 1)
                 (apply (lambda (_ctx140592_)
                          (gx#core-context-root__% _ctx140592_))
                        _g147760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g147760_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx140561_ . __140558140562_)
        (let ((_$e140565_ (gx#current-expander-allow-rebind?)))
          (if _$e140565_
              _$e140565_
              (if (##structure-instance-of? _ctx140561_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx140561_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx140561_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx140572_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx140572_))))
    (define gx#core-context-rebind?
      (lambda _g147762_
        (let ((_g147761_ (##length _g147762_)))
          (cond ((##fx= _g147761_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g147762_))
                ((##fx= _g147761_ 1)
                 (apply (lambda (_ctx140574_)
                          (gx#core-context-rebind?__% _ctx140574_))
                        _g147762_))
                ((##fx>= _g147761_ 1)
                 (apply gx#core-context-rebind?__% _g147762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g147762_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx140544_)
        (let ((_$e140546_ (gx#core-context-top__1 _ctx140544_)))
          (if _$e140546_
              ((lambda (_ctx140549_)
                 (if (##structure-instance-of?
                      _ctx140549_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx140549_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e140546_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx140555_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx140555_))))
    (define gx#core-context-namespace
      (lambda _g147764_
        (let ((_g147763_ (##length _g147764_)))
          (cond ((##fx= _g147763_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g147764_))
                ((##fx= _g147763_ 1)
                 (apply (lambda (_ctx140557_)
                          (gx#core-context-namespace__% _ctx140557_))
                        _g147764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g147764_))))))
    (define gx#expander-binding?__%
      (lambda (_bind140530_ _is?140531_)
        (if (##structure-direct-instance-of?
             _bind140530_
             'gx#syntax-binding::t)
            (_is?140531_
             (##unchecked-structure-ref
              _bind140530_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind140536_)
        (let ((_is?140538_ gx#expander?))
          (gx#expander-binding?__% _bind140536_ _is?140538_))))
    (define gx#expander-binding?
      (lambda _g147766_
        (let ((_g147765_ (##length _g147766_)))
          (cond ((##fx= _g147765_ 1)
                 (apply (lambda (_bind140536_)
                          (gx#expander-binding?__0 _bind140536_))
                        _g147766_))
                ((##fx= _g147765_ 2)
                 (apply (lambda (_bind140540_ _is?140541_)
                          (gx#expander-binding?__% _bind140540_ _is?140541_))
                        _g147766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g147766_))))))
    (define gx#core-expander-binding?
      (lambda (_bind140527_)
        (gx#expander-binding?__% _bind140527_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind140525_)
        (gx#expander-binding?__% _bind140525_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind140519_)
        (letrec ((_direct-special-form?140521_
                  (lambda (_obj140523_)
                    (##structure-direct-instance-of?
                     _obj140523_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind140519_
           _direct-special-form?140521_))))
    (define gx#special-form-binding?
      (lambda (_bind140517_)
        (gx#expander-binding?__% _bind140517_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind140508_)
        (letrec ((_feature?140510_
                  (lambda (_e140512_)
                    (let ((_$e140514_
                           (##structure-instance-of?
                            _e140512_
                            'gx#feature-expander::t)))
                      (if _$e140514_
                          _$e140514_
                          (##structure-instance-of?
                           _e140512_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind140508_ _feature?140510_))))
    (define gx#private-feature-binding?
      (lambda (_bind140506_)
        (gx#expander-binding?__% _bind140506_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id140493_ _bound?140494_)
        (if (gx#identifier? _id140493_)
            (_bound?140494_ (gx#resolve-identifier__0 _id140493_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id140499_)
        (let ((_bound?140501_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id140499_ _bound?140501_))))
    (define gx#core-bound-identifier?
      (lambda _g147768_
        (let ((_g147767_ (##length _g147768_)))
          (cond ((##fx= _g147767_ 1)
                 (apply (lambda (_id140499_)
                          (gx#core-bound-identifier?__0 _id140499_))
                        _g147768_))
                ((##fx= _g147767_ 2)
                 (apply (lambda (_id140503_ _bound?140504_)
                          (gx#core-bound-identifier?__%
                           _id140503_
                           _bound?140504_))
                        _g147768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g147768_))))))
    (define gx#core-identifier=?
      (lambda (_x140483_ _y140484_)
        (letrec ((_y=?140486_
                  (lambda (_xid140490_)
                    ((if (list? _y140484_) memq eq?) _xid140490_ _y140484_))))
          (let ((_bind140488_ (gx#resolve-identifier__0 _x140483_)))
            (if (##structure-instance-of? _bind140488_ 'gx#binding::t)
                (_y=?140486_
                 (##unchecked-structure-ref _bind140488_ '1 gx#binding::t '#f))
                (_y=?140486_ (gx#stx-e _x140483_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e140481_)
        (if (interned-symbol? _e140481_)
            (string-index (symbol->string _e140481_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx140436_ _src140437_ _ctx140438_ _marks140439_)
        (if (##structure? _stx140436_)
            (let ((_$e140441_ (gx#sealed-syntax-unwrap _stx140436_)))
              (if _$e140441_
                  (values _$e140441_)
                  (if (gx#identifier? _stx140436_)
                      (let ((_id140444_
                             (gx#stx-unwrap__% _stx140436_ _marks140439_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id140444_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e140446_
                                (##unchecked-structure-ref
                                 _id140444_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e140446_ _$e140446_ _src140437_))
                         _ctx140438_
                         (##unchecked-structure-ref
                          _id140444_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx140436_)
                       (let ((_$e140449_ (gx#stx-source _stx140436_)))
                         (if _$e140449_ _$e140449_ _src140437_))
                       _ctx140438_
                       (reverse _marks140439_)))))
            (##structure
             gx#syntax-quote::t
             _stx140436_
             _src140437_
             _ctx140438_
             (reverse _marks140439_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx140455_)
        (let* ((_src140457_ '#f)
               (_ctx140459_ (gx#current-expander-context))
               (_marks140461_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140455_
           _src140457_
           _ctx140459_
           _marks140461_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx140463_ _src140464_)
        (let* ((_ctx140466_ (gx#current-expander-context))
               (_marks140468_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140463_
           _src140464_
           _ctx140466_
           _marks140468_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx140470_ _src140471_ _ctx140472_)
        (let ((_marks140474_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140470_
           _src140471_
           _ctx140472_
           _marks140474_))))
    (define gx#core-quote-syntax
      (lambda _g147770_
        (let ((_g147769_ (##length _g147770_)))
          (cond ((##fx= _g147769_ 1)
                 (apply (lambda (_stx140455_)
                          (gx#core-quote-syntax__0 _stx140455_))
                        _g147770_))
                ((##fx= _g147769_ 2)
                 (apply (lambda (_stx140463_ _src140464_)
                          (gx#core-quote-syntax__1 _stx140463_ _src140464_))
                        _g147770_))
                ((##fx= _g147769_ 3)
                 (apply (lambda (_stx140470_ _src140471_ _ctx140472_)
                          (gx#core-quote-syntax__2
                           _stx140470_
                           _src140471_
                           _ctx140472_))
                        _g147770_))
                ((##fx= _g147769_ 4)
                 (apply (lambda (_stx140476_
                                 _src140477_
                                 _ctx140478_
                                 _marks140479_)
                          (gx#core-quote-syntax__%
                           _stx140476_
                           _src140477_
                           _ctx140478_
                           _marks140479_))
                        _g147770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g147770_))))))
    (define gx#core-cons
      (lambda (_hd140432_ _tl140433_)
        (cons (gx#core-quote-syntax__0 _hd140432_) _tl140433_)))
    (define gx#core-list
      (lambda (_hd140429_ . _rest140430_)
        (cons (gx#core-quote-syntax__0 _hd140429_) _rest140430_)))
    (define gx#core-cons*
      (lambda (_hd140426_ . _rest140427_)
        (apply cons* (gx#core-quote-syntax__0 _hd140426_) _rest140427_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path140400_ _rel140401_)
        (let ((_path140413_ (gx#stx-e _stx-path140400_))
              (_reldir140414_
               (let _lp140403_ ((_relsrc140405_
                                 (let ((_$e140410_
                                        (gx#stx-source _stx-path140400_)))
                                   (if _$e140410_ _$e140410_ _rel140401_))))
                 (if (##structure-instance-of? _relsrc140405_ 'gerbil#AST::t)
                     (_lp140403_
                      (let ((_$e140407_ (gx#stx-source _relsrc140405_)))
                        (if _$e140407_ _$e140407_ (gx#stx-e _relsrc140405_))))
                     (if (source-location-path? _relsrc140405_)
                         (path-directory (source-location-path _relsrc140405_))
                         (if (string? _relsrc140405_)
                             (path-directory _relsrc140405_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path140413_ (path-normalize _reldir140414_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path140419_)
        (let ((_rel140421_ '#f))
          (gx#core-resolve-path__% _stx-path140419_ _rel140421_))))
    (define gx#core-resolve-path
      (lambda _g147772_
        (let ((_g147771_ (##length _g147772_)))
          (cond ((##fx= _g147771_ 1)
                 (apply (lambda (_stx-path140419_)
                          (gx#core-resolve-path__0 _stx-path140419_))
                        _g147772_))
                ((##fx= _g147771_ 2)
                 (apply (lambda (_stx-path140423_ _rel140424_)
                          (gx#core-resolve-path__%
                           _stx-path140423_
                           _rel140424_))
                        _g147772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g147772_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr140356_ _ctx140357_)
        (let* ((_repr140358140365_ _repr140356_)
               (_E140360140369_
                (lambda () (error '"No clause matching" _repr140358140365_)))
               (_K140361140377_
                (lambda (_subs140372_ _phi140373_)
                  (let ((_subst140375_
                         (if (not (null? _subs140372_))
                             (list->table _subs140372_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst140375_
                     _ctx140357_
                     _phi140373_
                     '#f)))))
          (if (##pair? _repr140358140365_)
              (let ((_hd140362140380_ (##car _repr140358140365_))
                    (_tl140363140382_ (##cdr _repr140358140365_)))
                (let* ((_phi140385_ _hd140362140380_)
                       (_subs140387_ _tl140363140382_))
                  (_K140361140377_ _subs140387_ _phi140385_)))
              (_E140360140369_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr140392_)
        (let ((_ctx140394_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr140392_ _ctx140394_))))
    (define gx#core-deserialize-mark
      (lambda _g147774_
        (let ((_g147773_ (##length _g147774_)))
          (cond ((##fx= _g147773_ 1)
                 (apply (lambda (_repr140392_)
                          (gx#core-deserialize-mark__0 _repr140392_))
                        _g147774_))
                ((##fx= _g147773_ 2)
                 (apply (lambda (_repr140396_ _ctx140397_)
                          (gx#core-deserialize-mark__%
                           _repr140396_
                           _ctx140397_))
                        _g147774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g147774_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx140353_)
        (gx#stx-rewrap _stx140353_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx140351_)
        (gx#stx-unwrap__% _stx140351_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx140321_)
        (let* ((_g140322140330_ (gx#current-expander-marks))
               (_else140324140338_ (lambda () _stx140321_))
               (_K140326140343_
                (lambda (_hd140341_)
                  (gx#stx-apply-mark _stx140321_ _hd140341_))))
          (if (##pair? _g140322140330_)
              (let* ((_hd140327140346_ (##car _g140322140330_))
                     (_hd140349_ _hd140327140346_))
                (_K140326140343_ _hd140349_))
              (_else140324140338_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx140306_ _E140307_)
        (let ((_bind140309_ (gx#resolve-identifier__0 _stx140306_)))
          (if (##structure-direct-instance-of?
               _bind140309_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind140309_
               '4
               gx#syntax-binding::t
               '#f)
              (_E140307_ _stx140306_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx140314_)
        (let ((_E140316_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx140314_ _E140316_))))
    (define gx#syntax-local-e
      (lambda _g147776_
        (let ((_g147775_ (##length _g147776_)))
          (cond ((##fx= _g147775_ 1)
                 (apply (lambda (_stx140314_)
                          (gx#syntax-local-e__0 _stx140314_))
                        _g147776_))
                ((##fx= _g147775_ 2)
                 (apply (lambda (_stx140318_ _E140319_)
                          (gx#syntax-local-e__% _stx140318_ _E140319_))
                        _g147776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g147776_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx140290_ _E140291_)
        (let ((_e140293_ (gx#syntax-local-e__% _stx140290_ _E140291_)))
          (if (##structure-instance-of? _e140293_ 'gx#expander::t)
              (##structure-ref _e140293_ '1 gx#expander::t '#f)
              _e140293_))))
    (define gx#syntax-local-value__0
      (lambda (_stx140298_)
        (let ((_E140300_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx140298_ _E140300_))))
    (define gx#syntax-local-value
      (lambda _g147778_
        (let ((_g147777_ (##length _g147778_)))
          (cond ((##fx= _g147777_ 1)
                 (apply (lambda (_stx140298_)
                          (gx#syntax-local-value__0 _stx140298_))
                        _g147778_))
                ((##fx= _g147777_ 2)
                 (apply (lambda (_stx140302_ _E140303_)
                          (gx#syntax-local-value__% _stx140302_ _E140303_))
                        _g147778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g147778_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx140287_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx140287_)))))
