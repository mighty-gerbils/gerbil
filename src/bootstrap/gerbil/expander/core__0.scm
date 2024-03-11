(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1710155058)
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
      (lambda _$args84275_
        (apply make-instance gx#expander-context::t _$args84275_)))
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
      (lambda _$args84272_
        (apply make-instance gx#root-context::t _$args84272_)))
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
      (lambda _$args84269_
        (apply make-instance gx#phi-context::t _$args84269_)))
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
      (lambda _$args84266_
        (apply make-instance gx#top-context::t _$args84266_)))
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
      (lambda _$args84263_
        (apply make-instance gx#module-context::t _$args84263_)))
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
      (lambda _$args84260_
        (apply make-instance gx#prelude-context::t _$args84260_)))
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
      (lambda _$args84257_
        (apply make-instance gx#local-context::t _$args84257_)))
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
      (lambda (_self84241_ _id84242_ _super84243_)
        (if (##fx< '3 (##structure-length _self84241_))
            (begin
              (##unchecked-structure-set!
               _self84241_
               _id84242_
               '1
               (##structure-type _self84241_)
               '#f)
              (##unchecked-structure-set!
               _self84241_
               (make-hash-table-eq)
               '2
               (##structure-type _self84241_)
               '#f)
              (##unchecked-structure-set!
               _self84241_
               _super84243_
               '3
               (##structure-type _self84241_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self84241_
                   '3
                   (##vector-length _self84241_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self84248_ _id84249_)
        (let ((_super84251_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self84248_ _id84249_ _super84251_))))
    (define gx#phi-context:::init!
      (lambda _g84318_
        (let ((_g84317_ (##length _g84318_)))
          (cond ((##fx= _g84317_ 2)
                 (apply (lambda (_self84248_ _id84249_)
                          (gx#phi-context:::init!__0 _self84248_ _id84249_))
                        _g84318_))
                ((##fx= _g84317_ 3)
                 (apply (lambda (_self84253_ _id84254_ _super84255_)
                          (gx#phi-context:::init!__%
                           _self84253_
                           _id84254_
                           _super84255_))
                        _g84318_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g84318_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self84105_ _super84106_)
        (if (##fx< '3 (##structure-length _self84105_))
            (begin
              (##unchecked-structure-set!
               _self84105_
               (gensym 'L)
               '1
               (##structure-type _self84105_)
               '#f)
              (##unchecked-structure-set!
               _self84105_
               (make-hash-table-eq)
               '2
               (##structure-type _self84105_)
               '#f)
              (##unchecked-structure-set!
               _self84105_
               _super84106_
               '3
               (##structure-type _self84105_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self84105_
                   '3
                   (##vector-length _self84105_)))))
    (define gx#local-context:::init!__0
      (lambda (_self84111_)
        (let ((_super84113_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self84111_ _super84113_))))
    (define gx#local-context:::init!
      (lambda _g84320_
        (let ((_g84319_ (##length _g84320_)))
          (cond ((##fx= _g84319_ 1)
                 (apply (lambda (_self84111_)
                          (gx#local-context:::init!__0 _self84111_))
                        _g84320_))
                ((##fx= _g84319_ 2)
                 (apply (lambda (_self84115_ _super84116_)
                          (gx#local-context:::init!__%
                           _self84115_
                           _super84116_))
                        _g84320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g84320_))))))
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
      (lambda _$args83979_ (apply make-instance gx#binding::t _$args83979_)))
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
      (lambda _$args83976_
        (apply make-instance gx#runtime-binding::t _$args83976_)))
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
      (lambda _$args83973_
        (apply make-instance gx#local-binding::t _$args83973_)))
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
      (lambda _$args83970_
        (apply make-instance gx#top-binding::t _$args83970_)))
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
      (lambda _$args83967_
        (apply make-instance gx#module-binding::t _$args83967_)))
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
      (lambda _$args83964_
        (apply make-instance gx#extern-binding::t _$args83964_)))
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
      (lambda _$args83961_
        (apply make-instance gx#syntax-binding::t _$args83961_)))
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
      (lambda _$args83958_
        (apply make-instance gx#import-binding::t _$args83958_)))
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
      (lambda _$args83955_
        (apply make-instance gx#alias-binding::t _$args83955_)))
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
      (lambda _$args83952_ (apply make-instance gx#expander::t _$args83952_)))
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
      (lambda _$args83949_
        (apply make-instance gx#core-expander::t _$args83949_)))
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
      (lambda _$args83946_
        (apply make-instance gx#expression-form::t _$args83946_)))
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
      (lambda _$args83943_
        (apply make-instance gx#special-form::t _$args83943_)))
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
      (lambda _$args83940_
        (apply make-instance gx#definition-form::t _$args83940_)))
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
      (lambda _$args83937_
        (apply make-instance gx#top-special-form::t _$args83937_)))
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
      (lambda _$args83934_
        (apply make-instance gx#module-special-form::t _$args83934_)))
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
      (lambda _$args83931_
        (apply make-instance gx#feature-expander::t _$args83931_)))
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
      (lambda _$args83928_
        (apply make-instance gx#private-feature-expander::t _$args83928_)))
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
      (lambda _$args83925_
        (apply make-instance gx#reserved-expander::t _$args83925_)))
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
      (lambda _$args83922_
        (apply make-instance gx#macro-expander::t _$args83922_)))
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
      (lambda _$args83919_
        (apply make-instance gx#rename-macro-expander::t _$args83919_)))
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
      (lambda _$args83916_
        (apply make-instance gx#user-expander::t _$args83916_)))
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
      (lambda _$args83913_
        (apply make-instance gx#expander-mark::t _$args83913_)))
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
      (lambda (_ctx83898_ _message83899_ _stx83900_ . _details83901_)
        (let ((_ctx83911_
               (let ((_$e83903_ _ctx83898_))
                 (if _$e83903_
                     _$e83903_
                     (let ((_$e83906_ (gx#core-context-top__0)))
                       (if _$e83906_
                           ((lambda (_ctx83909_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx83909_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e83906_)
                           '#f))))))
          (raise (make-syntax-error
                  _message83899_
                  (cons _stx83900_ _details83901_)
                  _ctx83911_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx83885_ _expression?83886_)
        (gx#eval-syntax* (gx#core-expand__% _stx83885_ _expression?83886_))))
    (define gx#eval-syntax__0
      (lambda (_stx83891_)
        (let ((_expression?83893_ '#f))
          (gx#eval-syntax__% _stx83891_ _expression?83893_))))
    (define gx#eval-syntax
      (lambda _g84322_
        (let ((_g84321_ (##length _g84322_)))
          (cond ((##fx= _g84321_ 1)
                 (apply (lambda (_stx83891_) (gx#eval-syntax__0 _stx83891_))
                        _g84322_))
                ((##fx= _g84321_ 2)
                 (apply (lambda (_stx83895_ _expression?83896_)
                          (gx#eval-syntax__% _stx83895_ _expression?83896_))
                        _g84322_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g84322_))))))
    (define gx#eval-syntax*
      (lambda (_stx83882_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx83882_))))
    (define gx#core-expand__%
      (lambda (_stx83869_ _expression?83870_)
        (if _expression?83870_
            (gx#core-expand-expression _stx83869_)
            (gx#core-expand-top _stx83869_))))
    (define gx#core-expand__0
      (lambda (_stx83875_)
        (let ((_expression?83877_ '#f))
          (gx#core-expand__% _stx83875_ _expression?83877_))))
    (define gx#core-expand
      (lambda _g84324_
        (let ((_g84323_ (##length _g84324_)))
          (cond ((##fx= _g84323_ 1)
                 (apply (lambda (_stx83875_) (gx#core-expand__0 _stx83875_))
                        _g84324_))
                ((##fx= _g84323_ 2)
                 (apply (lambda (_stx83879_ _expression?83880_)
                          (gx#core-expand__% _stx83879_ _expression?83880_))
                        _g84324_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g84324_))))))
    (define gx#core-expand-top
      (lambda (_stx83836_)
        (let* ((_stx83838_ (gx#core-expand*__0 _stx83836_))
               (_e8383983846_ _stx83838_)
               (_E8384183850_
                (lambda () (gx#core-expand-expression _stx83838_)))
               (_E8384083864_
                (lambda ()
                  (if (gx#stx-pair? _e8383983846_)
                      (let ((_e8384283854_ (gx#syntax-e _e8383983846_)))
                        (let ((_hd8384383857_ (##car _e8384283854_))
                              (_tl8384483859_ (##cdr _e8384283854_)))
                          (let ((_form83862_ _hd8384383857_))
                            (if (gx#core-bound-identifier?__0 _form83862_)
                                _stx83838_
                                (_E8384183850_)))))
                      (_E8384183850_)))))
          (_E8384083864_))))
    (define gx#core-expand-expression
      (lambda (_stx83783_)
        (letrec ((_sealed-expression?83785_
                  (lambda (_hd83806_)
                    (if (gx#sealed-syntax? _hd83806_)
                        (let* ((_e8380783814_ _hd83806_)
                               (_E8380983818_ (lambda () '#f))
                               (_E8380883832_
                                (lambda ()
                                  (if (gx#stx-pair? _e8380783814_)
                                      (let ((_e8381083822_
                                             (gx#syntax-e _e8380783814_)))
                                        (let ((_hd8381183825_
                                               (##car _e8381083822_))
                                              (_tl8381283827_
                                               (##cdr _e8381083822_)))
                                          (let ((_form83830_ _hd8381183825_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form83830_
                                                 gx#expression-form-binding?)
                                                (_E8380983818_)))))
                                      (_E8380983818_)))))
                          (_E8380883832_))
                        '#f)))
                 (_illegal-expression83786_
                  (lambda (_hd83804_ . _g84325_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx83783_
                     _hd83804_)))
                 (_expand-e83787_
                  (lambda (_form83799_ _hd83800_)
                    (let ((_bind83802_
                           (if (##structure-instance-of?
                                _form83799_
                                'gx#binding::t)
                               _form83799_
                               (gx#resolve-identifier__0 _form83799_))))
                      (if (gx#core-expander-binding? _bind83802_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind83802_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd83800_
                            (gx#stx-source _stx83783_)))
                          (if (##structure-direct-instance-of?
                               _bind83802_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind83802_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd83800_
                                 (gx#stx-source _stx83783_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx83783_
                               _form83799_)))))))
          (let ((_hd83789_ (gx#core-expand-head _stx83783_)))
            (if (_sealed-expression?83785_ _hd83789_)
                _hd83789_
                (if (gx#stx-pair? _hd83789_)
                    (let* ((_form83791_ (gx#stx-car _hd83789_))
                           (_bind83793_
                            (if (gx#identifier? _form83791_)
                                (gx#resolve-identifier__0 _form83791_)
                                '#f)))
                      (if (or (not _bind83793_)
                              (not (gx#core-expander-binding? _bind83793_)))
                          (_expand-e83787_ '%%app (cons '%%app _hd83789_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind83793_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd83789_
                               _illegal-expression83786_)
                              (if (gx#expression-form-binding? _bind83793_)
                                  (_expand-e83787_ _bind83793_ _hd83789_)
                                  (if (gx#direct-special-form-binding?
                                       _bind83793_)
                                      (gx#core-expand-expression
                                       (_expand-e83787_ _bind83793_ _hd83789_))
                                      (_illegal-expression83786_
                                       _hd83789_))))))
                    (if (gx#core-bound-identifier?__0 _hd83789_)
                        (_illegal-expression83786_ _hd83789_)
                        (if (gx#identifier? _hd83789_)
                            (_expand-e83787_
                             '%%ref
                             (cons '%%ref (cons _hd83789_ '())))
                            (if (gx#stx-datum? _hd83789_)
                                (_expand-e83787_
                                 '%#quote
                                 (cons '%#quote (cons _hd83789_ '())))
                                (_illegal-expression83786_ _hd83789_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx83778_)
        (call-with-parameters
         (lambda ()
           (let ((_stx83781_ (gx#core-expand-expression _stx83778_)))
             (values _stx83781_ (gx#eval-syntax* _stx83781_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx83759_ _stop?83760_)
        (let _lp83762_ ((_stx83764_ _stx83759_))
          (if (_stop?83760_ _stx83764_)
              _stx83764_
              (let ((_rstx83766_ (gx#core-expand1 _stx83764_)))
                (if (eq? _stx83764_ _rstx83766_)
                    _stx83764_
                    (_lp83762_ _rstx83766_)))))))
    (define gx#core-expand*__0
      (lambda (_stx83771_)
        (let ((_stop?83773_ false))
          (gx#core-expand*__% _stx83771_ _stop?83773_))))
    (define gx#core-expand*
      (lambda _g84327_
        (let ((_g84326_ (##length _g84327_)))
          (cond ((##fx= _g84326_ 1)
                 (apply (lambda (_stx83771_) (gx#core-expand*__0 _stx83771_))
                        _g84327_))
                ((##fx= _g84326_ 2)
                 (apply (lambda (_stx83775_ _stop?83776_)
                          (gx#core-expand*__% _stx83775_ _stop?83776_))
                        _g84327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g84327_))))))
    (define gx#core-expand1
      (lambda (_stx83715_)
        (letrec ((_step83717_
                  (lambda (_hd83754_)
                    (let ((_bind83756_ (gx#resolve-identifier__0 _hd83754_)))
                      (if (##structure-instance-of?
                           _bind83756_
                           'gx#runtime-binding::t)
                          _stx83715_
                          (if (##structure-direct-instance-of?
                               _bind83756_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind83756_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx83715_)
                              (if (not _bind83756_)
                                  _stx83715_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx83715_))))))))
          (let* ((_e8371883726_ _stx83715_)
                 (_E8372483730_ (lambda () _stx83715_))
                 (_E8372083736_
                  (lambda ()
                    (let ((_hd83734_ _e8371883726_))
                      (if (gx#identifier? _hd83734_)
                          (_step83717_ _hd83734_)
                          (_E8372483730_)))))
                 (_E8371983750_
                  (lambda ()
                    (if (gx#stx-pair? _e8371883726_)
                        (let ((_e8372183740_ (gx#syntax-e _e8371883726_)))
                          (let ((_hd8372283743_ (##car _e8372183740_))
                                (_tl8372383745_ (##cdr _e8372183740_)))
                            (let ((_hd83748_ _hd8372283743_))
                              (if (gx#identifier? _hd83748_)
                                  (_step83717_ _hd83748_)
                                  (_E8372083736_)))))
                        (_E8372083736_)))))
            (_E8371983750_)))))
    (define gx#core-expand-head
      (lambda (_stx83681_)
        (letrec ((_stop?83683_
                  (lambda (_stx83685_)
                    (let* ((_e8368683693_ _stx83685_)
                           (_E8368883697_ (lambda () '#f))
                           (_E8368783711_
                            (lambda ()
                              (if (gx#stx-pair? _e8368683693_)
                                  (let ((_e8368983701_
                                         (gx#syntax-e _e8368683693_)))
                                    (let ((_hd8369083704_
                                           (##car _e8368983701_))
                                          (_tl8369183706_
                                           (##cdr _e8368983701_)))
                                      (let ((_hd83709_ _hd8369083704_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd83709_)
                                            (_E8368883697_)))))
                                  (_E8368883697_)))))
                      (_E8368783711_)))))
          (gx#core-expand*__% _stx83681_ _stop?83683_))))
    (define gx#core-expand-block__%
      (lambda (_stx83487_
               _expand-special83488_
               _begin-form83489_
               _expand-e83490_)
        (letrec ((_expand-splice83492_
                  (lambda (_hd83655_ _body83656_ _rest83657_ _r83658_)
                    (if (gx#stx-list? _body83656_)
                        (_K83496_
                         (gx#stx-foldr cons _rest83657_ _body83656_)
                         _r83658_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx83487_
                         _hd83655_))))
                 (_expand-cond-expand83493_
                  (lambda (_hd83651_ _rest83652_ _r83653_)
                    (_K83496_
                     (cons (gx#core-expand-cond-expand% _hd83651_) _rest83652_)
                     _r83653_)))
                 (_expand-include83494_
                  (lambda (_hd83600_ _rest83601_ _r83602_)
                    (let* ((_e8360383613_ _hd83600_)
                           (_E8360583617_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8360383613_)))
                           (_E8360483647_
                            (lambda ()
                              (if (gx#stx-pair? _e8360383613_)
                                  (let ((_e8360683621_
                                         (gx#syntax-e _e8360383613_)))
                                    (let ((_hd8360783624_
                                           (##car _e8360683621_))
                                          (_tl8360883626_
                                           (##cdr _e8360683621_)))
                                      (if (gx#stx-pair? _tl8360883626_)
                                          (let ((_e8360983629_
                                                 (gx#syntax-e _tl8360883626_)))
                                            (let ((_hd8361083632_
                                                   (##car _e8360983629_))
                                                  (_tl8361183634_
                                                   (##cdr _e8360983629_)))
                                              (let ((_path83637_
                                                     _hd8361083632_))
                                                (if (gx#stx-null?
                                                     _tl8361183634_)
                                                    (if (gx#stx-string?
                                                         _path83637_)
                                                        (let* ((_rpath83639_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path83637_
                         (gx#stx-source _hd83600_)))
                       (_block83641_
                        (gx#core-expand-include%__% _hd83600_ _rpath83639_))
                       (_rbody83644_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block83641_
                            _expand-special83488_
                            '#f
                            _expand-e83490_))
                         gx#current-expander-path
                         (cons _rpath83639_ (gx#current-expander-path)))))
                  (_K83496_ _rest83601_ (foldr1 cons _r83602_ _rbody83644_)))
                (_E8360583617_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8360583617_)))))
                                          (_E8360583617_))))
                                  (_E8360583617_)))))
                      (_E8360483647_))))
                 (_expand-expression83495_
                  (lambda (_hd83596_ _rest83597_ _r83598_)
                    (_K83496_
                     _rest83597_
                     (cons (_expand-e83490_ _hd83596_) _r83598_))))
                 (_K83496_
                  (lambda (_rest83526_ _r83527_)
                    (let* ((_e8352883535_ _rest83526_)
                           (_E8353083539_
                            (lambda ()
                              (if _begin-form83489_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form83489_
                                    (reverse _r83527_))
                                   (gx#stx-source _stx83487_))
                                  _r83527_)))
                           (_E8352983592_
                            (lambda ()
                              (if (gx#stx-pair? _e8352883535_)
                                  (let ((_e8353183543_
                                         (gx#syntax-e _e8352883535_)))
                                    (let ((_hd8353283546_
                                           (##car _e8353183543_))
                                          (_tl8353383548_
                                           (##cdr _e8353183543_)))
                                      (let* ((_hd83551_ _hd8353283546_)
                                             (_rest83553_ _tl8353383548_))
                                        (if '#t
                                            (let* ((_hd83555_
                                                    (gx#core-expand-head
                                                     _hd83551_))
                                                   (_e8355683563_ _hd83555_)
                                                   (_E8355883567_
                                                    (lambda ()
                                                      (_expand-expression83495_
                                                       _hd83555_
                                                       _rest83553_
                                                       _r83527_)))
                                                   (_E8355783588_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8355683563_)
                                                          (let ((_e8355983571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8355683563_)))
                    (let ((_hd8356083574_ (##car _e8355983571_))
                          (_tl8356183576_ (##cdr _e8355983571_)))
                      (let* ((_form83579_ _hd8356083574_)
                             (_body83581_ _tl8356183576_))
                        (if '#t
                            (let ((_bind83583_
                                   (if (gx#identifier? _form83579_)
                                       (gx#resolve-identifier__0 _form83579_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind83583_)
                                  (let ((_$e83585_
                                         (##unchecked-structure-ref
                                          _bind83583_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e83585_)
                                        (_expand-splice83492_
                                         _hd83555_
                                         _body83581_
                                         _rest83553_
                                         _r83527_)
                                        (if (eq? '%#cond-expand _$e83585_)
                                            (_expand-cond-expand83493_
                                             _hd83555_
                                             _rest83553_
                                             _r83527_)
                                            (if (eq? '%#include _$e83585_)
                                                (_expand-include83494_
                                                 _hd83555_
                                                 _rest83553_
                                                 _r83527_)
                                                (_expand-special83488_
                                                 _hd83555_
                                                 _K83496_
                                                 _rest83553_
                                                 _r83527_)))))
                                  (_expand-expression83495_
                                   _hd83555_
                                   _rest83553_
                                   _r83527_)))
                            (_E8355883567_)))))
                  (_E8355883567_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8355783588_))
                                            (_E8353083539_)))))
                                  (_E8353083539_)))))
                      (_E8352983592_)))))
          (let* ((_e8349783504_ _stx83487_)
                 (_E8349983508_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8349783504_)))
                 (_E8349883522_
                  (lambda ()
                    (if (gx#stx-pair? _e8349783504_)
                        (let ((_e8350083512_ (gx#syntax-e _e8349783504_)))
                          (let ((_hd8350183515_ (##car _e8350083512_))
                                (_tl8350283517_ (##cdr _e8350083512_)))
                            (let ((_body83520_ _tl8350283517_))
                              (if (gx#stx-list? _body83520_)
                                  (_K83496_ _body83520_ '())
                                  (_E8349983508_)))))
                        (_E8349983508_)))))
            (_E8349883522_)))))
    (define gx#core-expand-block__0
      (lambda (_stx83663_ _expand-special83664_)
        (let* ((_begin-form83666_ '%#begin)
               (_expand-e83668_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx83663_
           _expand-special83664_
           _begin-form83666_
           _expand-e83668_))))
    (define gx#core-expand-block__1
      (lambda (_stx83670_ _expand-special83671_ _begin-form83672_)
        (let ((_expand-e83674_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx83670_
           _expand-special83671_
           _begin-form83672_
           _expand-e83674_))))
    (define gx#core-expand-block
      (lambda _g84329_
        (let ((_g84328_ (##length _g84329_)))
          (cond ((##fx= _g84328_ 2)
                 (apply (lambda (_stx83663_ _expand-special83664_)
                          (gx#core-expand-block__0
                           _stx83663_
                           _expand-special83664_))
                        _g84329_))
                ((##fx= _g84328_ 3)
                 (apply (lambda (_stx83670_
                                 _expand-special83671_
                                 _begin-form83672_)
                          (gx#core-expand-block__1
                           _stx83670_
                           _expand-special83671_
                           _begin-form83672_))
                        _g84329_))
                ((##fx= _g84328_ 4)
                 (apply (lambda (_stx83676_
                                 _expand-special83677_
                                 _begin-form83678_
                                 _expand-e83679_)
                          (gx#core-expand-block__%
                           _stx83676_
                           _expand-special83677_
                           _begin-form83678_
                           _expand-e83679_))
                        _g84329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g84329_))))))
    (define gx#core-expand-block*
      (lambda (_stx83435_ _expand-special83436_)
        (let* ((_g8343783448_
                (gx#core-expand-block__1 _stx83435_ _expand-special83436_ '#f))
               (_E8344183452_
                (lambda () (error '"No clause matching" _g8343783448_))))
          (let ((_K8344683483_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx83435_)))
                (_K8344383469_ (lambda (_expr83467_) _expr83467_))
                (_K8344283458_
                 (lambda (_body83456_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body83456_))
                    (gx#stx-source _stx83435_)))))
            (let ((_try-match8343983479_
                   (lambda ()
                     (if (##pair? _g8343783448_)
                         (let ((_tl8344583474_ (##cdr _g8343783448_))
                               (_hd8344483472_ (##car _g8343783448_)))
                           (if (##null? _tl8344583474_)
                               (let ((_expr83477_ _hd8344483472_))
                                 (_K8344383469_ _expr83477_))
                               (let ((_body83461_ _g8343783448_))
                                 (_K8344283458_ _body83461_))))
                         (let ((_body83461_ _g8343783448_))
                           (_K8344283458_ _body83461_))))))
              (if (##null? _g8343783448_)
                  (_K8344683483_)
                  (_try-match8343983479_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx83263_)
        (letrec ((_satisfied?83265_
                  (lambda (_condition83363_)
                    (let* ((_e8336483379_ _condition83363_)
                           (_E8337483383_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8336483379_)))
                           (_E8336783402_
                            (lambda ()
                              (if (gx#stx-pair? _e8336483379_)
                                  (let ((_e8337583387_
                                         (gx#syntax-e _e8336483379_)))
                                    (let ((_hd8337683390_
                                           (##car _e8337583387_))
                                          (_tl8337783392_
                                           (##cdr _e8337583387_)))
                                      (let* ((_combinator83395_ _hd8337683390_)
                                             (_body83397_ _tl8337783392_))
                                        (if (gx#stx-list? _body83397_)
                                            (let ((_$e83399_
                                                   (gx#stx-e
                                                    _combinator83395_)))
                                              (if (eq? 'not _$e83399_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?83265_
                                                        _body83397_))
                                                  (if (eq? 'and _$e83399_)
                                                      (gx#stx-andmap
                                                       _satisfied?83265_
                                                       _body83397_)
                                                      (if (eq? 'or _$e83399_)
                                                          (gx#stx-ormap
                                                           _satisfied?83265_
                                                           _body83397_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e83399_)
                      (gx#stx-andmap gx#core-resolve-identifier _body83397_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx83263_
                       _combinator83395_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8337483383_)))))
                                  (_E8337483383_))))
                           (_E8336683425_
                            (lambda ()
                              (if (gx#stx-pair? _e8336483379_)
                                  (let ((_e8336883406_
                                         (gx#syntax-e _e8336483379_)))
                                    (let ((_hd8336983409_
                                           (##car _e8336883406_))
                                          (_tl8337083411_
                                           (##cdr _e8336883406_)))
                                      (if (and (gx#identifier? _hd8336983409_)
                                               (gx#core-identifier=?
                                                _hd8336983409_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8337083411_)
                                              (let ((_e8337183414_
                                                     (gx#syntax-e
                                                      _tl8337083411_)))
                                                (let ((_hd8337283417_
                                                       (##car _e8337183414_))
                                                      (_tl8337383419_
                                                       (##cdr _e8337183414_)))
                                                  (let ((_expr83422_
                                                         _hd8337283417_))
                                                    (if (gx#stx-null?
                                                         _tl8337383419_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr83422_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8336783402_))
                (_E8336783402_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8336783402_))
                                          (_E8336783402_))))
                                  (_E8336783402_))))
                           (_E8336583431_
                            (lambda ()
                              (let ((_id83429_ _e8336483379_))
                                (if (gx#identifier? _id83429_)
                                    (gx#core-bound-identifier?__%
                                     _id83429_
                                     gx#feature-binding?)
                                    (_E8336683425_))))))
                      (_E8336583431_))))
                 (_loop83266_
                  (lambda (_rest83296_)
                    (let* ((_e8329783305_ _rest83296_)
                           (_E8330383309_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8329783305_)))
                           (_E8329983313_
                            (lambda ()
                              (if (gx#stx-null? _e8329783305_)
                                  (if '#t '() (_E8330383309_))
                                  (_E8330383309_))))
                           (_E8329883359_
                            (lambda ()
                              (if (gx#stx-pair? _e8329783305_)
                                  (let ((_e8330083317_
                                         (gx#syntax-e _e8329783305_)))
                                    (let ((_hd8330183320_
                                           (##car _e8330083317_))
                                          (_tl8330283322_
                                           (##cdr _e8330083317_)))
                                      (let* ((_hd83325_ _hd8330183320_)
                                             (_rest83327_ _tl8330283322_))
                                        (if '#t
                                            (let* ((_e8332883335_ _hd83325_)
                                                   (_E8333083339_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8332883335_)))
                                                   (_E8332983355_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8332883335_)
                                                          (let ((_e8333183343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8332883335_)))
                    (let ((_hd8333283346_ (##car _e8333183343_))
                          (_tl8333383348_ (##cdr _e8333183343_)))
                      (let* ((_condition83351_ _hd8333283346_)
                             (_body83353_ _tl8333383348_))
                        (if '#t
                            (if (gx#stx-eq? _condition83351_ 'else)
                                (if (gx#stx-null? _rest83327_)
                                    _body83353_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx83263_
                                     _hd83325_))
                                (if (_satisfied?83265_ _condition83351_)
                                    _body83353_
                                    (_loop83266_ _rest83327_)))
                            (_E8333083339_)))))
                  (_E8333083339_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8332983355_))
                                            (_E8329983313_)))))
                                  (_E8329983313_)))))
                      (_E8329883359_)))))
          (let* ((_e8326783274_ _stx83263_)
                 (_E8326983278_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8326783274_)))
                 (_E8326883292_
                  (lambda ()
                    (if (gx#stx-pair? _e8326783274_)
                        (let ((_e8327083282_ (gx#syntax-e _e8326783274_)))
                          (let ((_hd8327183285_ (##car _e8327083282_))
                                (_tl8327283287_ (##cdr _e8327083282_)))
                            (let ((_clauses83290_ _tl8327283287_))
                              (if (gx#stx-list? _clauses83290_)
                                  (gx#core-cons
                                   'begin
                                   (_loop83266_ _clauses83290_))
                                  (_E8326983278_)))))
                        (_E8326983278_)))))
            (_E8326883292_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx83206_ _rpath83207_)
        (let* ((_e8320883218_ _stx83206_)
               (_E8321083222_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8320883218_)))
               (_E8320983249_
                (lambda ()
                  (if (gx#stx-pair? _e8320883218_)
                      (let ((_e8321183226_ (gx#syntax-e _e8320883218_)))
                        (let ((_hd8321283229_ (##car _e8321183226_))
                              (_tl8321383231_ (##cdr _e8321183226_)))
                          (if (gx#stx-pair? _tl8321383231_)
                              (let ((_e8321483234_
                                     (gx#syntax-e _tl8321383231_)))
                                (let ((_hd8321583237_ (##car _e8321483234_))
                                      (_tl8321683239_ (##cdr _e8321483234_)))
                                  (let ((_path83242_ _hd8321583237_))
                                    (if (gx#stx-null? _tl8321683239_)
                                        (if (gx#stx-string? _path83242_)
                                            (let ((_rpath83247_
                                                   (let ((_$e83244_
                                                          _rpath83207_))
                                                     (if _$e83244_
                                                         _$e83244_
                                                         (gx#core-resolve-path__%
                                                          _path83242_
                                                          (gx#stx-source
                                                           _stx83206_))))))
                                              (if (member _rpath83247_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx83206_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath83247_))
                                                    (gx#stx-source
                                                     _stx83206_)))))
                                            (_E8321083222_))
                                        (_E8321083222_)))))
                              (_E8321083222_))))
                      (_E8321083222_)))))
          (_E8320983249_))))
    (define gx#core-expand-include%__0
      (lambda (_stx83256_)
        (let ((_rpath83258_ '#f))
          (gx#core-expand-include%__% _stx83256_ _rpath83258_))))
    (define gx#core-expand-include%
      (lambda _g84331_
        (let ((_g84330_ (##length _g84331_)))
          (cond ((##fx= _g84330_ 1)
                 (apply (lambda (_stx83256_)
                          (gx#core-expand-include%__0 _stx83256_))
                        _g84331_))
                ((##fx= _g84330_ 2)
                 (apply (lambda (_stx83260_ _rpath83261_)
                          (gx#core-expand-include%__% _stx83260_ _rpath83261_))
                        _g84331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g84331_))))))
    (define gx#core-apply-expander__%
      (lambda (_K83175_ _stx83176_ _method83177_)
        (if (procedure? _K83175_)
            (let ((_$e83179_ (gx#stx-source _stx83176_)))
              (if _$e83179_
                  ((lambda (_g8318183183_)
                     (gx#stx-wrap-source (_K83175_ _stx83176_) _g8318183183_))
                   _$e83179_)
                  (_K83175_ _stx83176_)))
            (let ((_$e83186_ (bound-method-ref _K83175_ _method83177_)))
              (if _$e83186_
                  ((lambda (_g8318883190_)
                     (gx#core-apply-expander__%
                      _g8318883190_
                      _stx83176_
                      _method83177_))
                   _$e83186_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx83176_
                   _method83177_))))))
    (define gx#core-apply-expander__0
      (lambda (_K83196_ _stx83197_)
        (let ((_method83199_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K83196_ _stx83197_ _method83199_))))
    (define gx#core-apply-expander
      (lambda _g84333_
        (let ((_g84332_ (##length _g84333_)))
          (cond ((##fx= _g84332_ 2)
                 (apply (lambda (_K83196_ _stx83197_)
                          (gx#core-apply-expander__0 _K83196_ _stx83197_))
                        _g84333_))
                ((##fx= _g84332_ 3)
                 (apply (lambda (_K83201_ _stx83202_ _method83203_)
                          (gx#core-apply-expander__%
                           _K83201_
                           _stx83202_
                           _method83203_))
                        _g84333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g84333_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self83171_ _stx83172_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx83172_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self83024_ _stx83025_)
        (let* ((_self8302683032_ _self83024_)
               (_E8302883036_
                (lambda () (error '"No clause matching" _self8302683032_)))
               (_K8302983041_
                (lambda (_K83039_)
                  (gx#core-apply-expander__0 _K83039_ _stx83025_))))
          (if (##structure-instance-of? _self8302683032_ 'gx#core-macro::t)
              (let* ((_e8303083044_
                      (##unchecked-structure-ref
                       _self8302683032_
                       '1
                       gx#expander::t
                       '#f))
                     (_K83047_ _e8303083044_))
                (_K8302983041_ _K83047_))
              (_E8302883036_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self82877_ _stx82878_)
        (if (gx#sealed-syntax? _stx82878_)
            _stx82878_
            (let* ((_self8287982885_ _self82877_)
                   (_E8288182889_
                    (lambda () (error '"No clause matching" _self8287982885_)))
                   (_K8288282894_
                    (lambda (_K82892_)
                      (gx#core-apply-expander__0 _K82892_ _stx82878_))))
              (if (##structure-instance-of?
                   _self8287982885_
                   'gx#core-expander::t)
                  (let* ((_e8288382897_
                          (##unchecked-structure-ref
                           _self8287982885_
                           '1
                           gx#expander::t
                           '#f))
                         (_K82900_ _e8288382897_))
                    (_K8288282894_ _K82900_))
                  (_E8288182889_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self82739_ _stx82740_ _top?82741_)
        (if (_top?82741_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self82739_ _stx82740_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx82740_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self82746_ _stx82747_)
        (let ((_top?82749_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self82746_
           _stx82747_
           _top?82749_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g84335_
        (let ((_g84334_ (##length _g84335_)))
          (cond ((##fx= _g84334_ 2)
                 (apply (lambda (_self82746_ _stx82747_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self82746_
                           _stx82747_))
                        _g84335_))
                ((##fx= _g84334_ 3)
                 (apply (lambda (_self82751_ _stx82752_ _top?82753_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self82751_
                           _stx82752_
                           _top?82753_))
                        _g84335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g84335_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self82613_ _stx82614_)
        (gx#top-special-form::apply-macro-expander__%
         _self82613_
         _stx82614_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self82438_ _stx82439_)
        (let* ((_self8244082446_ _self82438_)
               (_E8244282450_
                (lambda () (error '"No clause matching" _self8244082446_)))
               (_K8244382483_
                (lambda (_id82453_)
                  (let* ((_e8245482461_ _stx82439_)
                         (_E8245682465_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8245482461_)))
                         (_E8245582479_
                          (lambda ()
                            (if (gx#stx-pair? _e8245482461_)
                                (let ((_e8245782469_
                                       (gx#syntax-e _e8245482461_)))
                                  (let ((_hd8245882472_ (##car _e8245782469_))
                                        (_tl8245982474_ (##cdr _e8245782469_)))
                                    (let ((_body82477_ _tl8245982474_))
                                      (if '#t
                                          (gx#core-cons _id82453_ _body82477_)
                                          (_E8245682465_)))))
                                (_E8245682465_)))))
                    (_E8245582479_)))))
          (if (##structure-instance-of?
               _self8244082446_
               'gx#rename-macro-expander::t)
              (let* ((_e8244482486_
                      (##unchecked-structure-ref
                       _self8244082446_
                       '1
                       gx#expander::t
                       '#f))
                     (_id82489_ _e8244482486_))
                (_K8244382483_ _id82489_))
              (_E8244282450_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self82264_ _stx82265_ _method82266_)
        (let* ((_self8226782275_ _self82264_)
               (_E8226982279_
                (lambda () (error '"No clause matching" _self8226782275_)))
               (_K8227082286_
                (lambda (_phi82282_ _ctx82283_ _K82284_)
                  (gx#core-apply-user-macro
                   _K82284_
                   _stx82265_
                   _ctx82283_
                   _phi82282_
                   _method82266_))))
          (if (##structure-instance-of? _self8226782275_ 'gx#macro-expander::t)
              (let* ((_e8227182289_
                      (##unchecked-structure-ref
                       _self8226782275_
                       '1
                       gx#expander::t
                       '#f))
                     (_K82292_ _e8227182289_)
                     (_e8227282294_
                      (##unchecked-structure-ref
                       _self8226782275_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx82297_ _e8227282294_)
                     (_e8227382299_
                      (##unchecked-structure-ref
                       _self8226782275_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi82302_ _e8227382299_))
                (_K8227082286_ _phi82302_ _ctx82297_ _K82292_))
              (_E8226982279_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self82307_ _stx82308_)
        (let ((_method82310_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self82307_
           _stx82308_
           _method82310_))))
    (define gx#core-apply-user-expander
      (lambda _g84337_
        (let ((_g84336_ (##length _g84337_)))
          (cond ((##fx= _g84336_ 2)
                 (apply (lambda (_self82307_ _stx82308_)
                          (gx#core-apply-user-expander__0
                           _self82307_
                           _stx82308_))
                        _g84337_))
                ((##fx= _g84336_ 3)
                 (apply (lambda (_self82312_ _stx82313_ _method82314_)
                          (gx#core-apply-user-expander__%
                           _self82312_
                           _stx82313_
                           _method82314_))
                        _g84337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g84337_))))))
    (define gx#core-apply-user-macro
      (lambda (_K82254_ _stx82255_ _ctx82256_ _phi82257_ _method82258_)
        (let ((_mark82260_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx82256_
                _phi82257_
                _stx82255_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K82254_
               (gx#stx-apply-mark _stx82255_ _mark82260_)
               _method82258_)
              _mark82260_))
           gx#current-expander-marks
           (cons _mark82260_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx82105_ _phi82106_ _ctx82107_)
        (let _lp82109_ ((_bind82111_
                         (gx#core-resolve-identifier__%
                          _stx82105_
                          _phi82106_
                          _ctx82107_)))
          (if (##structure-direct-instance-of?
               _bind82111_
               'gx#import-binding::t)
              (_lp82109_
               (##unchecked-structure-ref
                _bind82111_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind82111_
                   'gx#alias-binding::t)
                  (_lp82109_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind82111_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi82106_
                    _ctx82107_))
                  _bind82111_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx82116_)
        (let* ((_phi82118_ (gx#current-expander-phi))
               (_ctx82120_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx82116_ _phi82118_ _ctx82120_))))
    (define gx#resolve-identifier__1
      (lambda (_stx82122_ _phi82123_)
        (let ((_ctx82125_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx82122_ _phi82123_ _ctx82125_))))
    (define gx#resolve-identifier
      (lambda _g84339_
        (let ((_g84338_ (##length _g84339_)))
          (cond ((##fx= _g84338_ 1)
                 (apply (lambda (_stx82116_)
                          (gx#resolve-identifier__0 _stx82116_))
                        _g84339_))
                ((##fx= _g84338_ 2)
                 (apply (lambda (_stx82122_ _phi82123_)
                          (gx#resolve-identifier__1 _stx82122_ _phi82123_))
                        _g84339_))
                ((##fx= _g84338_ 3)
                 (apply (lambda (_stx82127_ _phi82128_ _ctx82129_)
                          (gx#resolve-identifier__%
                           _stx82127_
                           _phi82128_
                           _ctx82129_))
                        _g84339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g84339_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx82063_ _val82064_ _rebind?82065_ _phi82066_ _ctx82067_)
        (let ((_rebind?82069_
               (if (not _rebind?82065_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?82065_) _rebind?82065_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx82063_)
           _val82064_
           _rebind?82069_
           _phi82066_
           _ctx82067_))))
    (define gx#bind-identifier!__0
      (lambda (_stx82074_ _val82075_)
        (let* ((_rebind?82077_ '#f)
               (_phi82079_ (gx#current-expander-phi))
               (_ctx82081_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82074_
           _val82075_
           _rebind?82077_
           _phi82079_
           _ctx82081_))))
    (define gx#bind-identifier!__1
      (lambda (_stx82083_ _val82084_ _rebind?82085_)
        (let* ((_phi82087_ (gx#current-expander-phi))
               (_ctx82089_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82083_
           _val82084_
           _rebind?82085_
           _phi82087_
           _ctx82089_))))
    (define gx#bind-identifier!__2
      (lambda (_stx82091_ _val82092_ _rebind?82093_ _phi82094_)
        (let ((_ctx82096_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82091_
           _val82092_
           _rebind?82093_
           _phi82094_
           _ctx82096_))))
    (define gx#bind-identifier!
      (lambda _g84341_
        (let ((_g84340_ (##length _g84341_)))
          (cond ((##fx= _g84340_ 2)
                 (apply (lambda (_stx82074_ _val82075_)
                          (gx#bind-identifier!__0 _stx82074_ _val82075_))
                        _g84341_))
                ((##fx= _g84340_ 3)
                 (apply (lambda (_stx82083_ _val82084_ _rebind?82085_)
                          (gx#bind-identifier!__1
                           _stx82083_
                           _val82084_
                           _rebind?82085_))
                        _g84341_))
                ((##fx= _g84340_ 4)
                 (apply (lambda (_stx82091_
                                 _val82092_
                                 _rebind?82093_
                                 _phi82094_)
                          (gx#bind-identifier!__2
                           _stx82091_
                           _val82092_
                           _rebind?82093_
                           _phi82094_))
                        _g84341_))
                ((##fx= _g84340_ 5)
                 (apply (lambda (_stx82098_
                                 _val82099_
                                 _rebind?82100_
                                 _phi82101_
                                 _ctx82102_)
                          (gx#bind-identifier!__%
                           _stx82098_
                           _val82099_
                           _rebind?82100_
                           _phi82101_
                           _ctx82102_))
                        _g84341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g84341_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx82035_ _phi82036_ _ctx82037_)
        (let _lp82039_ ((_e82041_ _stx82035_)
                        (_marks82042_ (gx#current-expander-marks)))
          (if (symbol? _e82041_)
              (gx#core-resolve-binding
               _e82041_
               _phi82036_
               _phi82036_
               _ctx82037_
               (reverse _marks82042_))
              (if (gx#identifier-quote? _e82041_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e82041_ '1 gx#AST::t '#f)
                   _phi82036_
                   '0
                   (##unchecked-structure-ref
                    _e82041_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e82041_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e82041_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e82041_ '1 gx#AST::t '#f)
                       _phi82036_
                       _phi82036_
                       _ctx82037_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e82041_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks82042_))
                      (if (##structure-direct-instance-of?
                           _e82041_
                           'gx#syntax-wrap::t)
                          (_lp82039_
                           (##unchecked-structure-ref
                            _e82041_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e82041_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks82042_))
                          (if (##structure-instance-of?
                               _e82041_
                               'gerbil#AST::t)
                              (_lp82039_
                               (##unchecked-structure-ref
                                _e82041_
                                '1
                                gx#AST::t
                                '#f)
                               _marks82042_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx82035_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx82047_)
        (let* ((_phi82049_ (gx#current-expander-phi))
               (_ctx82051_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx82047_ _phi82049_ _ctx82051_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx82053_ _phi82054_)
        (let ((_ctx82056_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx82053_ _phi82054_ _ctx82056_))))
    (define gx#core-resolve-identifier
      (lambda _g84343_
        (let ((_g84342_ (##length _g84343_)))
          (cond ((##fx= _g84342_ 1)
                 (apply (lambda (_stx82047_)
                          (gx#core-resolve-identifier__0 _stx82047_))
                        _g84343_))
                ((##fx= _g84342_ 2)
                 (apply (lambda (_stx82053_ _phi82054_)
                          (gx#core-resolve-identifier__1
                           _stx82053_
                           _phi82054_))
                        _g84343_))
                ((##fx= _g84342_ 3)
                 (apply (lambda (_stx82058_ _phi82059_ _ctx82060_)
                          (gx#core-resolve-identifier__%
                           _stx82058_
                           _phi82059_
                           _ctx82060_))
                        _g84343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g84343_))))))
    (define gx#core-resolve-binding
      (lambda (_id81948_ _phi81949_ _src-phi81950_ _ctx81951_ _marks81952_)
        (letrec ((_resolve81954_
                  (lambda (_ctx82022_ _src-phi82023_ _key82024_)
                    (let _lp82026_ ((_ctx82028_
                                     (gx#core-context-shift
                                      _ctx82022_
                                      _phi81949_))
                                    (_dphi82029_
                                     (fx- _phi81949_ _src-phi82023_)))
                      (let ((_$e82031_
                             (gx#core-context-resolve _ctx82028_ _key82024_)))
                        (if _$e82031_
                            (values _$e82031_)
                            (if (fxzero? _dphi82029_)
                                '#f
                                (if (fxpositive? _dphi82029_)
                                    (_lp82026_
                                     (gx#core-context-shift _ctx82028_ '-1)
                                     (fx- _dphi82029_ '1))
                                    (_lp82026_
                                     (gx#core-context-shift _ctx82028_ '1)
                                     (fx+ _dphi82029_ '1))))))))))
          (let _lp81956_ ((_ctx81958_ _ctx81951_)
                          (_src-phi81959_ _src-phi81950_)
                          (_rest81960_ _marks81952_))
            (let* ((_rest8196181969_ _rest81960_)
                   (_else8196381977_
                    (lambda ()
                      (_resolve81954_ _ctx81958_ _src-phi81959_ _id81948_)))
                   (_K8196582010_
                    (lambda (_rest81980_ _hd81981_)
                      (let* ((_hd8198281988_ _hd81981_)
                             (_E8198481992_
                              (lambda ()
                                (error '"No clause matching" _hd8198281988_)))
                             (_K8198582002_
                              (lambda (_subst81995_)
                                (let ((_$e81999_
                                       (let ((_key81997_
                                              (if _subst81995_
                                                  (hash-get
                                                   _subst81995_
                                                   _id81948_)
                                                  '#f)))
                                         (if _key81997_
                                             (_resolve81954_
                                              _ctx81958_
                                              _src-phi81959_
                                              _key81997_)
                                             '#f))))
                                  (if _$e81999_
                                      _$e81999_
                                      (_lp81956_
                                       (##unchecked-structure-ref
                                        _hd81981_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd81981_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest81980_))))))
                        (if (##structure-instance-of?
                             _hd8198281988_
                             'gx#expander-mark::t)
                            (let* ((_e8198682005_
                                    (##unchecked-structure-ref
                                     _hd8198281988_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst82008_ _e8198682005_))
                              (_K8198582002_ _subst82008_))
                            (_E8198481992_))))))
              (if (##pair? _rest8196181969_)
                  (let ((_hd8196682013_ (##car _rest8196181969_))
                        (_tl8196782015_ (##cdr _rest8196181969_)))
                    (let* ((_hd82018_ _hd8196682013_)
                           (_rest82020_ _tl8196782015_))
                      (_K8196582010_ _rest82020_ _hd82018_)))
                  (_else8196381977_)))))))
    (define gx#core-bind!__%
      (lambda (_key81824_ _val81825_ _rebind?81826_ _phi81827_ _ctx81828_)
        (letrec ((_update-binding81830_
                  (lambda (_xval81901_)
                    (if (or (_rebind?81826_ _ctx81828_ _xval81901_ _val81825_)
                            (and (##structure-direct-instance-of?
                                  _xval81901_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval81901_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val81825_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val81825_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval81901_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val81825_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val81825_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval81901_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val81825_
                        (if (and (##structure-direct-instance-of?
                                  _val81825_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val81825_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval81901_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val81825_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval81901_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval81901_
                            (if (and (##structure-direct-instance-of?
                                      _val81825_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval81901_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key81824_
                                 (cons (##unchecked-structure-ref
                                        _val81825_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val81825_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval81901_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval81901_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval81901_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval81901_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key81824_
                                 _val81825_
                                 _xval81901_))))))
                 (_gensubst81831_
                  (lambda (_subst81896_ _id81897_)
                    (let ((_eid81899_
                           (gensym (if (uninterned-symbol? _id81897_)
                                       '%
                                       _id81897_))))
                      (hash-put! _subst81896_ _id81897_ _eid81899_)
                      _eid81899_)))
                 (_subst!81832_
                  (lambda (_key81834_)
                    (let* ((_key8183581843_ _key81834_)
                           (_else8183781851_ (lambda () _key81834_))
                           (_K8183981884_
                            (lambda (_mark81854_ _id81855_)
                              (let* ((_mark8185681862_ _mark81854_)
                                     (_E8185881866_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8185681862_)))
                                     (_K8185981876_
                                      (lambda (_subst81869_)
                                        (if (not _subst81869_)
                                            (let ((_subst81871_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark81854_
                                               _subst81871_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst81831_
                                               _subst81871_
                                               _id81855_))
                                            (let ((_$e81873_
                                                   (hash-get
                                                    _subst81869_
                                                    _id81855_)))
                                              (if _$e81873_
                                                  (values _$e81873_)
                                                  (_gensubst81831_
                                                   _subst81869_
                                                   _id81855_)))))))
                                (if (##structure-instance-of?
                                     _mark8185681862_
                                     'gx#expander-mark::t)
                                    (let* ((_e8186081879_
                                            (##unchecked-structure-ref
                                             _mark8185681862_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst81882_ _e8186081879_))
                                      (_K8185981876_ _subst81882_))
                                    (_E8185881866_))))))
                      (if (##pair? _key8183581843_)
                          (let ((_hd8184081887_ (##car _key8183581843_))
                                (_tl8184181889_ (##cdr _key8183581843_)))
                            (let* ((_id81892_ _hd8184081887_)
                                   (_mark81894_ _tl8184181889_))
                              (_K8183981884_ _mark81894_ _id81892_)))
                          (_else8183781851_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx81828_ _phi81827_)
           (_subst!81832_ _key81824_)
           _val81825_
           _update-binding81830_))))
    (define gx#core-bind!__0
      (lambda (_key81918_ _val81919_)
        (let* ((_rebind?81921_ false)
               (_phi81923_ (gx#current-expander-phi))
               (_ctx81925_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81918_
           _val81919_
           _rebind?81921_
           _phi81923_
           _ctx81925_))))
    (define gx#core-bind!__1
      (lambda (_key81927_ _val81928_ _rebind?81929_)
        (let* ((_phi81931_ (gx#current-expander-phi))
               (_ctx81933_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81927_
           _val81928_
           _rebind?81929_
           _phi81931_
           _ctx81933_))))
    (define gx#core-bind!__2
      (lambda (_key81935_ _val81936_ _rebind?81937_ _phi81938_)
        (let ((_ctx81940_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81935_
           _val81936_
           _rebind?81937_
           _phi81938_
           _ctx81940_))))
    (define gx#core-bind!
      (lambda _g84345_
        (let ((_g84344_ (##length _g84345_)))
          (cond ((##fx= _g84344_ 2)
                 (apply (lambda (_key81918_ _val81919_)
                          (gx#core-bind!__0 _key81918_ _val81919_))
                        _g84345_))
                ((##fx= _g84344_ 3)
                 (apply (lambda (_key81927_ _val81928_ _rebind?81929_)
                          (gx#core-bind!__1
                           _key81927_
                           _val81928_
                           _rebind?81929_))
                        _g84345_))
                ((##fx= _g84344_ 4)
                 (apply (lambda (_key81935_
                                 _val81936_
                                 _rebind?81937_
                                 _phi81938_)
                          (gx#core-bind!__2
                           _key81935_
                           _val81936_
                           _rebind?81937_
                           _phi81938_))
                        _g84345_))
                ((##fx= _g84344_ 5)
                 (apply (lambda (_key81942_
                                 _val81943_
                                 _rebind?81944_
                                 _phi81945_
                                 _ctx81946_)
                          (gx#core-bind!__%
                           _key81942_
                           _val81943_
                           _rebind?81944_
                           _phi81945_
                           _ctx81946_))
                        _g84345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g84345_))))))
    (define gx#core-identifier-key
      (lambda (_stx81758_)
        (if (symbol? _stx81758_)
            (let* ((_g8175981767_ (gx#current-expander-marks))
                   (_else8176181775_ (lambda () _stx81758_))
                   (_K8176381780_
                    (lambda (_hd81778_) (cons _stx81758_ _hd81778_))))
              (if (##pair? _g8175981767_)
                  (let* ((_hd8176481783_ (##car _g8175981767_))
                         (_hd81786_ _hd8176481783_))
                    (_K8176381780_ _hd81786_))
                  (_else8176181775_)))
            (if (gx#identifier? _stx81758_)
                (let* ((_id81788_ (gx#syntax-local-unwrap _stx81758_))
                       (_eid81790_ (gx#stx-e _id81788_))
                       (_marks81792_ (gx#stx-identifier-marks* _id81788_)))
                  (let* ((_marks8179481802_ _marks81792_)
                         (_else8179681810_ (lambda () _eid81790_))
                         (_K8179881815_
                          (lambda (_hd81813_) (cons _eid81790_ _hd81813_))))
                    (if (##pair? _marks8179481802_)
                        (let* ((_hd8179981818_ (##car _marks8179481802_))
                               (_hd81821_ _hd8179981818_))
                          (_K8179881815_ _hd81821_))
                        (_else8179681810_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx81758_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_ctx81703_ _phi81704_)
        (letrec ((_make-phi81706_
                  (lambda (_super81756_)
                    (let ((__obj84316
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj84316
                       (gensym 'phi)
                       _super81756_)
                      __obj84316)))
                 (_make-phi/up81707_
                  (lambda (_ctx81751_ _super81752_)
                    (let ((_ctx+181754_ (_make-phi81706_ _super81752_)))
                      (##unchecked-structure-set!
                       _ctx81751_
                       _ctx+181754_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+181754_
                       _ctx81751_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+181754_)))
                 (_make-phi/down81708_
                  (lambda (_ctx81746_ _super81747_)
                    (let ((_ctx-181749_ (_make-phi81706_ _super81747_)))
                      (##unchecked-structure-set!
                       _ctx-181749_
                       _ctx81746_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx81746_
                       _ctx-181749_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-181749_)))
                 (_shift81709_
                  (lambda (_ctx81730_
                           _delta81731_
                           _make-delta-context81732_
                           _phi81733_
                           _K81734_)
                    (let ((_$e81736_
                           (##unchecked-structure-ref
                            _ctx81730_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e81736_
                          ((lambda (_super81739_)
                             (let* ((_super81741_
                                     (_K81734_ _super81739_ _delta81731_))
                                    (_ctx+d81743_
                                     (_make-delta-context81732_
                                      _ctx81730_
                                      _super81741_)))
                               (_K81734_
                                _ctx+d81743_
                                (fx- _phi81733_ _delta81731_))))
                           _$e81736_)
                          (error '"Bad context" _ctx81730_))))))
          (let _K81711_ ((_ctx81713_ _ctx81703_) (_phi81714_ _phi81704_))
            (if (fxzero? _phi81714_)
                _ctx81713_
                (if (##structure-instance-of? _ctx81713_ 'gx#context-phi::t)
                    (if (fxpositive? _phi81714_)
                        (let ((_$e81716_
                               (##unchecked-structure-ref
                                _ctx81713_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e81716_
                              ((lambda (_g8171881720_)
                                 (_K81711_ _g8171881720_ (fx- _phi81714_ '1)))
                               _$e81716_)
                              (_shift81709_
                               _ctx81713_
                               '1
                               _make-phi/up81707_
                               _phi81714_
                               _K81711_)))
                        (let ((_$e81723_
                               (##unchecked-structure-ref
                                _ctx81713_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e81723_
                              ((lambda (_g8172581727_)
                                 (_K81711_ _g8172581727_ (fx+ _phi81714_ '1)))
                               _$e81723_)
                              (_shift81709_
                               _ctx81713_
                               '-1
                               _make-phi/down81708_
                               _phi81714_
                               _K81711_))))
                    _ctx81713_))))))
    (define gx#core-context-get
      (lambda (_ctx81700_ _key81701_)
        (hash-get
         (##unchecked-structure-ref _ctx81700_ '2 gx#expander-context::t '#f)
         _key81701_)))
    (define gx#core-context-put!
      (lambda (_ctx81696_ _key81697_ _val81698_)
        (hash-put!
         (##unchecked-structure-ref _ctx81696_ '2 gx#expander-context::t '#f)
         _key81697_
         _val81698_)))
    (define gx#core-context-resolve
      (lambda (_ctx81683_ _key81684_)
        (let _lp81686_ ((_ctx81688_ _ctx81683_))
          (let ((_$e81690_ (gx#core-context-get _ctx81688_ _key81684_)))
            (if _$e81690_
                (values _$e81690_)
                (let ((_$e81693_
                       (if (##structure-instance-of?
                            _ctx81688_
                            'gx#context-phi::t)
                           (##unchecked-structure-ref
                            _ctx81688_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e81693_ (_lp81686_ _$e81693_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx81673_ _key81674_ _val81675_ _rebind81676_)
        (let ((_$e81678_ (gx#core-context-get _ctx81673_ _key81674_)))
          (if _$e81678_
              ((lambda (_xval81681_)
                 (gx#core-context-put!
                  _ctx81673_
                  _key81674_
                  (_rebind81676_ _xval81681_)))
               _$e81678_)
              (gx#core-context-put! _ctx81673_ _key81674_ _val81675_)))))
    (define gx#core-context-top__%
      (lambda (_ctx81651_ _stop?81652_)
        (let _lp81654_ ((_ctx81656_ _ctx81651_))
          (if (_stop?81652_ _ctx81656_)
              _ctx81656_
              (if (##structure-instance-of? _ctx81656_ 'gx#context-phi::t)
                  (_lp81654_
                   (##unchecked-structure-ref
                    _ctx81656_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx81662_ (gx#current-expander-context))
               (_stop?81664_ gx#top-context?))
          (gx#core-context-top__% _ctx81662_ _stop?81664_))))
    (define gx#core-context-top__1
      (lambda (_ctx81666_)
        (let ((_stop?81668_ gx#top-context?))
          (gx#core-context-top__% _ctx81666_ _stop?81668_))))
    (define gx#core-context-top
      (lambda _g84347_
        (let ((_g84346_ (##length _g84347_)))
          (cond ((##fx= _g84346_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g84347_))
                ((##fx= _g84346_ 1)
                 (apply (lambda (_ctx81666_)
                          (gx#core-context-top__1 _ctx81666_))
                        _g84347_))
                ((##fx= _g84346_ 2)
                 (apply (lambda (_ctx81670_ _stop?81671_)
                          (gx#core-context-top__% _ctx81670_ _stop?81671_))
                        _g84347_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g84347_))))))
    (define gx#core-context-root__%
      (lambda (_ctx81636_)
        (let _lp81638_ ((_ctx81640_ _ctx81636_))
          (if (##structure-instance-of? _ctx81640_ 'gx#context-phi::t)
              (_lp81638_
               (##unchecked-structure-ref _ctx81640_ '3 gx#phi-context::t '#f))
              _ctx81640_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx81646_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx81646_))))
    (define gx#core-context-root
      (lambda _g84349_
        (let ((_g84348_ (##length _g84349_)))
          (cond ((##fx= _g84348_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g84349_))
                ((##fx= _g84348_ 1)
                 (apply (lambda (_ctx81648_)
                          (gx#core-context-root__% _ctx81648_))
                        _g84349_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g84349_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx81617_ . __8161481618_)
        (let ((_$e81621_ (gx#current-expander-allow-rebind?)))
          (if _$e81621_
              _$e81621_
              (if (##structure-instance-of? _ctx81617_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx81617_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx81617_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx81628_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx81628_))))
    (define gx#core-context-rebind?
      (lambda _g84351_
        (let ((_g84350_ (##length _g84351_)))
          (cond ((##fx= _g84350_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g84351_))
                ((##fx= _g84350_ 1)
                 (apply (lambda (_ctx81630_)
                          (gx#core-context-rebind?__% _ctx81630_))
                        _g84351_))
                ((##fx>= _g84350_ 1)
                 (apply gx#core-context-rebind?__% _g84351_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g84351_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx81600_)
        (let ((_$e81602_ (gx#core-context-top__1 _ctx81600_)))
          (if _$e81602_
              ((lambda (_ctx81605_)
                 (if (##structure-instance-of?
                      _ctx81605_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx81605_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e81602_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx81611_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx81611_))))
    (define gx#core-context-namespace
      (lambda _g84353_
        (let ((_g84352_ (##length _g84353_)))
          (cond ((##fx= _g84352_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g84353_))
                ((##fx= _g84352_ 1)
                 (apply (lambda (_ctx81613_)
                          (gx#core-context-namespace__% _ctx81613_))
                        _g84353_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g84353_))))))
    (define gx#expander-binding?__%
      (lambda (_bind81586_ _is?81587_)
        (if (##structure-direct-instance-of? _bind81586_ 'gx#syntax-binding::t)
            (_is?81587_
             (##unchecked-structure-ref
              _bind81586_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind81592_)
        (let ((_is?81594_ gx#expander?))
          (gx#expander-binding?__% _bind81592_ _is?81594_))))
    (define gx#expander-binding?
      (lambda _g84355_
        (let ((_g84354_ (##length _g84355_)))
          (cond ((##fx= _g84354_ 1)
                 (apply (lambda (_bind81592_)
                          (gx#expander-binding?__0 _bind81592_))
                        _g84355_))
                ((##fx= _g84354_ 2)
                 (apply (lambda (_bind81596_ _is?81597_)
                          (gx#expander-binding?__% _bind81596_ _is?81597_))
                        _g84355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g84355_))))))
    (define gx#core-expander-binding?
      (lambda (_bind81583_)
        (gx#expander-binding?__% _bind81583_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind81581_)
        (gx#expander-binding?__% _bind81581_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind81575_)
        (letrec ((_direct-special-form?81577_
                  (lambda (_obj81579_)
                    (##structure-direct-instance-of?
                     _obj81579_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind81575_ _direct-special-form?81577_))))
    (define gx#special-form-binding?
      (lambda (_bind81573_)
        (gx#expander-binding?__% _bind81573_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind81564_)
        (letrec ((_feature?81566_
                  (lambda (_e81568_)
                    (let ((_$e81570_
                           (##structure-instance-of?
                            _e81568_
                            'gx#feature-expander::t)))
                      (if _$e81570_
                          _$e81570_
                          (##structure-instance-of?
                           _e81568_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind81564_ _feature?81566_))))
    (define gx#private-feature-binding?
      (lambda (_bind81562_)
        (gx#expander-binding?__% _bind81562_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id81549_ _bound?81550_)
        (if (gx#identifier? _id81549_)
            (_bound?81550_ (gx#resolve-identifier__0 _id81549_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id81555_)
        (let ((_bound?81557_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id81555_ _bound?81557_))))
    (define gx#core-bound-identifier?
      (lambda _g84357_
        (let ((_g84356_ (##length _g84357_)))
          (cond ((##fx= _g84356_ 1)
                 (apply (lambda (_id81555_)
                          (gx#core-bound-identifier?__0 _id81555_))
                        _g84357_))
                ((##fx= _g84356_ 2)
                 (apply (lambda (_id81559_ _bound?81560_)
                          (gx#core-bound-identifier?__%
                           _id81559_
                           _bound?81560_))
                        _g84357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g84357_))))))
    (define gx#core-identifier=?
      (lambda (_x81539_ _y81540_)
        (letrec ((_y=?81542_
                  (lambda (_xid81546_)
                    ((if (list? _y81540_) memq eq?) _xid81546_ _y81540_))))
          (let ((_bind81544_ (gx#resolve-identifier__0 _x81539_)))
            (if (##structure-instance-of? _bind81544_ 'gx#binding::t)
                (_y=?81542_
                 (##unchecked-structure-ref _bind81544_ '1 gx#binding::t '#f))
                (_y=?81542_ (gx#stx-e _x81539_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e81537_)
        (if (interned-symbol? _e81537_)
            (string-index__0 (symbol->string _e81537_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx81492_ _src81493_ _ctx81494_ _marks81495_)
        (if (##structure? _stx81492_)
            (let ((_$e81497_ (gx#sealed-syntax-unwrap _stx81492_)))
              (if _$e81497_
                  (values _$e81497_)
                  (if (gx#identifier? _stx81492_)
                      (let ((_id81500_
                             (gx#stx-unwrap__% _stx81492_ _marks81495_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id81500_ '1 gx#AST::t '#f)
                         (let ((_$e81502_
                                (##unchecked-structure-ref
                                 _id81500_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e81502_ _$e81502_ _src81493_))
                         _ctx81494_
                         (##unchecked-structure-ref
                          _id81500_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx81492_)
                       (let ((_$e81505_ (gx#stx-source _stx81492_)))
                         (if _$e81505_ _$e81505_ _src81493_))
                       _ctx81494_
                       (reverse _marks81495_)))))
            (##structure
             gx#syntax-quote::t
             _stx81492_
             _src81493_
             _ctx81494_
             (reverse _marks81495_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx81511_)
        (let* ((_src81513_ '#f)
               (_ctx81515_ (gx#current-expander-context))
               (_marks81517_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81511_
           _src81513_
           _ctx81515_
           _marks81517_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx81519_ _src81520_)
        (let* ((_ctx81522_ (gx#current-expander-context))
               (_marks81524_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81519_
           _src81520_
           _ctx81522_
           _marks81524_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx81526_ _src81527_ _ctx81528_)
        (let ((_marks81530_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81526_
           _src81527_
           _ctx81528_
           _marks81530_))))
    (define gx#core-quote-syntax
      (lambda _g84359_
        (let ((_g84358_ (##length _g84359_)))
          (cond ((##fx= _g84358_ 1)
                 (apply (lambda (_stx81511_)
                          (gx#core-quote-syntax__0 _stx81511_))
                        _g84359_))
                ((##fx= _g84358_ 2)
                 (apply (lambda (_stx81519_ _src81520_)
                          (gx#core-quote-syntax__1 _stx81519_ _src81520_))
                        _g84359_))
                ((##fx= _g84358_ 3)
                 (apply (lambda (_stx81526_ _src81527_ _ctx81528_)
                          (gx#core-quote-syntax__2
                           _stx81526_
                           _src81527_
                           _ctx81528_))
                        _g84359_))
                ((##fx= _g84358_ 4)
                 (apply (lambda (_stx81532_ _src81533_ _ctx81534_ _marks81535_)
                          (gx#core-quote-syntax__%
                           _stx81532_
                           _src81533_
                           _ctx81534_
                           _marks81535_))
                        _g84359_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g84359_))))))
    (define gx#core-cons
      (lambda (_hd81488_ _tl81489_)
        (cons (gx#core-quote-syntax__0 _hd81488_) _tl81489_)))
    (define gx#core-list
      (lambda (_hd81485_ . _rest81486_)
        (cons (gx#core-quote-syntax__0 _hd81485_) _rest81486_)))
    (define gx#core-cons*
      (lambda (_hd81482_ . _rest81483_)
        (apply cons* (gx#core-quote-syntax__0 _hd81482_) _rest81483_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path81456_ _rel81457_)
        (let ((_path81469_ (gx#stx-e _stx-path81456_))
              (_reldir81470_
               (let _lp81459_ ((_relsrc81461_
                                (let ((_$e81466_
                                       (gx#stx-source _stx-path81456_)))
                                  (if _$e81466_ _$e81466_ _rel81457_))))
                 (if (##structure-instance-of? _relsrc81461_ 'gerbil#AST::t)
                     (_lp81459_
                      (let ((_$e81463_ (gx#stx-source _relsrc81461_)))
                        (if _$e81463_ _$e81463_ (gx#stx-e _relsrc81461_))))
                     (if (source-location-path? _relsrc81461_)
                         (path-directory (source-location-path _relsrc81461_))
                         (if (string? _relsrc81461_)
                             (path-directory _relsrc81461_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path81469_ (path-normalize _reldir81470_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path81475_)
        (let ((_rel81477_ '#f))
          (gx#core-resolve-path__% _stx-path81475_ _rel81477_))))
    (define gx#core-resolve-path
      (lambda _g84361_
        (let ((_g84360_ (##length _g84361_)))
          (cond ((##fx= _g84360_ 1)
                 (apply (lambda (_stx-path81475_)
                          (gx#core-resolve-path__0 _stx-path81475_))
                        _g84361_))
                ((##fx= _g84360_ 2)
                 (apply (lambda (_stx-path81479_ _rel81480_)
                          (gx#core-resolve-path__% _stx-path81479_ _rel81480_))
                        _g84361_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g84361_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr81412_ _ctx81413_)
        (let* ((_repr8141481421_ _repr81412_)
               (_E8141681425_
                (lambda () (error '"No clause matching" _repr8141481421_)))
               (_K8141781433_
                (lambda (_subs81428_ _phi81429_)
                  (let ((_subst81431_
                         (if (not (null? _subs81428_))
                             (list->hash-table-eq _subs81428_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst81431_
                     _ctx81413_
                     _phi81429_
                     '#f)))))
          (if (##pair? _repr8141481421_)
              (let ((_hd8141881436_ (##car _repr8141481421_))
                    (_tl8141981438_ (##cdr _repr8141481421_)))
                (let* ((_phi81441_ _hd8141881436_)
                       (_subs81443_ _tl8141981438_))
                  (_K8141781433_ _subs81443_ _phi81441_)))
              (_E8141681425_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr81448_)
        (let ((_ctx81450_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr81448_ _ctx81450_))))
    (define gx#core-deserialize-mark
      (lambda _g84363_
        (let ((_g84362_ (##length _g84363_)))
          (cond ((##fx= _g84362_ 1)
                 (apply (lambda (_repr81448_)
                          (gx#core-deserialize-mark__0 _repr81448_))
                        _g84363_))
                ((##fx= _g84362_ 2)
                 (apply (lambda (_repr81452_ _ctx81453_)
                          (gx#core-deserialize-mark__% _repr81452_ _ctx81453_))
                        _g84363_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g84363_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx81409_)
        (gx#stx-rewrap _stx81409_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx81407_)
        (gx#stx-unwrap__% _stx81407_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx81377_)
        (let* ((_g8137881386_ (gx#current-expander-marks))
               (_else8138081394_ (lambda () _stx81377_))
               (_K8138281399_
                (lambda (_hd81397_) (gx#stx-apply-mark _stx81377_ _hd81397_))))
          (if (##pair? _g8137881386_)
              (let* ((_hd8138381402_ (##car _g8137881386_))
                     (_hd81405_ _hd8138381402_))
                (_K8138281399_ _hd81405_))
              (_else8138081394_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx81362_ _E81363_)
        (let ((_bind81365_ (gx#resolve-identifier__0 _stx81362_)))
          (if (##structure-direct-instance-of?
               _bind81365_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind81365_
               '4
               gx#syntax-binding::t
               '#f)
              (_E81363_ _stx81362_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx81370_)
        (let ((_E81372_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx81370_ _E81372_))))
    (define gx#syntax-local-e
      (lambda _g84365_
        (let ((_g84364_ (##length _g84365_)))
          (cond ((##fx= _g84364_ 1)
                 (apply (lambda (_stx81370_) (gx#syntax-local-e__0 _stx81370_))
                        _g84365_))
                ((##fx= _g84364_ 2)
                 (apply (lambda (_stx81374_ _E81375_)
                          (gx#syntax-local-e__% _stx81374_ _E81375_))
                        _g84365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g84365_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx81346_ _E81347_)
        (let ((_e81349_ (gx#syntax-local-e__% _stx81346_ _E81347_)))
          (if (##structure-instance-of? _e81349_ 'gx#expander::t)
              (##structure-ref _e81349_ '1 gx#expander::t '#f)
              _e81349_))))
    (define gx#syntax-local-value__0
      (lambda (_stx81354_)
        (let ((_E81356_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx81354_ _E81356_))))
    (define gx#syntax-local-value
      (lambda _g84367_
        (let ((_g84366_ (##length _g84367_)))
          (cond ((##fx= _g84366_ 1)
                 (apply (lambda (_stx81354_)
                          (gx#syntax-local-value__0 _stx81354_))
                        _g84367_))
                ((##fx= _g84366_ 2)
                 (apply (lambda (_stx81358_ _E81359_)
                          (gx#syntax-local-value__% _stx81358_ _E81359_))
                        _g84367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g84367_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx81343_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx81343_)))))
