(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707647933)
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
       '()
       ':init!))
    (define gx#expander-context? (make-class-predicate gx#expander-context::t))
    (define gx#make-expander-context
      (lambda _$args143274_
        (apply make-class-instance gx#expander-context::t _$args143274_)))
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
       '()
       '#f))
    (define gx#root-context? (make-class-predicate gx#root-context::t))
    (define gx#make-root-context
      (lambda _$args143271_
        (apply make-class-instance gx#root-context::t _$args143271_)))
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
       '()
       '#f))
    (define gx#phi-context? (make-class-predicate gx#phi-context::t))
    (define gx#make-phi-context
      (lambda _$args143268_
        (apply make-class-instance gx#phi-context::t _$args143268_)))
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
       '()
       '#f))
    (define gx#top-context? (make-class-predicate gx#top-context::t))
    (define gx#make-top-context
      (lambda _$args143265_
        (apply make-class-instance gx#top-context::t _$args143265_)))
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
       '()
       '#f))
    (define gx#module-context? (make-class-predicate gx#module-context::t))
    (define gx#make-module-context
      (lambda _$args143262_
        (apply make-class-instance gx#module-context::t _$args143262_)))
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
       '()
       '#f))
    (define gx#prelude-context? (make-class-predicate gx#prelude-context::t))
    (define gx#make-prelude-context
      (lambda _$args143259_
        (apply make-class-instance gx#prelude-context::t _$args143259_)))
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
       '()
       '#f))
    (define gx#local-context? (make-class-predicate gx#local-context::t))
    (define gx#make-local-context
      (lambda _$args143256_
        (apply make-class-instance gx#local-context::t _$args143256_)))
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
      (lambda (_self143240_ _id143241_ _super143242_)
        (if (##fx< '3 (##structure-length _self143240_))
            (begin
              (##unchecked-structure-set!
               _self143240_
               _id143241_
               '1
               (##structure-type _self143240_)
               '#f)
              (##unchecked-structure-set!
               _self143240_
               (make-table 'test: eq?)
               '2
               (##structure-type _self143240_)
               '#f)
              (##unchecked-structure-set!
               _self143240_
               _super143242_
               '3
               (##structure-type _self143240_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143240_
                   '3
                   (##vector-length _self143240_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self143247_ _id143248_)
        (let ((_super143250_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self143247_ _id143248_ _super143250_))))
    (define gx#phi-context:::init!
      (lambda _g147794_
        (let ((_g147793_ (##length _g147794_)))
          (cond ((##fx= _g147793_ 2)
                 (apply (lambda (_self143247_ _id143248_)
                          (gx#phi-context:::init!__0 _self143247_ _id143248_))
                        _g147794_))
                ((##fx= _g147793_ 3)
                 (apply (lambda (_self143252_ _id143253_ _super143254_)
                          (gx#phi-context:::init!__%
                           _self143252_
                           _id143253_
                           _super143254_))
                        _g147794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g147794_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self143104_ _super143105_)
        (if (##fx< '3 (##structure-length _self143104_))
            (begin
              (##unchecked-structure-set!
               _self143104_
               (gensym 'L)
               '1
               (##structure-type _self143104_)
               '#f)
              (##unchecked-structure-set!
               _self143104_
               (make-table 'test: eq?)
               '2
               (##structure-type _self143104_)
               '#f)
              (##unchecked-structure-set!
               _self143104_
               _super143105_
               '3
               (##structure-type _self143104_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143104_
                   '3
                   (##vector-length _self143104_)))))
    (define gx#local-context:::init!__0
      (lambda (_self143110_)
        (let ((_super143112_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self143110_ _super143112_))))
    (define gx#local-context:::init!
      (lambda _g147796_
        (let ((_g147795_ (##length _g147796_)))
          (cond ((##fx= _g147795_ 1)
                 (apply (lambda (_self143110_)
                          (gx#local-context:::init!__0 _self143110_))
                        _g147796_))
                ((##fx= _g147795_ 2)
                 (apply (lambda (_self143114_ _super143115_)
                          (gx#local-context:::init!__%
                           _self143114_
                           _super143115_))
                        _g147796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g147796_))))))
    (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
    (define gx#binding::t
      (make-class-type
       'gx#binding::t
       'binding
       (list)
       '(id key phi)
       '((transparent: . #t))
       '#f))
    (define gx#binding? (make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _$args142978_
        (apply make-class-instance gx#binding::t _$args142978_)))
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
       '((transparent: . #t))
       '#f))
    (define gx#runtime-binding? (make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _$args142975_
        (apply make-class-instance gx#runtime-binding::t _$args142975_)))
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
       '((transparent: . #t))
       '#f))
    (define gx#local-binding? (make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _$args142972_
        (apply make-class-instance gx#local-binding::t _$args142972_)))
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
       '((transparent: . #t))
       '#f))
    (define gx#top-binding? (make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _$args142969_
        (apply make-class-instance gx#top-binding::t _$args142969_)))
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
       '((transparent: . #t))
       '#f))
    (define gx#module-binding? (make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _$args142966_
        (apply make-class-instance gx#module-binding::t _$args142966_)))
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
       '((transparent: . #t))
       '#f))
    (define gx#extern-binding? (make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _$args142963_
        (apply make-class-instance gx#extern-binding::t _$args142963_)))
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
       (cons (cons 'final: '#t) '((transparent: . #t)))
       '#f))
    (define gx#syntax-binding? (make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _$args142960_
        (apply make-class-instance gx#syntax-binding::t _$args142960_)))
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
       (cons (cons 'final: '#t) '((transparent: . #t)))
       '#f))
    (define gx#import-binding? (make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _$args142957_
        (apply make-class-instance gx#import-binding::t _$args142957_)))
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
       (cons (cons 'final: '#t) '((transparent: . #t)))
       '#f))
    (define gx#alias-binding? (make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _$args142954_
        (apply make-class-instance gx#alias-binding::t _$args142954_)))
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
      (make-class-type 'gx#expander::t 'expander (list) '(e) '() '#f))
    (define gx#expander? (make-class-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _$args142951_
        (apply make-class-instance gx#expander::t _$args142951_)))
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
       '()
       '#f))
    (define gx#core-expander? (make-class-predicate gx#core-expander::t))
    (define gx#make-core-expander
      (lambda _$args142948_
        (apply make-class-instance gx#core-expander::t _$args142948_)))
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
       '()
       '#f))
    (define gx#expression-form? (make-class-predicate gx#expression-form::t))
    (define gx#make-expression-form
      (lambda _$args142945_
        (apply make-class-instance gx#expression-form::t _$args142945_)))
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
       '()
       '#f))
    (define gx#special-form? (make-class-predicate gx#special-form::t))
    (define gx#make-special-form
      (lambda _$args142942_
        (apply make-class-instance gx#special-form::t _$args142942_)))
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
       '()
       '#f))
    (define gx#definition-form? (make-class-predicate gx#definition-form::t))
    (define gx#make-definition-form
      (lambda _$args142939_
        (apply make-class-instance gx#definition-form::t _$args142939_)))
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
       '()
       '#f))
    (define gx#top-special-form? (make-class-predicate gx#top-special-form::t))
    (define gx#make-top-special-form
      (lambda _$args142936_
        (apply make-class-instance gx#top-special-form::t _$args142936_)))
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
       '()
       '#f))
    (define gx#module-special-form?
      (make-class-predicate gx#module-special-form::t))
    (define gx#make-module-special-form
      (lambda _$args142933_
        (apply make-class-instance gx#module-special-form::t _$args142933_)))
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
       '()
       '#f))
    (define gx#feature-expander? (make-class-predicate gx#feature-expander::t))
    (define gx#make-feature-expander
      (lambda _$args142930_
        (apply make-class-instance gx#feature-expander::t _$args142930_)))
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
       '()
       '#f))
    (define gx#private-feature-expander?
      (make-class-predicate gx#private-feature-expander::t))
    (define gx#make-private-feature-expander
      (lambda _$args142927_
        (apply make-class-instance
               gx#private-feature-expander::t
               _$args142927_)))
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
       '()
       '#f))
    (define gx#reserved-expander?
      (make-class-predicate gx#reserved-expander::t))
    (define gx#make-reserved-expander
      (lambda _$args142924_
        (apply make-class-instance gx#reserved-expander::t _$args142924_)))
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
       '()
       '#f))
    (define gx#macro-expander? (make-class-predicate gx#macro-expander::t))
    (define gx#make-macro-expander
      (lambda _$args142921_
        (apply make-class-instance gx#macro-expander::t _$args142921_)))
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
       '()
       '#f))
    (define gx#rename-macro-expander?
      (make-class-predicate gx#rename-macro-expander::t))
    (define gx#make-rename-macro-expander
      (lambda _$args142918_
        (apply make-class-instance gx#rename-macro-expander::t _$args142918_)))
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
       '()
       '#f))
    (define gx#user-expander? (make-class-predicate gx#user-expander::t))
    (define gx#make-user-expander
      (lambda _$args142915_
        (apply make-class-instance gx#user-expander::t _$args142915_)))
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
       '()
       '#f))
    (define gx#expander-mark? (make-class-predicate gx#expander-mark::t))
    (define gx#make-expander-mark
      (lambda _$args142912_
        (apply make-class-instance gx#expander-mark::t _$args142912_)))
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
      (lambda (_ctx142897_ _message142898_ _stx142899_ . _details142900_)
        (let ((_ctx142910_
               (let ((_$e142902_ _ctx142897_))
                 (if _$e142902_
                     _$e142902_
                     (let ((_$e142905_ (gx#core-context-top__0)))
                       (if _$e142905_
                           ((lambda (_ctx142908_)
                              (cons 'expand
                                    (cons (let ((__obj147783 _ctx142908_))
                                            (if (##structure-direct-instance-of?
                                                 __obj147783
                                                 'gx#expander-context::t)
                                                (##unchecked-structure-ref
                                                 __obj147783
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (class-slot-ref
                                                 gx#expander-context::t
                                                 __obj147783
                                                 'id)))
                                          '())))
                            _$e142905_)
                           '#f))))))
          (raise (make-syntax-error
                  _message142898_
                  (cons _stx142899_ _details142900_)
                  _ctx142910_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx142884_ _expression?142885_)
        (gx#eval-syntax* (gx#core-expand__% _stx142884_ _expression?142885_))))
    (define gx#eval-syntax__0
      (lambda (_stx142890_)
        (let ((_expression?142892_ '#f))
          (gx#eval-syntax__% _stx142890_ _expression?142892_))))
    (define gx#eval-syntax
      (lambda _g147798_
        (let ((_g147797_ (##length _g147798_)))
          (cond ((##fx= _g147797_ 1)
                 (apply (lambda (_stx142890_) (gx#eval-syntax__0 _stx142890_))
                        _g147798_))
                ((##fx= _g147797_ 2)
                 (apply (lambda (_stx142894_ _expression?142895_)
                          (gx#eval-syntax__% _stx142894_ _expression?142895_))
                        _g147798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g147798_))))))
    (define gx#eval-syntax*
      (lambda (_stx142881_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx142881_))))
    (define gx#core-expand__%
      (lambda (_stx142868_ _expression?142869_)
        (if _expression?142869_
            (gx#core-expand-expression _stx142868_)
            (gx#core-expand-top _stx142868_))))
    (define gx#core-expand__0
      (lambda (_stx142874_)
        (let ((_expression?142876_ '#f))
          (gx#core-expand__% _stx142874_ _expression?142876_))))
    (define gx#core-expand
      (lambda _g147800_
        (let ((_g147799_ (##length _g147800_)))
          (cond ((##fx= _g147799_ 1)
                 (apply (lambda (_stx142874_) (gx#core-expand__0 _stx142874_))
                        _g147800_))
                ((##fx= _g147799_ 2)
                 (apply (lambda (_stx142878_ _expression?142879_)
                          (gx#core-expand__% _stx142878_ _expression?142879_))
                        _g147800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g147800_))))))
    (define gx#core-expand-top
      (lambda (_stx142835_)
        (let* ((_stx142837_ (gx#core-expand*__0 _stx142835_))
               (_e142838142845_ _stx142837_)
               (_E142840142849_
                (lambda () (gx#core-expand-expression _stx142837_)))
               (_E142839142863_
                (lambda ()
                  (if (gx#stx-pair? _e142838142845_)
                      (let ((_e142841142853_ (gx#syntax-e _e142838142845_)))
                        (let ((_hd142842142856_ (##car _e142841142853_))
                              (_tl142843142858_ (##cdr _e142841142853_)))
                          (let ((_form142861_ _hd142842142856_))
                            (if (gx#core-bound-identifier?__0 _form142861_)
                                _stx142837_
                                (_E142840142849_)))))
                      (_E142840142849_)))))
          (_E142839142863_))))
    (define gx#core-expand-expression
      (lambda (_stx142782_)
        (letrec ((_sealed-expression?142784_
                  (lambda (_hd142805_)
                    (if (gx#sealed-syntax? _hd142805_)
                        (let* ((_e142806142813_ _hd142805_)
                               (_E142808142817_ (lambda () '#f))
                               (_E142807142831_
                                (lambda ()
                                  (if (gx#stx-pair? _e142806142813_)
                                      (let ((_e142809142821_
                                             (gx#syntax-e _e142806142813_)))
                                        (let ((_hd142810142824_
                                               (##car _e142809142821_))
                                              (_tl142811142826_
                                               (##cdr _e142809142821_)))
                                          (let ((_form142829_
                                                 _hd142810142824_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form142829_
                                                 gx#expression-form-binding?)
                                                (_E142808142817_)))))
                                      (_E142808142817_)))))
                          (_E142807142831_))
                        '#f)))
                 (_illegal-expression142785_
                  (lambda (_hd142803_ . _g147801_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx142782_
                     _hd142803_)))
                 (_expand-e142786_
                  (lambda (_form142798_ _hd142799_)
                    (let ((_bind142801_
                           (if (class-instance? gx#binding::t _form142798_)
                               _form142798_
                               (gx#resolve-identifier__0 _form142798_))))
                      (if (gx#core-expander-binding? _bind142801_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind142801_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd142799_
                            (gx#stx-source _stx142782_)))
                          (if (##structure-direct-instance-of?
                               _bind142801_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind142801_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd142799_
                                 (gx#stx-source _stx142782_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx142782_
                               _form142798_)))))))
          (let ((_hd142788_ (gx#core-expand-head _stx142782_)))
            (if (_sealed-expression?142784_ _hd142788_)
                _hd142788_
                (if (gx#stx-pair? _hd142788_)
                    (let* ((_form142790_ (gx#stx-car _hd142788_))
                           (_bind142792_
                            (if (gx#identifier? _form142790_)
                                (gx#resolve-identifier__0 _form142790_)
                                '#f)))
                      (if (or (not _bind142792_)
                              (not (gx#core-expander-binding? _bind142792_)))
                          (_expand-e142786_ '%%app (cons '%%app _hd142788_))
                          (if (eq? (unchecked-slot-ref _bind142792_ 'id)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd142788_
                               _illegal-expression142785_)
                              (if (gx#expression-form-binding? _bind142792_)
                                  (_expand-e142786_ _bind142792_ _hd142788_)
                                  (if (gx#direct-special-form-binding?
                                       _bind142792_)
                                      (gx#core-expand-expression
                                       (_expand-e142786_
                                        _bind142792_
                                        _hd142788_))
                                      (_illegal-expression142785_
                                       _hd142788_))))))
                    (if (gx#core-bound-identifier?__0 _hd142788_)
                        (_illegal-expression142785_ _hd142788_)
                        (if (gx#identifier? _hd142788_)
                            (_expand-e142786_
                             '%%ref
                             (cons '%%ref (cons _hd142788_ '())))
                            (if (gx#stx-datum? _hd142788_)
                                (_expand-e142786_
                                 '%#quote
                                 (cons '%#quote (cons _hd142788_ '())))
                                (_illegal-expression142785_
                                 _hd142788_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx142777_)
        (call-with-parameters
         (lambda ()
           (let ((_stx142780_ (gx#core-expand-expression _stx142777_)))
             (values _stx142780_ (gx#eval-syntax* _stx142780_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx142758_ _stop?142759_)
        (let _lp142761_ ((_stx142763_ _stx142758_))
          (if (_stop?142759_ _stx142763_)
              _stx142763_
              (let ((_rstx142765_ (gx#core-expand1 _stx142763_)))
                (if (eq? _stx142763_ _rstx142765_)
                    _stx142763_
                    (_lp142761_ _rstx142765_)))))))
    (define gx#core-expand*__0
      (lambda (_stx142770_)
        (let ((_stop?142772_ false))
          (gx#core-expand*__% _stx142770_ _stop?142772_))))
    (define gx#core-expand*
      (lambda _g147803_
        (let ((_g147802_ (##length _g147803_)))
          (cond ((##fx= _g147802_ 1)
                 (apply (lambda (_stx142770_) (gx#core-expand*__0 _stx142770_))
                        _g147803_))
                ((##fx= _g147802_ 2)
                 (apply (lambda (_stx142774_ _stop?142775_)
                          (gx#core-expand*__% _stx142774_ _stop?142775_))
                        _g147803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g147803_))))))
    (define gx#core-expand1
      (lambda (_stx142714_)
        (letrec ((_step142716_
                  (lambda (_hd142753_)
                    (let ((_bind142755_ (gx#resolve-identifier__0 _hd142753_)))
                      (if (class-instance? gx#runtime-binding::t _bind142755_)
                          _stx142714_
                          (if (##structure-direct-instance-of?
                               _bind142755_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind142755_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx142714_)
                              (if (not _bind142755_)
                                  _stx142714_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx142714_))))))))
          (let* ((_e142717142725_ _stx142714_)
                 (_E142723142729_ (lambda () _stx142714_))
                 (_E142719142735_
                  (lambda ()
                    (let ((_hd142733_ _e142717142725_))
                      (if (gx#identifier? _hd142733_)
                          (_step142716_ _hd142733_)
                          (_E142723142729_)))))
                 (_E142718142749_
                  (lambda ()
                    (if (gx#stx-pair? _e142717142725_)
                        (let ((_e142720142739_ (gx#syntax-e _e142717142725_)))
                          (let ((_hd142721142742_ (##car _e142720142739_))
                                (_tl142722142744_ (##cdr _e142720142739_)))
                            (let ((_hd142747_ _hd142721142742_))
                              (if (gx#identifier? _hd142747_)
                                  (_step142716_ _hd142747_)
                                  (_E142719142735_)))))
                        (_E142719142735_)))))
            (_E142718142749_)))))
    (define gx#core-expand-head
      (lambda (_stx142680_)
        (letrec ((_stop?142682_
                  (lambda (_stx142684_)
                    (let* ((_e142685142692_ _stx142684_)
                           (_E142687142696_ (lambda () '#f))
                           (_E142686142710_
                            (lambda ()
                              (if (gx#stx-pair? _e142685142692_)
                                  (let ((_e142688142700_
                                         (gx#syntax-e _e142685142692_)))
                                    (let ((_hd142689142703_
                                           (##car _e142688142700_))
                                          (_tl142690142705_
                                           (##cdr _e142688142700_)))
                                      (let ((_hd142708_ _hd142689142703_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd142708_)
                                            (_E142687142696_)))))
                                  (_E142687142696_)))))
                      (_E142686142710_)))))
          (gx#core-expand*__% _stx142680_ _stop?142682_))))
    (define gx#core-expand-block__%
      (lambda (_stx142486_
               _expand-special142487_
               _begin-form142488_
               _expand-e142489_)
        (letrec ((_expand-splice142491_
                  (lambda (_hd142654_ _body142655_ _rest142656_ _r142657_)
                    (if (gx#stx-list? _body142655_)
                        (_K142495_
                         (gx#stx-foldr cons _rest142656_ _body142655_)
                         _r142657_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx142486_
                         _hd142654_))))
                 (_expand-cond-expand142492_
                  (lambda (_hd142650_ _rest142651_ _r142652_)
                    (_K142495_
                     (cons (gx#core-expand-cond-expand% _hd142650_)
                           _rest142651_)
                     _r142652_)))
                 (_expand-include142493_
                  (lambda (_hd142599_ _rest142600_ _r142601_)
                    (let* ((_e142602142612_ _hd142599_)
                           (_E142604142616_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142602142612_)))
                           (_E142603142646_
                            (lambda ()
                              (if (gx#stx-pair? _e142602142612_)
                                  (let ((_e142605142620_
                                         (gx#syntax-e _e142602142612_)))
                                    (let ((_hd142606142623_
                                           (##car _e142605142620_))
                                          (_tl142607142625_
                                           (##cdr _e142605142620_)))
                                      (if (gx#stx-pair? _tl142607142625_)
                                          (let ((_e142608142628_
                                                 (gx#syntax-e
                                                  _tl142607142625_)))
                                            (let ((_hd142609142631_
                                                   (##car _e142608142628_))
                                                  (_tl142610142633_
                                                   (##cdr _e142608142628_)))
                                              (let ((_path142636_
                                                     _hd142609142631_))
                                                (if (gx#stx-null?
                                                     _tl142610142633_)
                                                    (if (gx#stx-string?
                                                         _path142636_)
                                                        (let* ((_rpath142638_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path142636_
                         (gx#stx-source _hd142599_)))
                       (_block142640_
                        (gx#core-expand-include%__% _hd142599_ _rpath142638_))
                       (_rbody142643_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block142640_
                            _expand-special142487_
                            '#f
                            _expand-e142489_))
                         gx#current-expander-path
                         (cons _rpath142638_ (gx#current-expander-path)))))
                  (_K142495_
                   _rest142600_
                   (foldr1 cons _r142601_ _rbody142643_)))
                (_E142604142616_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E142604142616_)))))
                                          (_E142604142616_))))
                                  (_E142604142616_)))))
                      (_E142603142646_))))
                 (_expand-expression142494_
                  (lambda (_hd142595_ _rest142596_ _r142597_)
                    (_K142495_
                     _rest142596_
                     (cons (_expand-e142489_ _hd142595_) _r142597_))))
                 (_K142495_
                  (lambda (_rest142525_ _r142526_)
                    (let* ((_e142527142534_ _rest142525_)
                           (_E142529142538_
                            (lambda ()
                              (if _begin-form142488_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form142488_
                                    (reverse _r142526_))
                                   (gx#stx-source _stx142486_))
                                  _r142526_)))
                           (_E142528142591_
                            (lambda ()
                              (if (gx#stx-pair? _e142527142534_)
                                  (let ((_e142530142542_
                                         (gx#syntax-e _e142527142534_)))
                                    (let ((_hd142531142545_
                                           (##car _e142530142542_))
                                          (_tl142532142547_
                                           (##cdr _e142530142542_)))
                                      (let* ((_hd142550_ _hd142531142545_)
                                             (_rest142552_ _tl142532142547_))
                                        (if '#t
                                            (let* ((_hd142554_
                                                    (gx#core-expand-head
                                                     _hd142550_))
                                                   (_e142555142562_ _hd142554_)
                                                   (_E142557142566_
                                                    (lambda ()
                                                      (_expand-expression142494_
                                                       _hd142554_
                                                       _rest142552_
                                                       _r142526_)))
                                                   (_E142556142587_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142555142562_)
                                                          (let ((_e142558142570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142555142562_)))
                    (let ((_hd142559142573_ (##car _e142558142570_))
                          (_tl142560142575_ (##cdr _e142558142570_)))
                      (let* ((_form142578_ _hd142559142573_)
                             (_body142580_ _tl142560142575_))
                        (if '#t
                            (let ((_bind142582_
                                   (if (gx#identifier? _form142578_)
                                       (gx#resolve-identifier__0 _form142578_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind142582_)
                                  (let ((_$e142584_
                                         (unchecked-slot-ref
                                          _bind142582_
                                          'id)))
                                    (if (eq? '%#begin _$e142584_)
                                        (_expand-splice142491_
                                         _hd142554_
                                         _body142580_
                                         _rest142552_
                                         _r142526_)
                                        (if (eq? '%#cond-expand _$e142584_)
                                            (_expand-cond-expand142492_
                                             _hd142554_
                                             _rest142552_
                                             _r142526_)
                                            (if (eq? '%#include _$e142584_)
                                                (_expand-include142493_
                                                 _hd142554_
                                                 _rest142552_
                                                 _r142526_)
                                                (_expand-special142487_
                                                 _hd142554_
                                                 _K142495_
                                                 _rest142552_
                                                 _r142526_)))))
                                  (_expand-expression142494_
                                   _hd142554_
                                   _rest142552_
                                   _r142526_)))
                            (_E142557142566_)))))
                  (_E142557142566_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142556142587_))
                                            (_E142529142538_)))))
                                  (_E142529142538_)))))
                      (_E142528142591_)))))
          (let* ((_e142496142503_ _stx142486_)
                 (_E142498142507_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142496142503_)))
                 (_E142497142521_
                  (lambda ()
                    (if (gx#stx-pair? _e142496142503_)
                        (let ((_e142499142511_ (gx#syntax-e _e142496142503_)))
                          (let ((_hd142500142514_ (##car _e142499142511_))
                                (_tl142501142516_ (##cdr _e142499142511_)))
                            (let ((_body142519_ _tl142501142516_))
                              (if (gx#stx-list? _body142519_)
                                  (_K142495_ _body142519_ '())
                                  (_E142498142507_)))))
                        (_E142498142507_)))))
            (_E142497142521_)))))
    (define gx#core-expand-block__0
      (lambda (_stx142662_ _expand-special142663_)
        (let* ((_begin-form142665_ '%#begin)
               (_expand-e142667_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142662_
           _expand-special142663_
           _begin-form142665_
           _expand-e142667_))))
    (define gx#core-expand-block__1
      (lambda (_stx142669_ _expand-special142670_ _begin-form142671_)
        (let ((_expand-e142673_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142669_
           _expand-special142670_
           _begin-form142671_
           _expand-e142673_))))
    (define gx#core-expand-block
      (lambda _g147805_
        (let ((_g147804_ (##length _g147805_)))
          (cond ((##fx= _g147804_ 2)
                 (apply (lambda (_stx142662_ _expand-special142663_)
                          (gx#core-expand-block__0
                           _stx142662_
                           _expand-special142663_))
                        _g147805_))
                ((##fx= _g147804_ 3)
                 (apply (lambda (_stx142669_
                                 _expand-special142670_
                                 _begin-form142671_)
                          (gx#core-expand-block__1
                           _stx142669_
                           _expand-special142670_
                           _begin-form142671_))
                        _g147805_))
                ((##fx= _g147804_ 4)
                 (apply (lambda (_stx142675_
                                 _expand-special142676_
                                 _begin-form142677_
                                 _expand-e142678_)
                          (gx#core-expand-block__%
                           _stx142675_
                           _expand-special142676_
                           _begin-form142677_
                           _expand-e142678_))
                        _g147805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g147805_))))))
    (define gx#core-expand-block*
      (lambda (_stx142434_ _expand-special142435_)
        (let* ((_g142436142447_
                (gx#core-expand-block__1
                 _stx142434_
                 _expand-special142435_
                 '#f))
               (_E142440142451_
                (lambda () (error '"No clause matching" _g142436142447_))))
          (let ((_K142445142482_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx142434_)))
                (_K142442142468_ (lambda (_expr142466_) _expr142466_))
                (_K142441142457_
                 (lambda (_body142455_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body142455_))
                    (gx#stx-source _stx142434_)))))
            (let ((_try-match142438142478_
                   (lambda ()
                     (if (##pair? _g142436142447_)
                         (let ((_tl142444142473_ (##cdr _g142436142447_))
                               (_hd142443142471_ (##car _g142436142447_)))
                           (if (##null? _tl142444142473_)
                               (let ((_expr142476_ _hd142443142471_))
                                 (_K142442142468_ _expr142476_))
                               (let ((_body142460_ _g142436142447_))
                                 (_K142441142457_ _body142460_))))
                         (let ((_body142460_ _g142436142447_))
                           (_K142441142457_ _body142460_))))))
              (if (##null? _g142436142447_)
                  (_K142445142482_)
                  (_try-match142438142478_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx142262_)
        (letrec ((_satisfied?142264_
                  (lambda (_condition142362_)
                    (let* ((_e142363142378_ _condition142362_)
                           (_E142373142382_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142363142378_)))
                           (_E142366142401_
                            (lambda ()
                              (if (gx#stx-pair? _e142363142378_)
                                  (let ((_e142374142386_
                                         (gx#syntax-e _e142363142378_)))
                                    (let ((_hd142375142389_
                                           (##car _e142374142386_))
                                          (_tl142376142391_
                                           (##cdr _e142374142386_)))
                                      (let* ((_combinator142394_
                                              _hd142375142389_)
                                             (_body142396_ _tl142376142391_))
                                        (if (gx#stx-list? _body142396_)
                                            (let ((_$e142398_
                                                   (gx#stx-e
                                                    _combinator142394_)))
                                              (if (eq? 'not _$e142398_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?142264_
                                                        _body142396_))
                                                  (if (eq? 'and _$e142398_)
                                                      (gx#stx-andmap
                                                       _satisfied?142264_
                                                       _body142396_)
                                                      (if (eq? 'or _$e142398_)
                                                          (gx#stx-ormap
                                                           _satisfied?142264_
                                                           _body142396_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e142398_)
                      (gx#stx-andmap gx#core-resolve-identifier _body142396_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx142262_
                       _combinator142394_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E142373142382_)))))
                                  (_E142373142382_))))
                           (_E142365142424_
                            (lambda ()
                              (if (gx#stx-pair? _e142363142378_)
                                  (let ((_e142367142405_
                                         (gx#syntax-e _e142363142378_)))
                                    (let ((_hd142368142408_
                                           (##car _e142367142405_))
                                          (_tl142369142410_
                                           (##cdr _e142367142405_)))
                                      (if (and (gx#identifier?
                                                _hd142368142408_)
                                               (gx#core-identifier=?
                                                _hd142368142408_
                                                'unquote))
                                          (if (gx#stx-pair? _tl142369142410_)
                                              (let ((_e142370142413_
                                                     (gx#syntax-e
                                                      _tl142369142410_)))
                                                (let ((_hd142371142416_
                                                       (##car _e142370142413_))
                                                      (_tl142372142418_
                                                       (##cdr _e142370142413_)))
                                                  (let ((_expr142421_
                                                         _hd142371142416_))
                                                    (if (gx#stx-null?
                                                         _tl142372142418_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr142421_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E142366142401_))
                (_E142366142401_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142366142401_))
                                          (_E142366142401_))))
                                  (_E142366142401_))))
                           (_E142364142430_
                            (lambda ()
                              (let ((_id142428_ _e142363142378_))
                                (if (gx#identifier? _id142428_)
                                    (gx#core-bound-identifier?__%
                                     _id142428_
                                     gx#feature-binding?)
                                    (_E142365142424_))))))
                      (_E142364142430_))))
                 (_loop142265_
                  (lambda (_rest142295_)
                    (let* ((_e142296142304_ _rest142295_)
                           (_E142302142308_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142296142304_)))
                           (_E142298142312_
                            (lambda ()
                              (if (gx#stx-null? _e142296142304_)
                                  (if '#t '() (_E142302142308_))
                                  (_E142302142308_))))
                           (_E142297142358_
                            (lambda ()
                              (if (gx#stx-pair? _e142296142304_)
                                  (let ((_e142299142316_
                                         (gx#syntax-e _e142296142304_)))
                                    (let ((_hd142300142319_
                                           (##car _e142299142316_))
                                          (_tl142301142321_
                                           (##cdr _e142299142316_)))
                                      (let* ((_hd142324_ _hd142300142319_)
                                             (_rest142326_ _tl142301142321_))
                                        (if '#t
                                            (let* ((_e142327142334_ _hd142324_)
                                                   (_E142329142338_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e142327142334_)))
                                                   (_E142328142354_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142327142334_)
                                                          (let ((_e142330142342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142327142334_)))
                    (let ((_hd142331142345_ (##car _e142330142342_))
                          (_tl142332142347_ (##cdr _e142330142342_)))
                      (let* ((_condition142350_ _hd142331142345_)
                             (_body142352_ _tl142332142347_))
                        (if '#t
                            (if (gx#stx-eq? _condition142350_ 'else)
                                (if (gx#stx-null? _rest142326_)
                                    _body142352_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx142262_
                                     _hd142324_))
                                (if (_satisfied?142264_ _condition142350_)
                                    _body142352_
                                    (_loop142265_ _rest142326_)))
                            (_E142329142338_)))))
                  (_E142329142338_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142328142354_))
                                            (_E142298142312_)))))
                                  (_E142298142312_)))))
                      (_E142297142358_)))))
          (let* ((_e142266142273_ _stx142262_)
                 (_E142268142277_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142266142273_)))
                 (_E142267142291_
                  (lambda ()
                    (if (gx#stx-pair? _e142266142273_)
                        (let ((_e142269142281_ (gx#syntax-e _e142266142273_)))
                          (let ((_hd142270142284_ (##car _e142269142281_))
                                (_tl142271142286_ (##cdr _e142269142281_)))
                            (let ((_clauses142289_ _tl142271142286_))
                              (if (gx#stx-list? _clauses142289_)
                                  (gx#core-cons
                                   'begin
                                   (_loop142265_ _clauses142289_))
                                  (_E142268142277_)))))
                        (_E142268142277_)))))
            (_E142267142291_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx142205_ _rpath142206_)
        (let* ((_e142207142217_ _stx142205_)
               (_E142209142221_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e142207142217_)))
               (_E142208142248_
                (lambda ()
                  (if (gx#stx-pair? _e142207142217_)
                      (let ((_e142210142225_ (gx#syntax-e _e142207142217_)))
                        (let ((_hd142211142228_ (##car _e142210142225_))
                              (_tl142212142230_ (##cdr _e142210142225_)))
                          (if (gx#stx-pair? _tl142212142230_)
                              (let ((_e142213142233_
                                     (gx#syntax-e _tl142212142230_)))
                                (let ((_hd142214142236_
                                       (##car _e142213142233_))
                                      (_tl142215142238_
                                       (##cdr _e142213142233_)))
                                  (let ((_path142241_ _hd142214142236_))
                                    (if (gx#stx-null? _tl142215142238_)
                                        (if (gx#stx-string? _path142241_)
                                            (let ((_rpath142246_
                                                   (let ((_$e142243_
                                                          _rpath142206_))
                                                     (if _$e142243_
                                                         _$e142243_
                                                         (gx#core-resolve-path__%
                                                          _path142241_
                                                          (gx#stx-source
                                                           _stx142205_))))))
                                              (if (member _rpath142246_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx142205_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath142246_))
                                                    (gx#stx-source
                                                     _stx142205_)))))
                                            (_E142209142221_))
                                        (_E142209142221_)))))
                              (_E142209142221_))))
                      (_E142209142221_)))))
          (_E142208142248_))))
    (define gx#core-expand-include%__0
      (lambda (_stx142255_)
        (let ((_rpath142257_ '#f))
          (gx#core-expand-include%__% _stx142255_ _rpath142257_))))
    (define gx#core-expand-include%
      (lambda _g147807_
        (let ((_g147806_ (##length _g147807_)))
          (cond ((##fx= _g147806_ 1)
                 (apply (lambda (_stx142255_)
                          (gx#core-expand-include%__0 _stx142255_))
                        _g147807_))
                ((##fx= _g147806_ 2)
                 (apply (lambda (_stx142259_ _rpath142260_)
                          (gx#core-expand-include%__%
                           _stx142259_
                           _rpath142260_))
                        _g147807_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g147807_))))))
    (define gx#core-apply-expander__%
      (lambda (_K142174_ _stx142175_ _method142176_)
        (if (procedure? _K142174_)
            (let ((_$e142178_ (gx#stx-source _stx142175_)))
              (if _$e142178_
                  ((lambda (_g142180142182_)
                     (gx#stx-wrap-source
                      (_K142174_ _stx142175_)
                      _g142180142182_))
                   _$e142178_)
                  (_K142174_ _stx142175_)))
            (let ((_$e142185_ (bound-method-ref _K142174_ _method142176_)))
              (if _$e142185_
                  ((lambda (_g142187142189_)
                     (gx#core-apply-expander__%
                      _g142187142189_
                      _stx142175_
                      _method142176_))
                   _$e142185_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx142175_
                   _method142176_))))))
    (define gx#core-apply-expander__0
      (lambda (_K142195_ _stx142196_)
        (let ((_method142198_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K142195_ _stx142196_ _method142198_))))
    (define gx#core-apply-expander
      (lambda _g147809_
        (let ((_g147808_ (##length _g147809_)))
          (cond ((##fx= _g147808_ 2)
                 (apply (lambda (_K142195_ _stx142196_)
                          (gx#core-apply-expander__0 _K142195_ _stx142196_))
                        _g147809_))
                ((##fx= _g147808_ 3)
                 (apply (lambda (_K142200_ _stx142201_ _method142202_)
                          (gx#core-apply-expander__%
                           _K142200_
                           _stx142201_
                           _method142202_))
                        _g147809_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g147809_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self142170_ _stx142171_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx142171_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self142023_ _stx142024_)
        (let* ((_self142025142031_ _self142023_)
               (_E142027142035_
                (lambda () (error '"No clause matching" _self142025142031_)))
               (_K142028142040_
                (lambda (_K142038_)
                  (gx#core-apply-expander__0 _K142038_ _stx142024_))))
          (if (class-instance? gx#macro-expander::t _self142025142031_)
              (let* ((_e142029142043_
                      (unchecked-slot-ref _self142025142031_ 'e))
                     (_K142046_ _e142029142043_))
                (_K142028142040_ _K142046_))
              (_E142027142035_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self141876_ _stx141877_)
        (if (gx#sealed-syntax? _stx141877_)
            _stx141877_
            (let* ((_self141878141884_ _self141876_)
                   (_E141880141888_
                    (lambda ()
                      (error '"No clause matching" _self141878141884_)))
                   (_K141881141893_
                    (lambda (_K141891_)
                      (gx#core-apply-expander__0 _K141891_ _stx141877_))))
              (if (class-instance? gx#core-expander::t _self141878141884_)
                  (let* ((_e141882141896_
                          (unchecked-slot-ref _self141878141884_ 'e))
                         (_K141899_ _e141882141896_))
                    (_K141881141893_ _K141899_))
                  (_E141880141888_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self141738_ _stx141739_ _top?141740_)
        (if (_top?141740_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self141738_ _stx141739_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx141739_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self141745_ _stx141746_)
        (let ((_top?141748_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self141745_
           _stx141746_
           _top?141748_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g147811_
        (let ((_g147810_ (##length _g147811_)))
          (cond ((##fx= _g147810_ 2)
                 (apply (lambda (_self141745_ _stx141746_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self141745_
                           _stx141746_))
                        _g147811_))
                ((##fx= _g147810_ 3)
                 (apply (lambda (_self141750_ _stx141751_ _top?141752_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self141750_
                           _stx141751_
                           _top?141752_))
                        _g147811_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g147811_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self141612_ _stx141613_)
        (gx#top-special-form::apply-macro-expander__%
         _self141612_
         _stx141613_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self141437_ _stx141438_)
        (let* ((_self141439141445_ _self141437_)
               (_E141441141449_
                (lambda () (error '"No clause matching" _self141439141445_)))
               (_K141442141482_
                (lambda (_id141452_)
                  (let* ((_e141453141460_ _stx141438_)
                         (_E141455141464_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e141453141460_)))
                         (_E141454141478_
                          (lambda ()
                            (if (gx#stx-pair? _e141453141460_)
                                (let ((_e141456141468_
                                       (gx#syntax-e _e141453141460_)))
                                  (let ((_hd141457141471_
                                         (##car _e141456141468_))
                                        (_tl141458141473_
                                         (##cdr _e141456141468_)))
                                    (let ((_body141476_ _tl141458141473_))
                                      (if '#t
                                          (gx#core-cons
                                           _id141452_
                                           _body141476_)
                                          (_E141455141464_)))))
                                (_E141455141464_)))))
                    (_E141454141478_)))))
          (if (class-instance? gx#rename-macro-expander::t _self141439141445_)
              (let* ((_e141443141485_
                      (unchecked-slot-ref _self141439141445_ 'e))
                     (_id141488_ _e141443141485_))
                (_K141442141482_ _id141488_))
              (_E141441141449_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self141263_ _stx141264_ _method141265_)
        (let* ((_self141266141274_ _self141263_)
               (_E141268141278_
                (lambda () (error '"No clause matching" _self141266141274_)))
               (_K141269141285_
                (lambda (_phi141281_ _ctx141282_ _K141283_)
                  (gx#core-apply-user-macro
                   _K141283_
                   _stx141264_
                   _ctx141282_
                   _phi141281_
                   _method141265_))))
          (if (class-instance? gx#user-expander::t _self141266141274_)
              (let* ((_e141270141288_
                      (unchecked-slot-ref _self141266141274_ 'e))
                     (_K141291_ _e141270141288_)
                     (_e141271141293_
                      (unchecked-slot-ref _self141266141274_ 'context))
                     (_ctx141296_ _e141271141293_)
                     (_e141272141298_
                      (unchecked-slot-ref _self141266141274_ 'phi))
                     (_phi141301_ _e141272141298_))
                (_K141269141285_ _phi141301_ _ctx141296_ _K141291_))
              (_E141268141278_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self141306_ _stx141307_)
        (let ((_method141309_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self141306_
           _stx141307_
           _method141309_))))
    (define gx#core-apply-user-expander
      (lambda _g147813_
        (let ((_g147812_ (##length _g147813_)))
          (cond ((##fx= _g147812_ 2)
                 (apply (lambda (_self141306_ _stx141307_)
                          (gx#core-apply-user-expander__0
                           _self141306_
                           _stx141307_))
                        _g147813_))
                ((##fx= _g147812_ 3)
                 (apply (lambda (_self141311_ _stx141312_ _method141313_)
                          (gx#core-apply-user-expander__%
                           _self141311_
                           _stx141312_
                           _method141313_))
                        _g147813_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g147813_))))))
    (define gx#core-apply-user-macro
      (lambda (_K141253_ _stx141254_ _ctx141255_ _phi141256_ _method141257_)
        (let ((_mark141259_
               (let ((__obj147784
                      (##structure gx#expander-mark::t '#f '#f '#f '#f)))
                 (class-instance-init!
                  __obj147784
                  '#f
                  _ctx141255_
                  _phi141256_
                  _stx141254_)
                 __obj147784)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K141253_
               (gx#stx-apply-mark _stx141254_ _mark141259_)
               _method141257_)
              _mark141259_))
           gx#current-expander-marks
           (cons _mark141259_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx141105_ _phi141106_ _ctx141107_)
        (let _lp141109_ ((_bind141111_
                          (gx#core-resolve-identifier__%
                           _stx141105_
                           _phi141106_
                           _ctx141107_)))
          (if (##structure-direct-instance-of?
               _bind141111_
               'gx#import-binding::t)
              (_lp141109_
               (##unchecked-structure-ref
                _bind141111_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind141111_
                   'gx#alias-binding::t)
                  (_lp141109_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind141111_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi141106_
                    _ctx141107_))
                  _bind141111_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx141116_)
        (let* ((_phi141118_ (gx#current-expander-phi))
               (_ctx141120_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141116_ _phi141118_ _ctx141120_))))
    (define gx#resolve-identifier__1
      (lambda (_stx141122_ _phi141123_)
        (let ((_ctx141125_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141122_ _phi141123_ _ctx141125_))))
    (define gx#resolve-identifier
      (lambda _g147815_
        (let ((_g147814_ (##length _g147815_)))
          (cond ((##fx= _g147814_ 1)
                 (apply (lambda (_stx141116_)
                          (gx#resolve-identifier__0 _stx141116_))
                        _g147815_))
                ((##fx= _g147814_ 2)
                 (apply (lambda (_stx141122_ _phi141123_)
                          (gx#resolve-identifier__1 _stx141122_ _phi141123_))
                        _g147815_))
                ((##fx= _g147814_ 3)
                 (apply (lambda (_stx141127_ _phi141128_ _ctx141129_)
                          (gx#resolve-identifier__%
                           _stx141127_
                           _phi141128_
                           _ctx141129_))
                        _g147815_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g147815_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx141063_ _val141064_ _rebind?141065_ _phi141066_ _ctx141067_)
        (let ((_rebind?141069_
               (if (not _rebind?141065_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?141065_) _rebind?141065_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx141063_)
           _val141064_
           _rebind?141069_
           _phi141066_
           _ctx141067_))))
    (define gx#bind-identifier!__0
      (lambda (_stx141074_ _val141075_)
        (let* ((_rebind?141077_ '#f)
               (_phi141079_ (gx#current-expander-phi))
               (_ctx141081_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141074_
           _val141075_
           _rebind?141077_
           _phi141079_
           _ctx141081_))))
    (define gx#bind-identifier!__1
      (lambda (_stx141083_ _val141084_ _rebind?141085_)
        (let* ((_phi141087_ (gx#current-expander-phi))
               (_ctx141089_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141083_
           _val141084_
           _rebind?141085_
           _phi141087_
           _ctx141089_))))
    (define gx#bind-identifier!__2
      (lambda (_stx141091_ _val141092_ _rebind?141093_ _phi141094_)
        (let ((_ctx141096_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141091_
           _val141092_
           _rebind?141093_
           _phi141094_
           _ctx141096_))))
    (define gx#bind-identifier!
      (lambda _g147817_
        (let ((_g147816_ (##length _g147817_)))
          (cond ((##fx= _g147816_ 2)
                 (apply (lambda (_stx141074_ _val141075_)
                          (gx#bind-identifier!__0 _stx141074_ _val141075_))
                        _g147817_))
                ((##fx= _g147816_ 3)
                 (apply (lambda (_stx141083_ _val141084_ _rebind?141085_)
                          (gx#bind-identifier!__1
                           _stx141083_
                           _val141084_
                           _rebind?141085_))
                        _g147817_))
                ((##fx= _g147816_ 4)
                 (apply (lambda (_stx141091_
                                 _val141092_
                                 _rebind?141093_
                                 _phi141094_)
                          (gx#bind-identifier!__2
                           _stx141091_
                           _val141092_
                           _rebind?141093_
                           _phi141094_))
                        _g147817_))
                ((##fx= _g147816_ 5)
                 (apply (lambda (_stx141098_
                                 _val141099_
                                 _rebind?141100_
                                 _phi141101_
                                 _ctx141102_)
                          (gx#bind-identifier!__%
                           _stx141098_
                           _val141099_
                           _rebind?141100_
                           _phi141101_
                           _ctx141102_))
                        _g147817_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g147817_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx141035_ _phi141036_ _ctx141037_)
        (let _lp141039_ ((_e141041_ _stx141035_)
                         (_marks141042_ (gx#current-expander-marks)))
          (if (symbol? _e141041_)
              (gx#core-resolve-binding
               _e141041_
               _phi141036_
               _phi141036_
               _ctx141037_
               (reverse _marks141042_))
              (if (gx#identifier-quote? _e141041_)
                  (gx#core-resolve-binding
                   (unchecked-slot-ref _e141041_ 'e)
                   _phi141036_
                   '0
                   (##unchecked-structure-ref
                    _e141041_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e141041_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e141041_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (unchecked-slot-ref _e141041_ 'e)
                       _phi141036_
                       _phi141036_
                       _ctx141037_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e141041_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks141042_))
                      (if (##structure-direct-instance-of?
                           _e141041_
                           'gx#syntax-wrap::t)
                          (_lp141039_
                           (unchecked-slot-ref _e141041_ 'e)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e141041_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks141042_))
                          (if (class-instance? gx#AST::t _e141041_)
                              (_lp141039_
                               (unchecked-slot-ref _e141041_ 'e)
                               _marks141042_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx141035_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx141047_)
        (let* ((_phi141049_ (gx#current-expander-phi))
               (_ctx141051_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141047_
           _phi141049_
           _ctx141051_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx141053_ _phi141054_)
        (let ((_ctx141056_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141053_
           _phi141054_
           _ctx141056_))))
    (define gx#core-resolve-identifier
      (lambda _g147819_
        (let ((_g147818_ (##length _g147819_)))
          (cond ((##fx= _g147818_ 1)
                 (apply (lambda (_stx141047_)
                          (gx#core-resolve-identifier__0 _stx141047_))
                        _g147819_))
                ((##fx= _g147818_ 2)
                 (apply (lambda (_stx141053_ _phi141054_)
                          (gx#core-resolve-identifier__1
                           _stx141053_
                           _phi141054_))
                        _g147819_))
                ((##fx= _g147818_ 3)
                 (apply (lambda (_stx141058_ _phi141059_ _ctx141060_)
                          (gx#core-resolve-identifier__%
                           _stx141058_
                           _phi141059_
                           _ctx141060_))
                        _g147819_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g147819_))))))
    (define gx#core-resolve-binding
      (lambda (_id140948_
               _phi140949_
               _src-phi140950_
               _ctx140951_
               _marks140952_)
        (letrec ((_resolve140954_
                  (lambda (_ctx141022_ _src-phi141023_ _key141024_)
                    (let _lp141026_ ((_ctx141028_
                                      (gx#core-context-shift
                                       _ctx141022_
                                       _phi140949_))
                                     (_dphi141029_
                                      (fx- _phi140949_ _src-phi141023_)))
                      (let ((_$e141031_
                             (gx#core-context-resolve
                              _ctx141028_
                              _key141024_)))
                        (if _$e141031_
                            (values _$e141031_)
                            (if (fxzero? _dphi141029_)
                                '#f
                                (if (fxpositive? _dphi141029_)
                                    (_lp141026_
                                     (gx#core-context-shift _ctx141028_ '-1)
                                     (fx- _dphi141029_ '1))
                                    (_lp141026_
                                     (gx#core-context-shift _ctx141028_ '1)
                                     (fx+ _dphi141029_ '1))))))))))
          (let _lp140956_ ((_ctx140958_ _ctx140951_)
                           (_src-phi140959_ _src-phi140950_)
                           (_rest140960_ _marks140952_))
            (let* ((_rest140961140969_ _rest140960_)
                   (_else140963140977_
                    (lambda ()
                      (_resolve140954_
                       _ctx140958_
                       _src-phi140959_
                       _id140948_)))
                   (_K140965141010_
                    (lambda (_rest140980_ _hd140981_)
                      (let* ((_hd140982140988_ _hd140981_)
                             (_E140984140992_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd140982140988_)))
                             (_K140985141002_
                              (lambda (_subst140995_)
                                (let ((_$e140999_
                                       (let ((_key140997_
                                              (if _subst140995_
                                                  (table-ref
                                                   _subst140995_
                                                   _id140948_
                                                   '#f)
                                                  '#f)))
                                         (if _key140997_
                                             (_resolve140954_
                                              _ctx140958_
                                              _src-phi140959_
                                              _key140997_)
                                             '#f))))
                                  (if _$e140999_
                                      _$e140999_
                                      (_lp140956_
                                       (unchecked-slot-ref _hd140981_ 'context)
                                       (unchecked-slot-ref _hd140981_ 'phi)
                                       _rest140980_))))))
                        (if (class-instance?
                             gx#expander-mark::t
                             _hd140982140988_)
                            (let* ((_e140986141005_
                                    (unchecked-slot-ref
                                     _hd140982140988_
                                     'subst))
                                   (_subst141008_ _e140986141005_))
                              (_K140985141002_ _subst141008_))
                            (_E140984140992_))))))
              (if (##pair? _rest140961140969_)
                  (let ((_hd140966141013_ (##car _rest140961140969_))
                        (_tl140967141015_ (##cdr _rest140961140969_)))
                    (let* ((_hd141018_ _hd140966141013_)
                           (_rest141020_ _tl140967141015_))
                      (_K140965141010_ _rest141020_ _hd141018_)))
                  (_else140963140977_)))))))
    (define gx#core-bind!__%
      (lambda (_key140824_ _val140825_ _rebind?140826_ _phi140827_ _ctx140828_)
        (letrec ((_update-binding140830_
                  (lambda (_xval140901_)
                    (if (or (_rebind?140826_
                             _ctx140828_
                             _xval140901_
                             _val140825_)
                            (and (##structure-direct-instance-of?
                                  _xval140901_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval140901_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (class-instance?
                                           gx#binding::t
                                           _val140825_)
                                          (not (##structure-direct-instance-of?
                                                _val140825_
                                                'gx#import-binding::t)))))
                            (and (class-instance?
                                  gx#extern-binding::t
                                  _xval140901_)
                                 (class-instance?
                                  gx#runtime-binding::t
                                  _val140825_)
                                 (eq? (unchecked-slot-ref _val140825_ 'id)
                                      (unchecked-slot-ref _xval140901_ 'id))))
                        _val140825_
                        (if (and (##structure-direct-instance-of?
                                  _val140825_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val140825_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (class-instance?
                                           gx#binding::t
                                           _xval140901_)
                                          (eq? (unchecked-slot-ref
                                                _val140825_
                                                'id)
                                               (unchecked-slot-ref
                                                _xval140901_
                                                'id)))))
                            _xval140901_
                            (if (and (##structure-direct-instance-of?
                                      _val140825_
                                      'gx#import-binding::t)
                                     (class-instance?
                                      gx#binding::t
                                      _xval140901_))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key140824_
                                 (cons (unchecked-slot-ref _val140825_ 'id)
                                       (cons (let ((__obj147785
                                                    (##unchecked-structure-ref
                                                     _val140825_
                                                     '5
                                                     gx#import-binding::t
                                                     '#f)))
                                               (if (##structure-direct-instance-of?
                                                    __obj147785
                                                    'gx#expander-context::t)
                                                   (##unchecked-structure-ref
                                                    __obj147785
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   (class-slot-ref
                                                    gx#expander-context::t
                                                    __obj147785
                                                    'id)))
                                             '()))
                                 (cons (unchecked-slot-ref _xval140901_ 'id)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval140901_
                                                  'gx#import-binding::t)
                                                 (let ((__obj147786
                                                        (##unchecked-structure-ref
                                                         _xval140901_
                                                         '5
                                                         gx#import-binding::t
                                                         '#f)))
                                                   (if (##structure-direct-instance-of?
                                                        __obj147786
                                                        'gx#expander-context::t)
                                                       (##unchecked-structure-ref
                                                        __obj147786
                                                        '1
                                                        gx#expander-context::t
                                                        '#f)
                                                       (class-slot-ref
                                                        gx#expander-context::t
                                                        __obj147786
                                                        'id)))
                                                 _xval140901_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key140824_
                                 _val140825_
                                 _xval140901_))))))
                 (_gensubst140831_
                  (lambda (_subst140896_ _id140897_)
                    (let ((_eid140899_
                           (gensym (if (uninterned-symbol? _id140897_)
                                       '%
                                       _id140897_))))
                      (table-set! _subst140896_ _id140897_ _eid140899_)
                      _eid140899_)))
                 (_subst!140832_
                  (lambda (_key140834_)
                    (let* ((_key140835140843_ _key140834_)
                           (_else140837140851_ (lambda () _key140834_))
                           (_K140839140884_
                            (lambda (_mark140854_ _id140855_)
                              (let* ((_mark140856140862_ _mark140854_)
                                     (_E140858140866_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark140856140862_)))
                                     (_K140859140876_
                                      (lambda (_subst140869_)
                                        (if (not _subst140869_)
                                            (let ((_subst140871_
                                                   (make-table 'test: eq?)))
                                              (unchecked-slot-set!
                                               _mark140854_
                                               'subst
                                               _subst140871_)
                                              (_gensubst140831_
                                               _subst140871_
                                               _id140855_))
                                            (let ((_$e140873_
                                                   (table-ref
                                                    _subst140869_
                                                    _id140855_
                                                    '#f)))
                                              (if _$e140873_
                                                  (values _$e140873_)
                                                  (_gensubst140831_
                                                   _subst140869_
                                                   _id140855_)))))))
                                (if (class-instance?
                                     gx#expander-mark::t
                                     _mark140856140862_)
                                    (let* ((_e140860140879_
                                            (unchecked-slot-ref
                                             _mark140856140862_
                                             'subst))
                                           (_subst140882_ _e140860140879_))
                                      (_K140859140876_ _subst140882_))
                                    (_E140858140866_))))))
                      (if (##pair? _key140835140843_)
                          (let ((_hd140840140887_ (##car _key140835140843_))
                                (_tl140841140889_ (##cdr _key140835140843_)))
                            (let* ((_id140892_ _hd140840140887_)
                                   (_mark140894_ _tl140841140889_))
                              (_K140839140884_ _mark140894_ _id140892_)))
                          (_else140837140851_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx140828_ _phi140827_)
           (_subst!140832_ _key140824_)
           _val140825_
           _update-binding140830_))))
    (define gx#core-bind!__0
      (lambda (_key140918_ _val140919_)
        (let* ((_rebind?140921_ false)
               (_phi140923_ (gx#current-expander-phi))
               (_ctx140925_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key140918_
           _val140919_
           _rebind?140921_
           _phi140923_
           _ctx140925_))))
    (define gx#core-bind!__1
      (lambda (_key140927_ _val140928_ _rebind?140929_)
        (let* ((_phi140931_ (gx#current-expander-phi))
               (_ctx140933_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key140927_
           _val140928_
           _rebind?140929_
           _phi140931_
           _ctx140933_))))
    (define gx#core-bind!__2
      (lambda (_key140935_ _val140936_ _rebind?140937_ _phi140938_)
        (let ((_ctx140940_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key140935_
           _val140936_
           _rebind?140937_
           _phi140938_
           _ctx140940_))))
    (define gx#core-bind!
      (lambda _g147821_
        (let ((_g147820_ (##length _g147821_)))
          (cond ((##fx= _g147820_ 2)
                 (apply (lambda (_key140918_ _val140919_)
                          (gx#core-bind!__0 _key140918_ _val140919_))
                        _g147821_))
                ((##fx= _g147820_ 3)
                 (apply (lambda (_key140927_ _val140928_ _rebind?140929_)
                          (gx#core-bind!__1
                           _key140927_
                           _val140928_
                           _rebind?140929_))
                        _g147821_))
                ((##fx= _g147820_ 4)
                 (apply (lambda (_key140935_
                                 _val140936_
                                 _rebind?140937_
                                 _phi140938_)
                          (gx#core-bind!__2
                           _key140935_
                           _val140936_
                           _rebind?140937_
                           _phi140938_))
                        _g147821_))
                ((##fx= _g147820_ 5)
                 (apply (lambda (_key140942_
                                 _val140943_
                                 _rebind?140944_
                                 _phi140945_
                                 _ctx140946_)
                          (gx#core-bind!__%
                           _key140942_
                           _val140943_
                           _rebind?140944_
                           _phi140945_
                           _ctx140946_))
                        _g147821_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g147821_))))))
    (define gx#core-identifier-key
      (lambda (_stx140758_)
        (if (symbol? _stx140758_)
            (let* ((_g140759140767_ (gx#current-expander-marks))
                   (_else140761140775_ (lambda () _stx140758_))
                   (_K140763140780_
                    (lambda (_hd140778_) (cons _stx140758_ _hd140778_))))
              (if (##pair? _g140759140767_)
                  (let* ((_hd140764140783_ (##car _g140759140767_))
                         (_hd140786_ _hd140764140783_))
                    (_K140763140780_ _hd140786_))
                  (_else140761140775_)))
            (if (gx#identifier? _stx140758_)
                (let* ((_id140788_ (gx#syntax-local-unwrap _stx140758_))
                       (_eid140790_ (gx#stx-e _id140788_))
                       (_marks140792_ (gx#stx-identifier-marks* _id140788_)))
                  (let* ((_marks140794140802_ _marks140792_)
                         (_else140796140810_ (lambda () _eid140790_))
                         (_K140798140815_
                          (lambda (_hd140813_) (cons _eid140790_ _hd140813_))))
                    (if (##pair? _marks140794140802_)
                        (let* ((_hd140799140818_ (##car _marks140794140802_))
                               (_hd140821_ _hd140799140818_))
                          (_K140798140815_ _hd140821_))
                        (_else140796140810_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx140758_)))))
    (define gx#core-context-shift
      (lambda (_ctx140703_ _phi140704_)
        (letrec ((_make-phi140706_
                  (lambda (_super140756_)
                    (let ((__obj147787
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj147787
                       (gensym 'phi)
                       _super140756_)
                      __obj147787)))
                 (_make-phi/up140707_
                  (lambda (_ctx140751_ _super140752_)
                    (let ((_ctx+1140754_ (_make-phi140706_ _super140752_)))
                      (unchecked-slot-set! _ctx140751_ 'up _ctx+1140754_)
                      (unchecked-slot-set! _ctx+1140754_ 'down _ctx140751_)
                      _ctx+1140754_)))
                 (_make-phi/down140708_
                  (lambda (_ctx140746_ _super140747_)
                    (let ((_ctx-1140749_ (_make-phi140706_ _super140747_)))
                      (unchecked-slot-set! _ctx-1140749_ 'up _ctx140746_)
                      (unchecked-slot-set! _ctx140746_ 'down _ctx-1140749_)
                      _ctx-1140749_)))
                 (_shift140709_
                  (lambda (_ctx140730_
                           _delta140731_
                           _make-delta-context140732_
                           _phi140733_
                           _K140734_)
                    (let ((_$e140736_ (unchecked-slot-ref _ctx140730_ 'super)))
                      (if _$e140736_
                          ((lambda (_super140739_)
                             (let* ((_super140741_
                                     (_K140734_ _super140739_ _delta140731_))
                                    (_ctx+d140743_
                                     (_make-delta-context140732_
                                      _ctx140730_
                                      _super140741_)))
                               (_K140734_
                                _ctx+d140743_
                                (fx- _phi140733_ _delta140731_))))
                           _$e140736_)
                          (error '"Bad context" _ctx140730_))))))
          (let _K140711_ ((_ctx140713_ _ctx140703_) (_phi140714_ _phi140704_))
            (if (fxzero? _phi140714_)
                _ctx140713_
                (if (fx> (##vector-length _ctx140713_) '3)
                    (if (fxpositive? _phi140714_)
                        (let ((_$e140716_
                               (unchecked-slot-ref _ctx140713_ 'up)))
                          (if _$e140716_
                              ((lambda (_g140718140720_)
                                 (_K140711_
                                  _g140718140720_
                                  (fx- _phi140714_ '1)))
                               _$e140716_)
                              (_shift140709_
                               _ctx140713_
                               '1
                               _make-phi/up140707_
                               _phi140714_
                               _K140711_)))
                        (let ((_$e140723_
                               (unchecked-slot-ref _ctx140713_ 'down)))
                          (if _$e140723_
                              ((lambda (_g140725140727_)
                                 (_K140711_
                                  _g140725140727_
                                  (fx+ _phi140714_ '1)))
                               _$e140723_)
                              (_shift140709_
                               _ctx140713_
                               '-1
                               _make-phi/down140708_
                               _phi140714_
                               _K140711_))))
                    _ctx140713_))))))
    (define gx#core-context-get
      (lambda (_ctx140700_ _key140701_)
        (table-ref (unchecked-slot-ref _ctx140700_ 'table) _key140701_ '#f)))
    (define gx#core-context-put!
      (lambda (_ctx140696_ _key140697_ _val140698_)
        (table-set!
         (unchecked-slot-ref _ctx140696_ 'table)
         _key140697_
         _val140698_)))
    (define gx#core-context-resolve
      (lambda (_ctx140683_ _key140684_)
        (let _lp140686_ ((_ctx140688_ _ctx140683_))
          (let ((_$e140690_ (gx#core-context-get _ctx140688_ _key140684_)))
            (if _$e140690_
                (values _$e140690_)
                (let ((_$e140693_
                       (if (fx> (##vector-length _ctx140688_) '3)
                           (unchecked-slot-ref _ctx140688_ 'super)
                           '#f)))
                  (if _$e140693_ (_lp140686_ _$e140693_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx140673_ _key140674_ _val140675_ _rebind140676_)
        (let ((_$e140678_ (gx#core-context-get _ctx140673_ _key140674_)))
          (if _$e140678_
              ((lambda (_xval140681_)
                 (gx#core-context-put!
                  _ctx140673_
                  _key140674_
                  (_rebind140676_ _xval140681_)))
               _$e140678_)
              (gx#core-context-put! _ctx140673_ _key140674_ _val140675_)))))
    (define gx#core-context-top__%
      (lambda (_ctx140651_ _stop?140652_)
        (let _lp140654_ ((_ctx140656_ _ctx140651_))
          (if (_stop?140652_ _ctx140656_)
              _ctx140656_
              (if (class-instance? gx#phi-context::t _ctx140656_)
                  (_lp140654_ (unchecked-slot-ref _ctx140656_ 'super))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx140662_ (gx#current-expander-context))
               (_stop?140664_ gx#top-context?))
          (gx#core-context-top__% _ctx140662_ _stop?140664_))))
    (define gx#core-context-top__1
      (lambda (_ctx140666_)
        (let ((_stop?140668_ gx#top-context?))
          (gx#core-context-top__% _ctx140666_ _stop?140668_))))
    (define gx#core-context-top
      (lambda _g147823_
        (let ((_g147822_ (##length _g147823_)))
          (cond ((##fx= _g147822_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g147823_))
                ((##fx= _g147822_ 1)
                 (apply (lambda (_ctx140666_)
                          (gx#core-context-top__1 _ctx140666_))
                        _g147823_))
                ((##fx= _g147822_ 2)
                 (apply (lambda (_ctx140670_ _stop?140671_)
                          (gx#core-context-top__% _ctx140670_ _stop?140671_))
                        _g147823_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g147823_))))))
    (define gx#core-context-root__%
      (lambda (_ctx140636_)
        (let _lp140638_ ((_ctx140640_ _ctx140636_))
          (if (class-instance? gx#phi-context::t _ctx140640_)
              (_lp140638_ (unchecked-slot-ref _ctx140640_ 'super))
              _ctx140640_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx140646_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx140646_))))
    (define gx#core-context-root
      (lambda _g147825_
        (let ((_g147824_ (##length _g147825_)))
          (cond ((##fx= _g147824_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g147825_))
                ((##fx= _g147824_ 1)
                 (apply (lambda (_ctx140648_)
                          (gx#core-context-root__% _ctx140648_))
                        _g147825_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g147825_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx140617_ . __140614140618_)
        (let ((_$e140621_ (gx#current-expander-allow-rebind?)))
          (if _$e140621_
              _$e140621_
              (if (class-instance? gx#top-context::t _ctx140617_)
                  (if (not (class-instance? gx#module-context::t _ctx140617_))
                      (not (class-instance? gx#prelude-context::t _ctx140617_))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx140628_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx140628_))))
    (define gx#core-context-rebind?
      (lambda _g147827_
        (let ((_g147826_ (##length _g147827_)))
          (cond ((##fx= _g147826_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g147827_))
                ((##fx= _g147826_ 1)
                 (apply (lambda (_ctx140630_)
                          (gx#core-context-rebind?__% _ctx140630_))
                        _g147827_))
                ((##fx>= _g147826_ 1)
                 (apply gx#core-context-rebind?__% _g147827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g147827_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx140600_)
        (let ((_$e140602_ (gx#core-context-top__1 _ctx140600_)))
          (if _$e140602_
              ((lambda (_ctx140605_)
                 (if (class-instance? gx#module-context::t _ctx140605_)
                     (unchecked-slot-ref _ctx140605_ 'ns)
                     '#f))
               _$e140602_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx140611_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx140611_))))
    (define gx#core-context-namespace
      (lambda _g147829_
        (let ((_g147828_ (##length _g147829_)))
          (cond ((##fx= _g147828_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g147829_))
                ((##fx= _g147828_ 1)
                 (apply (lambda (_ctx140613_)
                          (gx#core-context-namespace__% _ctx140613_))
                        _g147829_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g147829_))))))
    (define gx#expander-binding?__%
      (lambda (_bind140586_ _is?140587_)
        (if (##structure-direct-instance-of?
             _bind140586_
             'gx#syntax-binding::t)
            (_is?140587_
             (##unchecked-structure-ref
              _bind140586_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind140592_)
        (let ((_is?140594_ gx#expander?))
          (gx#expander-binding?__% _bind140592_ _is?140594_))))
    (define gx#expander-binding?
      (lambda _g147831_
        (let ((_g147830_ (##length _g147831_)))
          (cond ((##fx= _g147830_ 1)
                 (apply (lambda (_bind140592_)
                          (gx#expander-binding?__0 _bind140592_))
                        _g147831_))
                ((##fx= _g147830_ 2)
                 (apply (lambda (_bind140596_ _is?140597_)
                          (gx#expander-binding?__% _bind140596_ _is?140597_))
                        _g147831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g147831_))))))
    (define gx#core-expander-binding?
      (lambda (_bind140583_)
        (gx#expander-binding?__% _bind140583_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind140581_)
        (gx#expander-binding?__% _bind140581_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind140575_)
        (letrec ((_direct-special-form?140577_
                  (lambda (_obj140579_)
                    (##structure-direct-instance-of?
                     _obj140579_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind140575_
           _direct-special-form?140577_))))
    (define gx#special-form-binding?
      (lambda (_bind140573_)
        (gx#expander-binding?__% _bind140573_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind140564_)
        (letrec ((_feature?140566_
                  (lambda (_e140568_)
                    (let ((_$e140570_
                           (class-instance? gx#feature-expander::t _e140568_)))
                      (if _$e140570_
                          _$e140570_
                          (class-instance? gx#module-context::t _e140568_))))))
          (gx#expander-binding?__% _bind140564_ _feature?140566_))))
    (define gx#private-feature-binding?
      (lambda (_bind140562_)
        (gx#expander-binding?__% _bind140562_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id140549_ _bound?140550_)
        (if (gx#identifier? _id140549_)
            (_bound?140550_ (gx#resolve-identifier__0 _id140549_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id140555_)
        (let ((_bound?140557_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id140555_ _bound?140557_))))
    (define gx#core-bound-identifier?
      (lambda _g147833_
        (let ((_g147832_ (##length _g147833_)))
          (cond ((##fx= _g147832_ 1)
                 (apply (lambda (_id140555_)
                          (gx#core-bound-identifier?__0 _id140555_))
                        _g147833_))
                ((##fx= _g147832_ 2)
                 (apply (lambda (_id140559_ _bound?140560_)
                          (gx#core-bound-identifier?__%
                           _id140559_
                           _bound?140560_))
                        _g147833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g147833_))))))
    (define gx#core-identifier=?
      (lambda (_x140539_ _y140540_)
        (letrec ((_y=?140542_
                  (lambda (_xid140546_)
                    ((if (list? _y140540_) memq eq?) _xid140546_ _y140540_))))
          (let ((_bind140544_ (gx#resolve-identifier__0 _x140539_)))
            (if (class-instance? gx#binding::t _bind140544_)
                (_y=?140542_ (unchecked-slot-ref _bind140544_ 'id))
                (_y=?140542_ (gx#stx-e _x140539_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e140537_)
        (if (interned-symbol? _e140537_)
            (string-index (symbol->string _e140537_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx140492_ _src140493_ _ctx140494_ _marks140495_)
        (if (##structure? _stx140492_)
            (let ((_$e140497_ (gx#sealed-syntax-unwrap _stx140492_)))
              (if _$e140497_
                  (values _$e140497_)
                  (if (gx#identifier? _stx140492_)
                      (let* ((_id140500_
                              (gx#stx-unwrap__% _stx140492_ _marks140495_))
                             (__obj147788
                              (##structure
                               gx#syntax-quote::t
                               '#f
                               '#f
                               '#f
                               '#f)))
                        (class-instance-init!
                         __obj147788
                         (unchecked-slot-ref _id140500_ 'e)
                         (let ((_$e140502_
                                (unchecked-slot-ref _id140500_ 'source)))
                           (if _$e140502_ _$e140502_ _src140493_))
                         _ctx140494_
                         (##unchecked-structure-ref
                          _id140500_
                          '3
                          gx#identifier-wrap::t
                          '#f))
                        __obj147788)
                      (let ((__obj147789
                             (##structure gx#syntax-quote::t '#f '#f '#f '#f)))
                        (class-instance-init!
                         __obj147789
                         (gx#stx-e _stx140492_)
                         (let ((_$e140505_ (gx#stx-source _stx140492_)))
                           (if _$e140505_ _$e140505_ _src140493_))
                         _ctx140494_
                         (reverse _marks140495_))
                        __obj147789))))
            (let ((__obj147790
                   (##structure gx#syntax-quote::t '#f '#f '#f '#f)))
              (class-instance-init!
               __obj147790
               _stx140492_
               _src140493_
               _ctx140494_
               (reverse _marks140495_))
              __obj147790))))
    (define gx#core-quote-syntax__0
      (lambda (_stx140511_)
        (let* ((_src140513_ '#f)
               (_ctx140515_ (gx#current-expander-context))
               (_marks140517_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140511_
           _src140513_
           _ctx140515_
           _marks140517_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx140519_ _src140520_)
        (let* ((_ctx140522_ (gx#current-expander-context))
               (_marks140524_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140519_
           _src140520_
           _ctx140522_
           _marks140524_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx140526_ _src140527_ _ctx140528_)
        (let ((_marks140530_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140526_
           _src140527_
           _ctx140528_
           _marks140530_))))
    (define gx#core-quote-syntax
      (lambda _g147835_
        (let ((_g147834_ (##length _g147835_)))
          (cond ((##fx= _g147834_ 1)
                 (apply (lambda (_stx140511_)
                          (gx#core-quote-syntax__0 _stx140511_))
                        _g147835_))
                ((##fx= _g147834_ 2)
                 (apply (lambda (_stx140519_ _src140520_)
                          (gx#core-quote-syntax__1 _stx140519_ _src140520_))
                        _g147835_))
                ((##fx= _g147834_ 3)
                 (apply (lambda (_stx140526_ _src140527_ _ctx140528_)
                          (gx#core-quote-syntax__2
                           _stx140526_
                           _src140527_
                           _ctx140528_))
                        _g147835_))
                ((##fx= _g147834_ 4)
                 (apply (lambda (_stx140532_
                                 _src140533_
                                 _ctx140534_
                                 _marks140535_)
                          (gx#core-quote-syntax__%
                           _stx140532_
                           _src140533_
                           _ctx140534_
                           _marks140535_))
                        _g147835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g147835_))))))
    (define gx#core-cons
      (lambda (_hd140488_ _tl140489_)
        (cons (gx#core-quote-syntax__0 _hd140488_) _tl140489_)))
    (define gx#core-list
      (lambda (_hd140485_ . _rest140486_)
        (cons (gx#core-quote-syntax__0 _hd140485_) _rest140486_)))
    (define gx#core-cons*
      (lambda (_hd140482_ . _rest140483_)
        (apply cons* (gx#core-quote-syntax__0 _hd140482_) _rest140483_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path140456_ _rel140457_)
        (let ((_path140469_ (gx#stx-e _stx-path140456_))
              (_reldir140470_
               (let _lp140459_ ((_relsrc140461_
                                 (let ((_$e140466_
                                        (gx#stx-source _stx-path140456_)))
                                   (if _$e140466_ _$e140466_ _rel140457_))))
                 (if (class-instance? gx#AST::t _relsrc140461_)
                     (_lp140459_
                      (let ((_$e140463_ (gx#stx-source _relsrc140461_)))
                        (if _$e140463_ _$e140463_ (gx#stx-e _relsrc140461_))))
                     (if (source-location-path? _relsrc140461_)
                         (path-directory (source-location-path _relsrc140461_))
                         (if (string? _relsrc140461_)
                             (path-directory _relsrc140461_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path140469_ (path-normalize _reldir140470_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path140475_)
        (let ((_rel140477_ '#f))
          (gx#core-resolve-path__% _stx-path140475_ _rel140477_))))
    (define gx#core-resolve-path
      (lambda _g147837_
        (let ((_g147836_ (##length _g147837_)))
          (cond ((##fx= _g147836_ 1)
                 (apply (lambda (_stx-path140475_)
                          (gx#core-resolve-path__0 _stx-path140475_))
                        _g147837_))
                ((##fx= _g147836_ 2)
                 (apply (lambda (_stx-path140479_ _rel140480_)
                          (gx#core-resolve-path__%
                           _stx-path140479_
                           _rel140480_))
                        _g147837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g147837_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr140412_ _ctx140413_)
        (let* ((_repr140414140421_ _repr140412_)
               (_E140416140425_
                (lambda () (error '"No clause matching" _repr140414140421_)))
               (_K140417140433_
                (lambda (_subs140428_ _phi140429_)
                  (let* ((_subst140431_
                          (if (not (null? _subs140428_))
                              (list->table _subs140428_ 'test: eq?)
                              '#f))
                         (__obj147791
                          (##structure gx#expander-mark::t '#f '#f '#f '#f)))
                    (class-instance-init!
                     __obj147791
                     _subst140431_
                     _ctx140413_
                     _phi140429_
                     '#f)
                    __obj147791))))
          (if (##pair? _repr140414140421_)
              (let ((_hd140418140436_ (##car _repr140414140421_))
                    (_tl140419140438_ (##cdr _repr140414140421_)))
                (let* ((_phi140441_ _hd140418140436_)
                       (_subs140443_ _tl140419140438_))
                  (_K140417140433_ _subs140443_ _phi140441_)))
              (_E140416140425_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr140448_)
        (let ((_ctx140450_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr140448_ _ctx140450_))))
    (define gx#core-deserialize-mark
      (lambda _g147839_
        (let ((_g147838_ (##length _g147839_)))
          (cond ((##fx= _g147838_ 1)
                 (apply (lambda (_repr140448_)
                          (gx#core-deserialize-mark__0 _repr140448_))
                        _g147839_))
                ((##fx= _g147838_ 2)
                 (apply (lambda (_repr140452_ _ctx140453_)
                          (gx#core-deserialize-mark__%
                           _repr140452_
                           _ctx140453_))
                        _g147839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g147839_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx140409_)
        (gx#stx-rewrap _stx140409_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx140407_)
        (gx#stx-unwrap__% _stx140407_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx140377_)
        (let* ((_g140378140386_ (gx#current-expander-marks))
               (_else140380140394_ (lambda () _stx140377_))
               (_K140382140399_
                (lambda (_hd140397_)
                  (gx#stx-apply-mark _stx140377_ _hd140397_))))
          (if (##pair? _g140378140386_)
              (let* ((_hd140383140402_ (##car _g140378140386_))
                     (_hd140405_ _hd140383140402_))
                (_K140382140399_ _hd140405_))
              (_else140380140394_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx140362_ _E140363_)
        (let ((_bind140365_ (gx#resolve-identifier__0 _stx140362_)))
          (if (##structure-direct-instance-of?
               _bind140365_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind140365_
               '4
               gx#syntax-binding::t
               '#f)
              (_E140363_ _stx140362_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx140370_)
        (let ((_E140372_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx140370_ _E140372_))))
    (define gx#syntax-local-e
      (lambda _g147841_
        (let ((_g147840_ (##length _g147841_)))
          (cond ((##fx= _g147840_ 1)
                 (apply (lambda (_stx140370_)
                          (gx#syntax-local-e__0 _stx140370_))
                        _g147841_))
                ((##fx= _g147840_ 2)
                 (apply (lambda (_stx140374_ _E140375_)
                          (gx#syntax-local-e__% _stx140374_ _E140375_))
                        _g147841_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g147841_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx140346_ _E140347_)
        (let ((_e140349_ (gx#syntax-local-e__% _stx140346_ _E140347_)))
          (if (class-instance? gx#expander::t _e140349_)
              (let ((__obj147792 _e140349_))
                (if (##structure-direct-instance-of?
                     __obj147792
                     'gx#expander::t)
                    (##unchecked-structure-ref
                     __obj147792
                     '1
                     gx#expander::t
                     '#f)
                    (class-slot-ref gx#expander::t __obj147792 'e)))
              _e140349_))))
    (define gx#syntax-local-value__0
      (lambda (_stx140354_)
        (let ((_E140356_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx140354_ _E140356_))))
    (define gx#syntax-local-value
      (lambda _g147843_
        (let ((_g147842_ (##length _g147843_)))
          (cond ((##fx= _g147842_ 1)
                 (apply (lambda (_stx140354_)
                          (gx#syntax-local-value__0 _stx140354_))
                        _g147843_))
                ((##fx= _g147842_ 2)
                 (apply (lambda (_stx140358_ _E140359_)
                          (gx#syntax-local-value__% _stx140358_ _E140359_))
                        _g147843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g147843_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx140343_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx140343_)))))
