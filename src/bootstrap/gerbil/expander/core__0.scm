(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1708334575)
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
      (lambda _$args158385_
        (apply make-instance gx#expander-context::t _$args158385_)))
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
      (lambda _$args158382_
        (apply make-instance gx#root-context::t _$args158382_)))
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
      (lambda _$args158379_
        (apply make-instance gx#phi-context::t _$args158379_)))
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
      (lambda _$args158376_
        (apply make-instance gx#top-context::t _$args158376_)))
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
      (lambda _$args158373_
        (apply make-instance gx#module-context::t _$args158373_)))
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
      (lambda _$args158370_
        (apply make-instance gx#prelude-context::t _$args158370_)))
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
      (lambda _$args158367_
        (apply make-instance gx#local-context::t _$args158367_)))
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
      (lambda (_self158351_ _id158352_ _super158353_)
        (if (##fx< '3 (##structure-length _self158351_))
            (begin
              (##unchecked-structure-set!
               _self158351_
               _id158352_
               '1
               (##structure-type _self158351_)
               '#f)
              (##unchecked-structure-set!
               _self158351_
               (make-hash-table-eq)
               '2
               (##structure-type _self158351_)
               '#f)
              (##unchecked-structure-set!
               _self158351_
               _super158353_
               '3
               (##structure-type _self158351_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self158351_
                   '3
                   (##vector-length _self158351_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self158358_ _id158359_)
        (let ((_super158361_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self158358_ _id158359_ _super158361_))))
    (define gx#phi-context:::init!
      (lambda _g162495_
        (let ((_g162494_ (##length _g162495_)))
          (cond ((##fx= _g162494_ 2)
                 (apply (lambda (_self158358_ _id158359_)
                          (gx#phi-context:::init!__0 _self158358_ _id158359_))
                        _g162495_))
                ((##fx= _g162494_ 3)
                 (apply (lambda (_self158363_ _id158364_ _super158365_)
                          (gx#phi-context:::init!__%
                           _self158363_
                           _id158364_
                           _super158365_))
                        _g162495_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g162495_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self158215_ _super158216_)
        (if (##fx< '3 (##structure-length _self158215_))
            (begin
              (##unchecked-structure-set!
               _self158215_
               (gensym 'L)
               '1
               (##structure-type _self158215_)
               '#f)
              (##unchecked-structure-set!
               _self158215_
               (make-hash-table-eq)
               '2
               (##structure-type _self158215_)
               '#f)
              (##unchecked-structure-set!
               _self158215_
               _super158216_
               '3
               (##structure-type _self158215_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self158215_
                   '3
                   (##vector-length _self158215_)))))
    (define gx#local-context:::init!__0
      (lambda (_self158221_)
        (let ((_super158223_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self158221_ _super158223_))))
    (define gx#local-context:::init!
      (lambda _g162497_
        (let ((_g162496_ (##length _g162497_)))
          (cond ((##fx= _g162496_ 1)
                 (apply (lambda (_self158221_)
                          (gx#local-context:::init!__0 _self158221_))
                        _g162497_))
                ((##fx= _g162496_ 2)
                 (apply (lambda (_self158225_ _super158226_)
                          (gx#local-context:::init!__%
                           _self158225_
                           _super158226_))
                        _g162497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g162497_))))))
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
      (lambda _$args158089_ (apply make-instance gx#binding::t _$args158089_)))
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
      (lambda _$args158086_
        (apply make-instance gx#runtime-binding::t _$args158086_)))
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
      (lambda _$args158083_
        (apply make-instance gx#local-binding::t _$args158083_)))
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
      (lambda _$args158080_
        (apply make-instance gx#top-binding::t _$args158080_)))
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
      (lambda _$args158077_
        (apply make-instance gx#module-binding::t _$args158077_)))
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
      (lambda _$args158074_
        (apply make-instance gx#extern-binding::t _$args158074_)))
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
      (lambda _$args158071_
        (apply make-instance gx#syntax-binding::t _$args158071_)))
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
      (lambda _$args158068_
        (apply make-instance gx#import-binding::t _$args158068_)))
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
      (lambda _$args158065_
        (apply make-instance gx#alias-binding::t _$args158065_)))
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
      (lambda _$args158062_
        (apply make-instance gx#expander::t _$args158062_)))
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
      (lambda _$args158059_
        (apply make-instance gx#core-expander::t _$args158059_)))
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
      (lambda _$args158056_
        (apply make-instance gx#expression-form::t _$args158056_)))
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
      (lambda _$args158053_
        (apply make-instance gx#special-form::t _$args158053_)))
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
      (lambda _$args158050_
        (apply make-instance gx#definition-form::t _$args158050_)))
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
      (lambda _$args158047_
        (apply make-instance gx#top-special-form::t _$args158047_)))
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
      (lambda _$args158044_
        (apply make-instance gx#module-special-form::t _$args158044_)))
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
      (lambda _$args158041_
        (apply make-instance gx#feature-expander::t _$args158041_)))
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
      (lambda _$args158038_
        (apply make-instance gx#private-feature-expander::t _$args158038_)))
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
      (lambda _$args158035_
        (apply make-instance gx#reserved-expander::t _$args158035_)))
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
      (lambda _$args158032_
        (apply make-instance gx#macro-expander::t _$args158032_)))
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
      (lambda _$args158029_
        (apply make-instance gx#rename-macro-expander::t _$args158029_)))
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
      (lambda _$args158026_
        (apply make-instance gx#user-expander::t _$args158026_)))
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
      (lambda _$args158023_
        (apply make-instance gx#expander-mark::t _$args158023_)))
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
      (lambda (_ctx158008_ _message158009_ _stx158010_ . _details158011_)
        (let ((_ctx158021_
               (let ((_$e158013_ _ctx158008_))
                 (if _$e158013_
                     _$e158013_
                     (let ((_$e158016_ (gx#core-context-top__0)))
                       (if _$e158016_
                           ((lambda (_ctx158019_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx158019_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e158016_)
                           '#f))))))
          (raise (make-syntax-error
                  _message158009_
                  (cons _stx158010_ _details158011_)
                  _ctx158021_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx157995_ _expression?157996_)
        (gx#eval-syntax* (gx#core-expand__% _stx157995_ _expression?157996_))))
    (define gx#eval-syntax__0
      (lambda (_stx158001_)
        (let ((_expression?158003_ '#f))
          (gx#eval-syntax__% _stx158001_ _expression?158003_))))
    (define gx#eval-syntax
      (lambda _g162499_
        (let ((_g162498_ (##length _g162499_)))
          (cond ((##fx= _g162498_ 1)
                 (apply (lambda (_stx158001_) (gx#eval-syntax__0 _stx158001_))
                        _g162499_))
                ((##fx= _g162498_ 2)
                 (apply (lambda (_stx158005_ _expression?158006_)
                          (gx#eval-syntax__% _stx158005_ _expression?158006_))
                        _g162499_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g162499_))))))
    (define gx#eval-syntax*
      (lambda (_stx157992_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx157992_))))
    (define gx#core-expand__%
      (lambda (_stx157979_ _expression?157980_)
        (if _expression?157980_
            (gx#core-expand-expression _stx157979_)
            (gx#core-expand-top _stx157979_))))
    (define gx#core-expand__0
      (lambda (_stx157985_)
        (let ((_expression?157987_ '#f))
          (gx#core-expand__% _stx157985_ _expression?157987_))))
    (define gx#core-expand
      (lambda _g162501_
        (let ((_g162500_ (##length _g162501_)))
          (cond ((##fx= _g162500_ 1)
                 (apply (lambda (_stx157985_) (gx#core-expand__0 _stx157985_))
                        _g162501_))
                ((##fx= _g162500_ 2)
                 (apply (lambda (_stx157989_ _expression?157990_)
                          (gx#core-expand__% _stx157989_ _expression?157990_))
                        _g162501_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g162501_))))))
    (define gx#core-expand-top
      (lambda (_stx157946_)
        (let* ((_stx157948_ (gx#core-expand*__0 _stx157946_))
               (_e157949157956_ _stx157948_)
               (_E157951157960_
                (lambda () (gx#core-expand-expression _stx157948_)))
               (_E157950157974_
                (lambda ()
                  (if (gx#stx-pair? _e157949157956_)
                      (let ((_e157952157964_ (gx#syntax-e _e157949157956_)))
                        (let ((_hd157953157967_ (##car _e157952157964_))
                              (_tl157954157969_ (##cdr _e157952157964_)))
                          (let ((_form157972_ _hd157953157967_))
                            (if (gx#core-bound-identifier?__0 _form157972_)
                                _stx157948_
                                (_E157951157960_)))))
                      (_E157951157960_)))))
          (_E157950157974_))))
    (define gx#core-expand-expression
      (lambda (_stx157893_)
        (letrec ((_sealed-expression?157895_
                  (lambda (_hd157916_)
                    (if (gx#sealed-syntax? _hd157916_)
                        (let* ((_e157917157924_ _hd157916_)
                               (_E157919157928_ (lambda () '#f))
                               (_E157918157942_
                                (lambda ()
                                  (if (gx#stx-pair? _e157917157924_)
                                      (let ((_e157920157932_
                                             (gx#syntax-e _e157917157924_)))
                                        (let ((_hd157921157935_
                                               (##car _e157920157932_))
                                              (_tl157922157937_
                                               (##cdr _e157920157932_)))
                                          (let ((_form157940_
                                                 _hd157921157935_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form157940_
                                                 gx#expression-form-binding?)
                                                (_E157919157928_)))))
                                      (_E157919157928_)))))
                          (_E157918157942_))
                        '#f)))
                 (_illegal-expression157896_
                  (lambda (_hd157914_ . _g162502_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx157893_
                     _hd157914_)))
                 (_expand-e157897_
                  (lambda (_form157909_ _hd157910_)
                    (let ((_bind157912_
                           (if (##structure-instance-of?
                                _form157909_
                                'gx#binding::t)
                               _form157909_
                               (gx#resolve-identifier__0 _form157909_))))
                      (if (gx#core-expander-binding? _bind157912_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind157912_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd157910_
                            (gx#stx-source _stx157893_)))
                          (if (##structure-direct-instance-of?
                               _bind157912_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind157912_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd157910_
                                 (gx#stx-source _stx157893_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx157893_
                               _form157909_)))))))
          (let ((_hd157899_ (gx#core-expand-head _stx157893_)))
            (if (_sealed-expression?157895_ _hd157899_)
                _hd157899_
                (if (gx#stx-pair? _hd157899_)
                    (let* ((_form157901_ (gx#stx-car _hd157899_))
                           (_bind157903_
                            (if (gx#identifier? _form157901_)
                                (gx#resolve-identifier__0 _form157901_)
                                '#f)))
                      (if (or (not _bind157903_)
                              (not (gx#core-expander-binding? _bind157903_)))
                          (_expand-e157897_ '%%app (cons '%%app _hd157899_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind157903_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd157899_
                               _illegal-expression157896_)
                              (if (gx#expression-form-binding? _bind157903_)
                                  (_expand-e157897_ _bind157903_ _hd157899_)
                                  (if (gx#direct-special-form-binding?
                                       _bind157903_)
                                      (gx#core-expand-expression
                                       (_expand-e157897_
                                        _bind157903_
                                        _hd157899_))
                                      (_illegal-expression157896_
                                       _hd157899_))))))
                    (if (gx#core-bound-identifier?__0 _hd157899_)
                        (_illegal-expression157896_ _hd157899_)
                        (if (gx#identifier? _hd157899_)
                            (_expand-e157897_
                             '%%ref
                             (cons '%%ref (cons _hd157899_ '())))
                            (if (gx#stx-datum? _hd157899_)
                                (_expand-e157897_
                                 '%#quote
                                 (cons '%#quote (cons _hd157899_ '())))
                                (_illegal-expression157896_
                                 _hd157899_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx157888_)
        (call-with-parameters
         (lambda ()
           (let ((_stx157891_ (gx#core-expand-expression _stx157888_)))
             (values _stx157891_ (gx#eval-syntax* _stx157891_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx157869_ _stop?157870_)
        (let _lp157872_ ((_stx157874_ _stx157869_))
          (if (_stop?157870_ _stx157874_)
              _stx157874_
              (let ((_rstx157876_ (gx#core-expand1 _stx157874_)))
                (if (eq? _stx157874_ _rstx157876_)
                    _stx157874_
                    (_lp157872_ _rstx157876_)))))))
    (define gx#core-expand*__0
      (lambda (_stx157881_)
        (let ((_stop?157883_ false))
          (gx#core-expand*__% _stx157881_ _stop?157883_))))
    (define gx#core-expand*
      (lambda _g162504_
        (let ((_g162503_ (##length _g162504_)))
          (cond ((##fx= _g162503_ 1)
                 (apply (lambda (_stx157881_) (gx#core-expand*__0 _stx157881_))
                        _g162504_))
                ((##fx= _g162503_ 2)
                 (apply (lambda (_stx157885_ _stop?157886_)
                          (gx#core-expand*__% _stx157885_ _stop?157886_))
                        _g162504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g162504_))))))
    (define gx#core-expand1
      (lambda (_stx157825_)
        (letrec ((_step157827_
                  (lambda (_hd157864_)
                    (let ((_bind157866_ (gx#resolve-identifier__0 _hd157864_)))
                      (if (##structure-instance-of?
                           _bind157866_
                           'gx#runtime-binding::t)
                          _stx157825_
                          (if (##structure-direct-instance-of?
                               _bind157866_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind157866_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx157825_)
                              (if (not _bind157866_)
                                  _stx157825_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx157825_))))))))
          (let* ((_e157828157836_ _stx157825_)
                 (_E157834157840_ (lambda () _stx157825_))
                 (_E157830157846_
                  (lambda ()
                    (let ((_hd157844_ _e157828157836_))
                      (if (gx#identifier? _hd157844_)
                          (_step157827_ _hd157844_)
                          (_E157834157840_)))))
                 (_E157829157860_
                  (lambda ()
                    (if (gx#stx-pair? _e157828157836_)
                        (let ((_e157831157850_ (gx#syntax-e _e157828157836_)))
                          (let ((_hd157832157853_ (##car _e157831157850_))
                                (_tl157833157855_ (##cdr _e157831157850_)))
                            (let ((_hd157858_ _hd157832157853_))
                              (if (gx#identifier? _hd157858_)
                                  (_step157827_ _hd157858_)
                                  (_E157830157846_)))))
                        (_E157830157846_)))))
            (_E157829157860_)))))
    (define gx#core-expand-head
      (lambda (_stx157791_)
        (letrec ((_stop?157793_
                  (lambda (_stx157795_)
                    (let* ((_e157796157803_ _stx157795_)
                           (_E157798157807_ (lambda () '#f))
                           (_E157797157821_
                            (lambda ()
                              (if (gx#stx-pair? _e157796157803_)
                                  (let ((_e157799157811_
                                         (gx#syntax-e _e157796157803_)))
                                    (let ((_hd157800157814_
                                           (##car _e157799157811_))
                                          (_tl157801157816_
                                           (##cdr _e157799157811_)))
                                      (let ((_hd157819_ _hd157800157814_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd157819_)
                                            (_E157798157807_)))))
                                  (_E157798157807_)))))
                      (_E157797157821_)))))
          (gx#core-expand*__% _stx157791_ _stop?157793_))))
    (define gx#core-expand-block__%
      (lambda (_stx157597_
               _expand-special157598_
               _begin-form157599_
               _expand-e157600_)
        (letrec ((_expand-splice157602_
                  (lambda (_hd157765_ _body157766_ _rest157767_ _r157768_)
                    (if (gx#stx-list? _body157766_)
                        (_K157606_
                         (gx#stx-foldr cons _rest157767_ _body157766_)
                         _r157768_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx157597_
                         _hd157765_))))
                 (_expand-cond-expand157603_
                  (lambda (_hd157761_ _rest157762_ _r157763_)
                    (_K157606_
                     (cons (gx#core-expand-cond-expand% _hd157761_)
                           _rest157762_)
                     _r157763_)))
                 (_expand-include157604_
                  (lambda (_hd157710_ _rest157711_ _r157712_)
                    (let* ((_e157713157723_ _hd157710_)
                           (_E157715157727_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157713157723_)))
                           (_E157714157757_
                            (lambda ()
                              (if (gx#stx-pair? _e157713157723_)
                                  (let ((_e157716157731_
                                         (gx#syntax-e _e157713157723_)))
                                    (let ((_hd157717157734_
                                           (##car _e157716157731_))
                                          (_tl157718157736_
                                           (##cdr _e157716157731_)))
                                      (if (gx#stx-pair? _tl157718157736_)
                                          (let ((_e157719157739_
                                                 (gx#syntax-e
                                                  _tl157718157736_)))
                                            (let ((_hd157720157742_
                                                   (##car _e157719157739_))
                                                  (_tl157721157744_
                                                   (##cdr _e157719157739_)))
                                              (let ((_path157747_
                                                     _hd157720157742_))
                                                (if (gx#stx-null?
                                                     _tl157721157744_)
                                                    (if (gx#stx-string?
                                                         _path157747_)
                                                        (let* ((_rpath157749_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path157747_
                         (gx#stx-source _hd157710_)))
                       (_block157751_
                        (gx#core-expand-include%__% _hd157710_ _rpath157749_))
                       (_rbody157754_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block157751_
                            _expand-special157598_
                            '#f
                            _expand-e157600_))
                         gx#current-expander-path
                         (cons _rpath157749_ (gx#current-expander-path)))))
                  (_K157606_
                   _rest157711_
                   (foldr1 cons _r157712_ _rbody157754_)))
                (_E157715157727_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E157715157727_)))))
                                          (_E157715157727_))))
                                  (_E157715157727_)))))
                      (_E157714157757_))))
                 (_expand-expression157605_
                  (lambda (_hd157706_ _rest157707_ _r157708_)
                    (_K157606_
                     _rest157707_
                     (cons (_expand-e157600_ _hd157706_) _r157708_))))
                 (_K157606_
                  (lambda (_rest157636_ _r157637_)
                    (let* ((_e157638157645_ _rest157636_)
                           (_E157640157649_
                            (lambda ()
                              (if _begin-form157599_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form157599_
                                    (reverse _r157637_))
                                   (gx#stx-source _stx157597_))
                                  _r157637_)))
                           (_E157639157702_
                            (lambda ()
                              (if (gx#stx-pair? _e157638157645_)
                                  (let ((_e157641157653_
                                         (gx#syntax-e _e157638157645_)))
                                    (let ((_hd157642157656_
                                           (##car _e157641157653_))
                                          (_tl157643157658_
                                           (##cdr _e157641157653_)))
                                      (let* ((_hd157661_ _hd157642157656_)
                                             (_rest157663_ _tl157643157658_))
                                        (if '#t
                                            (let* ((_hd157665_
                                                    (gx#core-expand-head
                                                     _hd157661_))
                                                   (_e157666157673_ _hd157665_)
                                                   (_E157668157677_
                                                    (lambda ()
                                                      (_expand-expression157605_
                                                       _hd157665_
                                                       _rest157663_
                                                       _r157637_)))
                                                   (_E157667157698_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e157666157673_)
                                                          (let ((_e157669157681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e157666157673_)))
                    (let ((_hd157670157684_ (##car _e157669157681_))
                          (_tl157671157686_ (##cdr _e157669157681_)))
                      (let* ((_form157689_ _hd157670157684_)
                             (_body157691_ _tl157671157686_))
                        (if '#t
                            (let ((_bind157693_
                                   (if (gx#identifier? _form157689_)
                                       (gx#resolve-identifier__0 _form157689_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind157693_)
                                  (let ((_$e157695_
                                         (##unchecked-structure-ref
                                          _bind157693_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e157695_)
                                        (_expand-splice157602_
                                         _hd157665_
                                         _body157691_
                                         _rest157663_
                                         _r157637_)
                                        (if (eq? '%#cond-expand _$e157695_)
                                            (_expand-cond-expand157603_
                                             _hd157665_
                                             _rest157663_
                                             _r157637_)
                                            (if (eq? '%#include _$e157695_)
                                                (_expand-include157604_
                                                 _hd157665_
                                                 _rest157663_
                                                 _r157637_)
                                                (_expand-special157598_
                                                 _hd157665_
                                                 _K157606_
                                                 _rest157663_
                                                 _r157637_)))))
                                  (_expand-expression157605_
                                   _hd157665_
                                   _rest157663_
                                   _r157637_)))
                            (_E157668157677_)))))
                  (_E157668157677_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E157667157698_))
                                            (_E157640157649_)))))
                                  (_E157640157649_)))))
                      (_E157639157702_)))))
          (let* ((_e157607157614_ _stx157597_)
                 (_E157609157618_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e157607157614_)))
                 (_E157608157632_
                  (lambda ()
                    (if (gx#stx-pair? _e157607157614_)
                        (let ((_e157610157622_ (gx#syntax-e _e157607157614_)))
                          (let ((_hd157611157625_ (##car _e157610157622_))
                                (_tl157612157627_ (##cdr _e157610157622_)))
                            (let ((_body157630_ _tl157612157627_))
                              (if (gx#stx-list? _body157630_)
                                  (_K157606_ _body157630_ '())
                                  (_E157609157618_)))))
                        (_E157609157618_)))))
            (_E157608157632_)))))
    (define gx#core-expand-block__0
      (lambda (_stx157773_ _expand-special157774_)
        (let* ((_begin-form157776_ '%#begin)
               (_expand-e157778_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx157773_
           _expand-special157774_
           _begin-form157776_
           _expand-e157778_))))
    (define gx#core-expand-block__1
      (lambda (_stx157780_ _expand-special157781_ _begin-form157782_)
        (let ((_expand-e157784_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx157780_
           _expand-special157781_
           _begin-form157782_
           _expand-e157784_))))
    (define gx#core-expand-block
      (lambda _g162506_
        (let ((_g162505_ (##length _g162506_)))
          (cond ((##fx= _g162505_ 2)
                 (apply (lambda (_stx157773_ _expand-special157774_)
                          (gx#core-expand-block__0
                           _stx157773_
                           _expand-special157774_))
                        _g162506_))
                ((##fx= _g162505_ 3)
                 (apply (lambda (_stx157780_
                                 _expand-special157781_
                                 _begin-form157782_)
                          (gx#core-expand-block__1
                           _stx157780_
                           _expand-special157781_
                           _begin-form157782_))
                        _g162506_))
                ((##fx= _g162505_ 4)
                 (apply (lambda (_stx157786_
                                 _expand-special157787_
                                 _begin-form157788_
                                 _expand-e157789_)
                          (gx#core-expand-block__%
                           _stx157786_
                           _expand-special157787_
                           _begin-form157788_
                           _expand-e157789_))
                        _g162506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g162506_))))))
    (define gx#core-expand-block*
      (lambda (_stx157545_ _expand-special157546_)
        (let* ((_g157547157558_
                (gx#core-expand-block__1
                 _stx157545_
                 _expand-special157546_
                 '#f))
               (_E157551157562_
                (lambda () (error '"No clause matching" _g157547157558_))))
          (let ((_K157556157593_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx157545_)))
                (_K157553157579_ (lambda (_expr157577_) _expr157577_))
                (_K157552157568_
                 (lambda (_body157566_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body157566_))
                    (gx#stx-source _stx157545_)))))
            (let ((_try-match157549157589_
                   (lambda ()
                     (if (##pair? _g157547157558_)
                         (let ((_tl157555157584_ (##cdr _g157547157558_))
                               (_hd157554157582_ (##car _g157547157558_)))
                           (if (##null? _tl157555157584_)
                               (let ((_expr157587_ _hd157554157582_))
                                 (_K157553157579_ _expr157587_))
                               (let ((_body157571_ _g157547157558_))
                                 (_K157552157568_ _body157571_))))
                         (let ((_body157571_ _g157547157558_))
                           (_K157552157568_ _body157571_))))))
              (if (##null? _g157547157558_)
                  (_K157556157593_)
                  (_try-match157549157589_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx157373_)
        (letrec ((_satisfied?157375_
                  (lambda (_condition157473_)
                    (let* ((_e157474157489_ _condition157473_)
                           (_E157484157493_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157474157489_)))
                           (_E157477157512_
                            (lambda ()
                              (if (gx#stx-pair? _e157474157489_)
                                  (let ((_e157485157497_
                                         (gx#syntax-e _e157474157489_)))
                                    (let ((_hd157486157500_
                                           (##car _e157485157497_))
                                          (_tl157487157502_
                                           (##cdr _e157485157497_)))
                                      (let* ((_combinator157505_
                                              _hd157486157500_)
                                             (_body157507_ _tl157487157502_))
                                        (if (gx#stx-list? _body157507_)
                                            (let ((_$e157509_
                                                   (gx#stx-e
                                                    _combinator157505_)))
                                              (if (eq? 'not _$e157509_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?157375_
                                                        _body157507_))
                                                  (if (eq? 'and _$e157509_)
                                                      (gx#stx-andmap
                                                       _satisfied?157375_
                                                       _body157507_)
                                                      (if (eq? 'or _$e157509_)
                                                          (gx#stx-ormap
                                                           _satisfied?157375_
                                                           _body157507_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e157509_)
                      (gx#stx-andmap gx#core-resolve-identifier _body157507_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx157373_
                       _combinator157505_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E157484157493_)))))
                                  (_E157484157493_))))
                           (_E157476157535_
                            (lambda ()
                              (if (gx#stx-pair? _e157474157489_)
                                  (let ((_e157478157516_
                                         (gx#syntax-e _e157474157489_)))
                                    (let ((_hd157479157519_
                                           (##car _e157478157516_))
                                          (_tl157480157521_
                                           (##cdr _e157478157516_)))
                                      (if (and (gx#identifier?
                                                _hd157479157519_)
                                               (gx#core-identifier=?
                                                _hd157479157519_
                                                'unquote))
                                          (if (gx#stx-pair? _tl157480157521_)
                                              (let ((_e157481157524_
                                                     (gx#syntax-e
                                                      _tl157480157521_)))
                                                (let ((_hd157482157527_
                                                       (##car _e157481157524_))
                                                      (_tl157483157529_
                                                       (##cdr _e157481157524_)))
                                                  (let ((_expr157532_
                                                         _hd157482157527_))
                                                    (if (gx#stx-null?
                                                         _tl157483157529_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr157532_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E157477157512_))
                (_E157477157512_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E157477157512_))
                                          (_E157477157512_))))
                                  (_E157477157512_))))
                           (_E157475157541_
                            (lambda ()
                              (let ((_id157539_ _e157474157489_))
                                (if (gx#identifier? _id157539_)
                                    (gx#core-bound-identifier?__%
                                     _id157539_
                                     gx#feature-binding?)
                                    (_E157476157535_))))))
                      (_E157475157541_))))
                 (_loop157376_
                  (lambda (_rest157406_)
                    (let* ((_e157407157415_ _rest157406_)
                           (_E157413157419_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e157407157415_)))
                           (_E157409157423_
                            (lambda ()
                              (if (gx#stx-null? _e157407157415_)
                                  (if '#t '() (_E157413157419_))
                                  (_E157413157419_))))
                           (_E157408157469_
                            (lambda ()
                              (if (gx#stx-pair? _e157407157415_)
                                  (let ((_e157410157427_
                                         (gx#syntax-e _e157407157415_)))
                                    (let ((_hd157411157430_
                                           (##car _e157410157427_))
                                          (_tl157412157432_
                                           (##cdr _e157410157427_)))
                                      (let* ((_hd157435_ _hd157411157430_)
                                             (_rest157437_ _tl157412157432_))
                                        (if '#t
                                            (let* ((_e157438157445_ _hd157435_)
                                                   (_E157440157449_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e157438157445_)))
                                                   (_E157439157465_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e157438157445_)
                                                          (let ((_e157441157453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e157438157445_)))
                    (let ((_hd157442157456_ (##car _e157441157453_))
                          (_tl157443157458_ (##cdr _e157441157453_)))
                      (let* ((_condition157461_ _hd157442157456_)
                             (_body157463_ _tl157443157458_))
                        (if '#t
                            (if (gx#stx-eq? _condition157461_ 'else)
                                (if (gx#stx-null? _rest157437_)
                                    _body157463_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx157373_
                                     _hd157435_))
                                (if (_satisfied?157375_ _condition157461_)
                                    _body157463_
                                    (_loop157376_ _rest157437_)))
                            (_E157440157449_)))))
                  (_E157440157449_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E157439157465_))
                                            (_E157409157423_)))))
                                  (_E157409157423_)))))
                      (_E157408157469_)))))
          (let* ((_e157377157384_ _stx157373_)
                 (_E157379157388_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e157377157384_)))
                 (_E157378157402_
                  (lambda ()
                    (if (gx#stx-pair? _e157377157384_)
                        (let ((_e157380157392_ (gx#syntax-e _e157377157384_)))
                          (let ((_hd157381157395_ (##car _e157380157392_))
                                (_tl157382157397_ (##cdr _e157380157392_)))
                            (let ((_clauses157400_ _tl157382157397_))
                              (if (gx#stx-list? _clauses157400_)
                                  (gx#core-cons
                                   'begin
                                   (_loop157376_ _clauses157400_))
                                  (_E157379157388_)))))
                        (_E157379157388_)))))
            (_E157378157402_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx157316_ _rpath157317_)
        (let* ((_e157318157328_ _stx157316_)
               (_E157320157332_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e157318157328_)))
               (_E157319157359_
                (lambda ()
                  (if (gx#stx-pair? _e157318157328_)
                      (let ((_e157321157336_ (gx#syntax-e _e157318157328_)))
                        (let ((_hd157322157339_ (##car _e157321157336_))
                              (_tl157323157341_ (##cdr _e157321157336_)))
                          (if (gx#stx-pair? _tl157323157341_)
                              (let ((_e157324157344_
                                     (gx#syntax-e _tl157323157341_)))
                                (let ((_hd157325157347_
                                       (##car _e157324157344_))
                                      (_tl157326157349_
                                       (##cdr _e157324157344_)))
                                  (let ((_path157352_ _hd157325157347_))
                                    (if (gx#stx-null? _tl157326157349_)
                                        (if (gx#stx-string? _path157352_)
                                            (let ((_rpath157357_
                                                   (let ((_$e157354_
                                                          _rpath157317_))
                                                     (if _$e157354_
                                                         _$e157354_
                                                         (gx#core-resolve-path__%
                                                          _path157352_
                                                          (gx#stx-source
                                                           _stx157316_))))))
                                              (if (member _rpath157357_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx157316_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath157357_))
                                                    (gx#stx-source
                                                     _stx157316_)))))
                                            (_E157320157332_))
                                        (_E157320157332_)))))
                              (_E157320157332_))))
                      (_E157320157332_)))))
          (_E157319157359_))))
    (define gx#core-expand-include%__0
      (lambda (_stx157366_)
        (let ((_rpath157368_ '#f))
          (gx#core-expand-include%__% _stx157366_ _rpath157368_))))
    (define gx#core-expand-include%
      (lambda _g162508_
        (let ((_g162507_ (##length _g162508_)))
          (cond ((##fx= _g162507_ 1)
                 (apply (lambda (_stx157366_)
                          (gx#core-expand-include%__0 _stx157366_))
                        _g162508_))
                ((##fx= _g162507_ 2)
                 (apply (lambda (_stx157370_ _rpath157371_)
                          (gx#core-expand-include%__%
                           _stx157370_
                           _rpath157371_))
                        _g162508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g162508_))))))
    (define gx#core-apply-expander__%
      (lambda (_K157285_ _stx157286_ _method157287_)
        (if (procedure? _K157285_)
            (let ((_$e157289_ (gx#stx-source _stx157286_)))
              (if _$e157289_
                  ((lambda (_g157291157293_)
                     (gx#stx-wrap-source
                      (_K157285_ _stx157286_)
                      _g157291157293_))
                   _$e157289_)
                  (_K157285_ _stx157286_)))
            (let ((_$e157296_ (bound-method-ref _K157285_ _method157287_)))
              (if _$e157296_
                  ((lambda (_g157298157300_)
                     (gx#core-apply-expander__%
                      _g157298157300_
                      _stx157286_
                      _method157287_))
                   _$e157296_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx157286_
                   _method157287_))))))
    (define gx#core-apply-expander__0
      (lambda (_K157306_ _stx157307_)
        (let ((_method157309_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K157306_ _stx157307_ _method157309_))))
    (define gx#core-apply-expander
      (lambda _g162510_
        (let ((_g162509_ (##length _g162510_)))
          (cond ((##fx= _g162509_ 2)
                 (apply (lambda (_K157306_ _stx157307_)
                          (gx#core-apply-expander__0 _K157306_ _stx157307_))
                        _g162510_))
                ((##fx= _g162509_ 3)
                 (apply (lambda (_K157311_ _stx157312_ _method157313_)
                          (gx#core-apply-expander__%
                           _K157311_
                           _stx157312_
                           _method157313_))
                        _g162510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g162510_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self157281_ _stx157282_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx157282_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self157134_ _stx157135_)
        (let* ((_self157136157142_ _self157134_)
               (_E157138157146_
                (lambda () (error '"No clause matching" _self157136157142_)))
               (_K157139157151_
                (lambda (_K157149_)
                  (gx#core-apply-expander__0 _K157149_ _stx157135_))))
          (if (##structure-instance-of? _self157136157142_ 'gx#core-macro::t)
              (let* ((_e157140157154_
                      (##unchecked-structure-ref
                       _self157136157142_
                       '1
                       gx#expander::t
                       '#f))
                     (_K157157_ _e157140157154_))
                (_K157139157151_ _K157157_))
              (_E157138157146_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self156987_ _stx156988_)
        (if (gx#sealed-syntax? _stx156988_)
            _stx156988_
            (let* ((_self156989156995_ _self156987_)
                   (_E156991156999_
                    (lambda ()
                      (error '"No clause matching" _self156989156995_)))
                   (_K156992157004_
                    (lambda (_K157002_)
                      (gx#core-apply-expander__0 _K157002_ _stx156988_))))
              (if (##structure-instance-of?
                   _self156989156995_
                   'gx#core-expander::t)
                  (let* ((_e156993157007_
                          (##unchecked-structure-ref
                           _self156989156995_
                           '1
                           gx#expander::t
                           '#f))
                         (_K157010_ _e156993157007_))
                    (_K156992157004_ _K157010_))
                  (_E156991156999_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self156849_ _stx156850_ _top?156851_)
        (if (_top?156851_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self156849_ _stx156850_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx156850_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self156856_ _stx156857_)
        (let ((_top?156859_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self156856_
           _stx156857_
           _top?156859_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g162512_
        (let ((_g162511_ (##length _g162512_)))
          (cond ((##fx= _g162511_ 2)
                 (apply (lambda (_self156856_ _stx156857_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self156856_
                           _stx156857_))
                        _g162512_))
                ((##fx= _g162511_ 3)
                 (apply (lambda (_self156861_ _stx156862_ _top?156863_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self156861_
                           _stx156862_
                           _top?156863_))
                        _g162512_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g162512_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self156723_ _stx156724_)
        (gx#top-special-form::apply-macro-expander__%
         _self156723_
         _stx156724_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self156548_ _stx156549_)
        (let* ((_self156550156556_ _self156548_)
               (_E156552156560_
                (lambda () (error '"No clause matching" _self156550156556_)))
               (_K156553156593_
                (lambda (_id156563_)
                  (let* ((_e156564156571_ _stx156549_)
                         (_E156566156575_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e156564156571_)))
                         (_E156565156589_
                          (lambda ()
                            (if (gx#stx-pair? _e156564156571_)
                                (let ((_e156567156579_
                                       (gx#syntax-e _e156564156571_)))
                                  (let ((_hd156568156582_
                                         (##car _e156567156579_))
                                        (_tl156569156584_
                                         (##cdr _e156567156579_)))
                                    (let ((_body156587_ _tl156569156584_))
                                      (if '#t
                                          (gx#core-cons
                                           _id156563_
                                           _body156587_)
                                          (_E156566156575_)))))
                                (_E156566156575_)))))
                    (_E156565156589_)))))
          (if (##structure-instance-of?
               _self156550156556_
               'gx#rename-macro-expander::t)
              (let* ((_e156554156596_
                      (##unchecked-structure-ref
                       _self156550156556_
                       '1
                       gx#expander::t
                       '#f))
                     (_id156599_ _e156554156596_))
                (_K156553156593_ _id156599_))
              (_E156552156560_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self156374_ _stx156375_ _method156376_)
        (let* ((_self156377156385_ _self156374_)
               (_E156379156389_
                (lambda () (error '"No clause matching" _self156377156385_)))
               (_K156380156396_
                (lambda (_phi156392_ _ctx156393_ _K156394_)
                  (gx#core-apply-user-macro
                   _K156394_
                   _stx156375_
                   _ctx156393_
                   _phi156392_
                   _method156376_))))
          (if (##structure-instance-of?
               _self156377156385_
               'gx#macro-expander::t)
              (let* ((_e156381156399_
                      (##unchecked-structure-ref
                       _self156377156385_
                       '1
                       gx#expander::t
                       '#f))
                     (_K156402_ _e156381156399_)
                     (_e156382156404_
                      (##unchecked-structure-ref
                       _self156377156385_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx156407_ _e156382156404_)
                     (_e156383156409_
                      (##unchecked-structure-ref
                       _self156377156385_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi156412_ _e156383156409_))
                (_K156380156396_ _phi156412_ _ctx156407_ _K156402_))
              (_E156379156389_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self156417_ _stx156418_)
        (let ((_method156420_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self156417_
           _stx156418_
           _method156420_))))
    (define gx#core-apply-user-expander
      (lambda _g162514_
        (let ((_g162513_ (##length _g162514_)))
          (cond ((##fx= _g162513_ 2)
                 (apply (lambda (_self156417_ _stx156418_)
                          (gx#core-apply-user-expander__0
                           _self156417_
                           _stx156418_))
                        _g162514_))
                ((##fx= _g162513_ 3)
                 (apply (lambda (_self156422_ _stx156423_ _method156424_)
                          (gx#core-apply-user-expander__%
                           _self156422_
                           _stx156423_
                           _method156424_))
                        _g162514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g162514_))))))
    (define gx#core-apply-user-macro
      (lambda (_K156364_ _stx156365_ _ctx156366_ _phi156367_ _method156368_)
        (let ((_mark156370_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx156366_
                _phi156367_
                _stx156365_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K156364_
               (gx#stx-apply-mark _stx156365_ _mark156370_)
               _method156368_)
              _mark156370_))
           gx#current-expander-marks
           (cons _mark156370_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx156216_ _phi156217_ _ctx156218_)
        (let _lp156220_ ((_bind156222_
                          (gx#core-resolve-identifier__%
                           _stx156216_
                           _phi156217_
                           _ctx156218_)))
          (if (##structure-direct-instance-of?
               _bind156222_
               'gx#import-binding::t)
              (_lp156220_
               (##unchecked-structure-ref
                _bind156222_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind156222_
                   'gx#alias-binding::t)
                  (_lp156220_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind156222_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi156217_
                    _ctx156218_))
                  _bind156222_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx156227_)
        (let* ((_phi156229_ (gx#current-expander-phi))
               (_ctx156231_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx156227_ _phi156229_ _ctx156231_))))
    (define gx#resolve-identifier__1
      (lambda (_stx156233_ _phi156234_)
        (let ((_ctx156236_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx156233_ _phi156234_ _ctx156236_))))
    (define gx#resolve-identifier
      (lambda _g162516_
        (let ((_g162515_ (##length _g162516_)))
          (cond ((##fx= _g162515_ 1)
                 (apply (lambda (_stx156227_)
                          (gx#resolve-identifier__0 _stx156227_))
                        _g162516_))
                ((##fx= _g162515_ 2)
                 (apply (lambda (_stx156233_ _phi156234_)
                          (gx#resolve-identifier__1 _stx156233_ _phi156234_))
                        _g162516_))
                ((##fx= _g162515_ 3)
                 (apply (lambda (_stx156238_ _phi156239_ _ctx156240_)
                          (gx#resolve-identifier__%
                           _stx156238_
                           _phi156239_
                           _ctx156240_))
                        _g162516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g162516_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx156174_ _val156175_ _rebind?156176_ _phi156177_ _ctx156178_)
        (let ((_rebind?156180_
               (if (not _rebind?156176_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?156176_) _rebind?156176_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx156174_)
           _val156175_
           _rebind?156180_
           _phi156177_
           _ctx156178_))))
    (define gx#bind-identifier!__0
      (lambda (_stx156185_ _val156186_)
        (let* ((_rebind?156188_ '#f)
               (_phi156190_ (gx#current-expander-phi))
               (_ctx156192_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx156185_
           _val156186_
           _rebind?156188_
           _phi156190_
           _ctx156192_))))
    (define gx#bind-identifier!__1
      (lambda (_stx156194_ _val156195_ _rebind?156196_)
        (let* ((_phi156198_ (gx#current-expander-phi))
               (_ctx156200_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx156194_
           _val156195_
           _rebind?156196_
           _phi156198_
           _ctx156200_))))
    (define gx#bind-identifier!__2
      (lambda (_stx156202_ _val156203_ _rebind?156204_ _phi156205_)
        (let ((_ctx156207_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx156202_
           _val156203_
           _rebind?156204_
           _phi156205_
           _ctx156207_))))
    (define gx#bind-identifier!
      (lambda _g162518_
        (let ((_g162517_ (##length _g162518_)))
          (cond ((##fx= _g162517_ 2)
                 (apply (lambda (_stx156185_ _val156186_)
                          (gx#bind-identifier!__0 _stx156185_ _val156186_))
                        _g162518_))
                ((##fx= _g162517_ 3)
                 (apply (lambda (_stx156194_ _val156195_ _rebind?156196_)
                          (gx#bind-identifier!__1
                           _stx156194_
                           _val156195_
                           _rebind?156196_))
                        _g162518_))
                ((##fx= _g162517_ 4)
                 (apply (lambda (_stx156202_
                                 _val156203_
                                 _rebind?156204_
                                 _phi156205_)
                          (gx#bind-identifier!__2
                           _stx156202_
                           _val156203_
                           _rebind?156204_
                           _phi156205_))
                        _g162518_))
                ((##fx= _g162517_ 5)
                 (apply (lambda (_stx156209_
                                 _val156210_
                                 _rebind?156211_
                                 _phi156212_
                                 _ctx156213_)
                          (gx#bind-identifier!__%
                           _stx156209_
                           _val156210_
                           _rebind?156211_
                           _phi156212_
                           _ctx156213_))
                        _g162518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g162518_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx156146_ _phi156147_ _ctx156148_)
        (let _lp156150_ ((_e156152_ _stx156146_)
                         (_marks156153_ (gx#current-expander-marks)))
          (if (symbol? _e156152_)
              (gx#core-resolve-binding
               _e156152_
               _phi156147_
               _phi156147_
               _ctx156148_
               (reverse _marks156153_))
              (if (gx#identifier-quote? _e156152_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e156152_ '1 gx#AST::t '#f)
                   _phi156147_
                   '0
                   (##unchecked-structure-ref
                    _e156152_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e156152_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e156152_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e156152_ '1 gx#AST::t '#f)
                       _phi156147_
                       _phi156147_
                       _ctx156148_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e156152_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks156153_))
                      (if (##structure-direct-instance-of?
                           _e156152_
                           'gx#syntax-wrap::t)
                          (_lp156150_
                           (##unchecked-structure-ref
                            _e156152_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e156152_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks156153_))
                          (if (##structure-instance-of?
                               _e156152_
                               'gerbil#AST::t)
                              (_lp156150_
                               (##unchecked-structure-ref
                                _e156152_
                                '1
                                gx#AST::t
                                '#f)
                               _marks156153_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx156146_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx156158_)
        (let* ((_phi156160_ (gx#current-expander-phi))
               (_ctx156162_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx156158_
           _phi156160_
           _ctx156162_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx156164_ _phi156165_)
        (let ((_ctx156167_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx156164_
           _phi156165_
           _ctx156167_))))
    (define gx#core-resolve-identifier
      (lambda _g162520_
        (let ((_g162519_ (##length _g162520_)))
          (cond ((##fx= _g162519_ 1)
                 (apply (lambda (_stx156158_)
                          (gx#core-resolve-identifier__0 _stx156158_))
                        _g162520_))
                ((##fx= _g162519_ 2)
                 (apply (lambda (_stx156164_ _phi156165_)
                          (gx#core-resolve-identifier__1
                           _stx156164_
                           _phi156165_))
                        _g162520_))
                ((##fx= _g162519_ 3)
                 (apply (lambda (_stx156169_ _phi156170_ _ctx156171_)
                          (gx#core-resolve-identifier__%
                           _stx156169_
                           _phi156170_
                           _ctx156171_))
                        _g162520_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g162520_))))))
    (define gx#core-resolve-binding
      (lambda (_id156059_
               _phi156060_
               _src-phi156061_
               _ctx156062_
               _marks156063_)
        (letrec ((_resolve156065_
                  (lambda (_ctx156133_ _src-phi156134_ _key156135_)
                    (let _lp156137_ ((_ctx156139_
                                      (gx#core-context-shift
                                       _ctx156133_
                                       _phi156060_))
                                     (_dphi156140_
                                      (fx- _phi156060_ _src-phi156134_)))
                      (let ((_$e156142_
                             (gx#core-context-resolve
                              _ctx156139_
                              _key156135_)))
                        (if _$e156142_
                            (values _$e156142_)
                            (if (fxzero? _dphi156140_)
                                '#f
                                (if (fxpositive? _dphi156140_)
                                    (_lp156137_
                                     (gx#core-context-shift _ctx156139_ '-1)
                                     (fx- _dphi156140_ '1))
                                    (_lp156137_
                                     (gx#core-context-shift _ctx156139_ '1)
                                     (fx+ _dphi156140_ '1))))))))))
          (let _lp156067_ ((_ctx156069_ _ctx156062_)
                           (_src-phi156070_ _src-phi156061_)
                           (_rest156071_ _marks156063_))
            (let* ((_rest156072156080_ _rest156071_)
                   (_else156074156088_
                    (lambda ()
                      (_resolve156065_
                       _ctx156069_
                       _src-phi156070_
                       _id156059_)))
                   (_K156076156121_
                    (lambda (_rest156091_ _hd156092_)
                      (let* ((_hd156093156099_ _hd156092_)
                             (_E156095156103_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd156093156099_)))
                             (_K156096156113_
                              (lambda (_subst156106_)
                                (let ((_$e156110_
                                       (let ((_key156108_
                                              (if _subst156106_
                                                  (hash-get
                                                   _subst156106_
                                                   _id156059_)
                                                  '#f)))
                                         (if _key156108_
                                             (_resolve156065_
                                              _ctx156069_
                                              _src-phi156070_
                                              _key156108_)
                                             '#f))))
                                  (if _$e156110_
                                      _$e156110_
                                      (_lp156067_
                                       (##unchecked-structure-ref
                                        _hd156092_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd156092_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest156091_))))))
                        (if (##structure-instance-of?
                             _hd156093156099_
                             'gx#expander-mark::t)
                            (let* ((_e156097156116_
                                    (##unchecked-structure-ref
                                     _hd156093156099_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst156119_ _e156097156116_))
                              (_K156096156113_ _subst156119_))
                            (_E156095156103_))))))
              (if (##pair? _rest156072156080_)
                  (let ((_hd156077156124_ (##car _rest156072156080_))
                        (_tl156078156126_ (##cdr _rest156072156080_)))
                    (let* ((_hd156129_ _hd156077156124_)
                           (_rest156131_ _tl156078156126_))
                      (_K156076156121_ _rest156131_ _hd156129_)))
                  (_else156074156088_)))))))
    (define gx#core-bind!__%
      (lambda (_key155935_ _val155936_ _rebind?155937_ _phi155938_ _ctx155939_)
        (letrec ((_update-binding155941_
                  (lambda (_xval156012_)
                    (if (or (_rebind?155937_
                             _ctx155939_
                             _xval156012_
                             _val155936_)
                            (and (##structure-direct-instance-of?
                                  _xval156012_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval156012_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val155936_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val155936_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval156012_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val155936_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val155936_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval156012_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val155936_
                        (if (and (##structure-direct-instance-of?
                                  _val155936_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val155936_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval156012_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val155936_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval156012_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval156012_
                            (if (and (##structure-direct-instance-of?
                                      _val155936_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval156012_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key155935_
                                 (cons (##unchecked-structure-ref
                                        _val155936_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val155936_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval156012_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval156012_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval156012_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval156012_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key155935_
                                 _val155936_
                                 _xval156012_))))))
                 (_gensubst155942_
                  (lambda (_subst156007_ _id156008_)
                    (let ((_eid156010_
                           (gensym (if (uninterned-symbol? _id156008_)
                                       '%
                                       _id156008_))))
                      (hash-put! _subst156007_ _id156008_ _eid156010_)
                      _eid156010_)))
                 (_subst!155943_
                  (lambda (_key155945_)
                    (let* ((_key155946155954_ _key155945_)
                           (_else155948155962_ (lambda () _key155945_))
                           (_K155950155995_
                            (lambda (_mark155965_ _id155966_)
                              (let* ((_mark155967155973_ _mark155965_)
                                     (_E155969155977_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark155967155973_)))
                                     (_K155970155987_
                                      (lambda (_subst155980_)
                                        (if (not _subst155980_)
                                            (let ((_subst155982_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark155965_
                                               _subst155982_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst155942_
                                               _subst155982_
                                               _id155966_))
                                            (let ((_$e155984_
                                                   (hash-get
                                                    _subst155980_
                                                    _id155966_)))
                                              (if _$e155984_
                                                  (values _$e155984_)
                                                  (_gensubst155942_
                                                   _subst155980_
                                                   _id155966_)))))))
                                (if (##structure-instance-of?
                                     _mark155967155973_
                                     'gx#expander-mark::t)
                                    (let* ((_e155971155990_
                                            (##unchecked-structure-ref
                                             _mark155967155973_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst155993_ _e155971155990_))
                                      (_K155970155987_ _subst155993_))
                                    (_E155969155977_))))))
                      (if (##pair? _key155946155954_)
                          (let ((_hd155951155998_ (##car _key155946155954_))
                                (_tl155952156000_ (##cdr _key155946155954_)))
                            (let* ((_id156003_ _hd155951155998_)
                                   (_mark156005_ _tl155952156000_))
                              (_K155950155995_ _mark156005_ _id156003_)))
                          (_else155948155962_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx155939_ _phi155938_)
           (_subst!155943_ _key155935_)
           _val155936_
           _update-binding155941_))))
    (define gx#core-bind!__0
      (lambda (_key156029_ _val156030_)
        (let* ((_rebind?156032_ false)
               (_phi156034_ (gx#current-expander-phi))
               (_ctx156036_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key156029_
           _val156030_
           _rebind?156032_
           _phi156034_
           _ctx156036_))))
    (define gx#core-bind!__1
      (lambda (_key156038_ _val156039_ _rebind?156040_)
        (let* ((_phi156042_ (gx#current-expander-phi))
               (_ctx156044_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key156038_
           _val156039_
           _rebind?156040_
           _phi156042_
           _ctx156044_))))
    (define gx#core-bind!__2
      (lambda (_key156046_ _val156047_ _rebind?156048_ _phi156049_)
        (let ((_ctx156051_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key156046_
           _val156047_
           _rebind?156048_
           _phi156049_
           _ctx156051_))))
    (define gx#core-bind!
      (lambda _g162522_
        (let ((_g162521_ (##length _g162522_)))
          (cond ((##fx= _g162521_ 2)
                 (apply (lambda (_key156029_ _val156030_)
                          (gx#core-bind!__0 _key156029_ _val156030_))
                        _g162522_))
                ((##fx= _g162521_ 3)
                 (apply (lambda (_key156038_ _val156039_ _rebind?156040_)
                          (gx#core-bind!__1
                           _key156038_
                           _val156039_
                           _rebind?156040_))
                        _g162522_))
                ((##fx= _g162521_ 4)
                 (apply (lambda (_key156046_
                                 _val156047_
                                 _rebind?156048_
                                 _phi156049_)
                          (gx#core-bind!__2
                           _key156046_
                           _val156047_
                           _rebind?156048_
                           _phi156049_))
                        _g162522_))
                ((##fx= _g162521_ 5)
                 (apply (lambda (_key156053_
                                 _val156054_
                                 _rebind?156055_
                                 _phi156056_
                                 _ctx156057_)
                          (gx#core-bind!__%
                           _key156053_
                           _val156054_
                           _rebind?156055_
                           _phi156056_
                           _ctx156057_))
                        _g162522_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g162522_))))))
    (define gx#core-identifier-key
      (lambda (_stx155869_)
        (if (symbol? _stx155869_)
            (let* ((_g155870155878_ (gx#current-expander-marks))
                   (_else155872155886_ (lambda () _stx155869_))
                   (_K155874155891_
                    (lambda (_hd155889_) (cons _stx155869_ _hd155889_))))
              (if (##pair? _g155870155878_)
                  (let* ((_hd155875155894_ (##car _g155870155878_))
                         (_hd155897_ _hd155875155894_))
                    (_K155874155891_ _hd155897_))
                  (_else155872155886_)))
            (if (gx#identifier? _stx155869_)
                (let* ((_id155899_ (gx#syntax-local-unwrap _stx155869_))
                       (_eid155901_ (gx#stx-e _id155899_))
                       (_marks155903_ (gx#stx-identifier-marks* _id155899_)))
                  (let* ((_marks155905155913_ _marks155903_)
                         (_else155907155921_ (lambda () _eid155901_))
                         (_K155909155926_
                          (lambda (_hd155924_) (cons _eid155901_ _hd155924_))))
                    (if (##pair? _marks155905155913_)
                        (let* ((_hd155910155929_ (##car _marks155905155913_))
                               (_hd155932_ _hd155910155929_))
                          (_K155909155926_ _hd155932_))
                        (_else155907155921_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx155869_)))))
    (define gx#core-context-shift
      (lambda (_ctx155814_ _phi155815_)
        (letrec ((_make-phi155817_
                  (lambda (_super155867_)
                    (let ((__obj162493
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj162493
                       (gensym 'phi)
                       _super155867_)
                      __obj162493)))
                 (_make-phi/up155818_
                  (lambda (_ctx155862_ _super155863_)
                    (let ((_ctx+1155865_ (_make-phi155817_ _super155863_)))
                      (##unchecked-structure-set!
                       _ctx155862_
                       _ctx+1155865_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1155865_
                       _ctx155862_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1155865_)))
                 (_make-phi/down155819_
                  (lambda (_ctx155857_ _super155858_)
                    (let ((_ctx-1155860_ (_make-phi155817_ _super155858_)))
                      (##unchecked-structure-set!
                       _ctx-1155860_
                       _ctx155857_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx155857_
                       _ctx-1155860_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1155860_)))
                 (_shift155820_
                  (lambda (_ctx155841_
                           _delta155842_
                           _make-delta-context155843_
                           _phi155844_
                           _K155845_)
                    (let ((_$e155847_
                           (##unchecked-structure-ref
                            _ctx155841_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e155847_
                          ((lambda (_super155850_)
                             (let* ((_super155852_
                                     (_K155845_ _super155850_ _delta155842_))
                                    (_ctx+d155854_
                                     (_make-delta-context155843_
                                      _ctx155841_
                                      _super155852_)))
                               (_K155845_
                                _ctx+d155854_
                                (fx- _phi155844_ _delta155842_))))
                           _$e155847_)
                          (error '"Bad context" _ctx155841_))))))
          (let _K155822_ ((_ctx155824_ _ctx155814_) (_phi155825_ _phi155815_))
            (if (fxzero? _phi155825_)
                _ctx155824_
                (if (fx> (##vector-length _ctx155824_) '3)
                    (if (fxpositive? _phi155825_)
                        (let ((_$e155827_
                               (##unchecked-structure-ref
                                _ctx155824_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e155827_
                              ((lambda (_g155829155831_)
                                 (_K155822_
                                  _g155829155831_
                                  (fx- _phi155825_ '1)))
                               _$e155827_)
                              (_shift155820_
                               _ctx155824_
                               '1
                               _make-phi/up155818_
                               _phi155825_
                               _K155822_)))
                        (let ((_$e155834_
                               (##unchecked-structure-ref
                                _ctx155824_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e155834_
                              ((lambda (_g155836155838_)
                                 (_K155822_
                                  _g155836155838_
                                  (fx+ _phi155825_ '1)))
                               _$e155834_)
                              (_shift155820_
                               _ctx155824_
                               '-1
                               _make-phi/down155819_
                               _phi155825_
                               _K155822_))))
                    _ctx155824_))))))
    (define gx#core-context-get
      (lambda (_ctx155811_ _key155812_)
        (hash-get
         (##unchecked-structure-ref _ctx155811_ '2 gx#expander-context::t '#f)
         _key155812_)))
    (define gx#core-context-put!
      (lambda (_ctx155807_ _key155808_ _val155809_)
        (hash-put!
         (##unchecked-structure-ref _ctx155807_ '2 gx#expander-context::t '#f)
         _key155808_
         _val155809_)))
    (define gx#core-context-resolve
      (lambda (_ctx155794_ _key155795_)
        (let _lp155797_ ((_ctx155799_ _ctx155794_))
          (let ((_$e155801_ (gx#core-context-get _ctx155799_ _key155795_)))
            (if _$e155801_
                (values _$e155801_)
                (let ((_$e155804_
                       (if (fx> (##vector-length _ctx155799_) '3)
                           (##unchecked-structure-ref
                            _ctx155799_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e155804_ (_lp155797_ _$e155804_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx155784_ _key155785_ _val155786_ _rebind155787_)
        (let ((_$e155789_ (gx#core-context-get _ctx155784_ _key155785_)))
          (if _$e155789_
              ((lambda (_xval155792_)
                 (gx#core-context-put!
                  _ctx155784_
                  _key155785_
                  (_rebind155787_ _xval155792_)))
               _$e155789_)
              (gx#core-context-put! _ctx155784_ _key155785_ _val155786_)))))
    (define gx#core-context-top__%
      (lambda (_ctx155762_ _stop?155763_)
        (let _lp155765_ ((_ctx155767_ _ctx155762_))
          (if (_stop?155763_ _ctx155767_)
              _ctx155767_
              (if (##structure-instance-of? _ctx155767_ 'gx#context-phi::t)
                  (_lp155765_
                   (##unchecked-structure-ref
                    _ctx155767_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx155773_ (gx#current-expander-context))
               (_stop?155775_ gx#top-context?))
          (gx#core-context-top__% _ctx155773_ _stop?155775_))))
    (define gx#core-context-top__1
      (lambda (_ctx155777_)
        (let ((_stop?155779_ gx#top-context?))
          (gx#core-context-top__% _ctx155777_ _stop?155779_))))
    (define gx#core-context-top
      (lambda _g162524_
        (let ((_g162523_ (##length _g162524_)))
          (cond ((##fx= _g162523_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g162524_))
                ((##fx= _g162523_ 1)
                 (apply (lambda (_ctx155777_)
                          (gx#core-context-top__1 _ctx155777_))
                        _g162524_))
                ((##fx= _g162523_ 2)
                 (apply (lambda (_ctx155781_ _stop?155782_)
                          (gx#core-context-top__% _ctx155781_ _stop?155782_))
                        _g162524_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g162524_))))))
    (define gx#core-context-root__%
      (lambda (_ctx155747_)
        (let _lp155749_ ((_ctx155751_ _ctx155747_))
          (if (##structure-instance-of? _ctx155751_ 'gx#context-phi::t)
              (_lp155749_
               (##unchecked-structure-ref
                _ctx155751_
                '3
                gx#phi-context::t
                '#f))
              _ctx155751_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx155757_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx155757_))))
    (define gx#core-context-root
      (lambda _g162526_
        (let ((_g162525_ (##length _g162526_)))
          (cond ((##fx= _g162525_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g162526_))
                ((##fx= _g162525_ 1)
                 (apply (lambda (_ctx155759_)
                          (gx#core-context-root__% _ctx155759_))
                        _g162526_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g162526_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx155728_ . __155725155729_)
        (let ((_$e155732_ (gx#current-expander-allow-rebind?)))
          (if _$e155732_
              _$e155732_
              (if (##structure-instance-of? _ctx155728_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx155728_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx155728_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx155739_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx155739_))))
    (define gx#core-context-rebind?
      (lambda _g162528_
        (let ((_g162527_ (##length _g162528_)))
          (cond ((##fx= _g162527_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g162528_))
                ((##fx= _g162527_ 1)
                 (apply (lambda (_ctx155741_)
                          (gx#core-context-rebind?__% _ctx155741_))
                        _g162528_))
                ((##fx>= _g162527_ 1)
                 (apply gx#core-context-rebind?__% _g162528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g162528_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx155711_)
        (let ((_$e155713_ (gx#core-context-top__1 _ctx155711_)))
          (if _$e155713_
              ((lambda (_ctx155716_)
                 (if (##structure-instance-of?
                      _ctx155716_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx155716_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e155713_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx155722_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx155722_))))
    (define gx#core-context-namespace
      (lambda _g162530_
        (let ((_g162529_ (##length _g162530_)))
          (cond ((##fx= _g162529_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g162530_))
                ((##fx= _g162529_ 1)
                 (apply (lambda (_ctx155724_)
                          (gx#core-context-namespace__% _ctx155724_))
                        _g162530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g162530_))))))
    (define gx#expander-binding?__%
      (lambda (_bind155697_ _is?155698_)
        (if (##structure-direct-instance-of?
             _bind155697_
             'gx#syntax-binding::t)
            (_is?155698_
             (##unchecked-structure-ref
              _bind155697_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind155703_)
        (let ((_is?155705_ gx#expander?))
          (gx#expander-binding?__% _bind155703_ _is?155705_))))
    (define gx#expander-binding?
      (lambda _g162532_
        (let ((_g162531_ (##length _g162532_)))
          (cond ((##fx= _g162531_ 1)
                 (apply (lambda (_bind155703_)
                          (gx#expander-binding?__0 _bind155703_))
                        _g162532_))
                ((##fx= _g162531_ 2)
                 (apply (lambda (_bind155707_ _is?155708_)
                          (gx#expander-binding?__% _bind155707_ _is?155708_))
                        _g162532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g162532_))))))
    (define gx#core-expander-binding?
      (lambda (_bind155694_)
        (gx#expander-binding?__% _bind155694_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind155692_)
        (gx#expander-binding?__% _bind155692_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind155686_)
        (letrec ((_direct-special-form?155688_
                  (lambda (_obj155690_)
                    (##structure-direct-instance-of?
                     _obj155690_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind155686_
           _direct-special-form?155688_))))
    (define gx#special-form-binding?
      (lambda (_bind155684_)
        (gx#expander-binding?__% _bind155684_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind155675_)
        (letrec ((_feature?155677_
                  (lambda (_e155679_)
                    (let ((_$e155681_
                           (##structure-instance-of?
                            _e155679_
                            'gx#feature-expander::t)))
                      (if _$e155681_
                          _$e155681_
                          (##structure-instance-of?
                           _e155679_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind155675_ _feature?155677_))))
    (define gx#private-feature-binding?
      (lambda (_bind155673_)
        (gx#expander-binding?__% _bind155673_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id155660_ _bound?155661_)
        (if (gx#identifier? _id155660_)
            (_bound?155661_ (gx#resolve-identifier__0 _id155660_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id155666_)
        (let ((_bound?155668_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id155666_ _bound?155668_))))
    (define gx#core-bound-identifier?
      (lambda _g162534_
        (let ((_g162533_ (##length _g162534_)))
          (cond ((##fx= _g162533_ 1)
                 (apply (lambda (_id155666_)
                          (gx#core-bound-identifier?__0 _id155666_))
                        _g162534_))
                ((##fx= _g162533_ 2)
                 (apply (lambda (_id155670_ _bound?155671_)
                          (gx#core-bound-identifier?__%
                           _id155670_
                           _bound?155671_))
                        _g162534_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g162534_))))))
    (define gx#core-identifier=?
      (lambda (_x155650_ _y155651_)
        (letrec ((_y=?155653_
                  (lambda (_xid155657_)
                    ((if (list? _y155651_) memq eq?) _xid155657_ _y155651_))))
          (let ((_bind155655_ (gx#resolve-identifier__0 _x155650_)))
            (if (##structure-instance-of? _bind155655_ 'gx#binding::t)
                (_y=?155653_
                 (##unchecked-structure-ref _bind155655_ '1 gx#binding::t '#f))
                (_y=?155653_ (gx#stx-e _x155650_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e155648_)
        (if (interned-symbol? _e155648_)
            (string-index (symbol->string _e155648_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx155603_ _src155604_ _ctx155605_ _marks155606_)
        (if (##structure? _stx155603_)
            (let ((_$e155608_ (gx#sealed-syntax-unwrap _stx155603_)))
              (if _$e155608_
                  (values _$e155608_)
                  (if (gx#identifier? _stx155603_)
                      (let ((_id155611_
                             (gx#stx-unwrap__% _stx155603_ _marks155606_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id155611_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e155613_
                                (##unchecked-structure-ref
                                 _id155611_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e155613_ _$e155613_ _src155604_))
                         _ctx155605_
                         (##unchecked-structure-ref
                          _id155611_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx155603_)
                       (let ((_$e155616_ (gx#stx-source _stx155603_)))
                         (if _$e155616_ _$e155616_ _src155604_))
                       _ctx155605_
                       (reverse _marks155606_)))))
            (##structure
             gx#syntax-quote::t
             _stx155603_
             _src155604_
             _ctx155605_
             (reverse _marks155606_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx155622_)
        (let* ((_src155624_ '#f)
               (_ctx155626_ (gx#current-expander-context))
               (_marks155628_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx155622_
           _src155624_
           _ctx155626_
           _marks155628_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx155630_ _src155631_)
        (let* ((_ctx155633_ (gx#current-expander-context))
               (_marks155635_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx155630_
           _src155631_
           _ctx155633_
           _marks155635_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx155637_ _src155638_ _ctx155639_)
        (let ((_marks155641_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx155637_
           _src155638_
           _ctx155639_
           _marks155641_))))
    (define gx#core-quote-syntax
      (lambda _g162536_
        (let ((_g162535_ (##length _g162536_)))
          (cond ((##fx= _g162535_ 1)
                 (apply (lambda (_stx155622_)
                          (gx#core-quote-syntax__0 _stx155622_))
                        _g162536_))
                ((##fx= _g162535_ 2)
                 (apply (lambda (_stx155630_ _src155631_)
                          (gx#core-quote-syntax__1 _stx155630_ _src155631_))
                        _g162536_))
                ((##fx= _g162535_ 3)
                 (apply (lambda (_stx155637_ _src155638_ _ctx155639_)
                          (gx#core-quote-syntax__2
                           _stx155637_
                           _src155638_
                           _ctx155639_))
                        _g162536_))
                ((##fx= _g162535_ 4)
                 (apply (lambda (_stx155643_
                                 _src155644_
                                 _ctx155645_
                                 _marks155646_)
                          (gx#core-quote-syntax__%
                           _stx155643_
                           _src155644_
                           _ctx155645_
                           _marks155646_))
                        _g162536_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g162536_))))))
    (define gx#core-cons
      (lambda (_hd155599_ _tl155600_)
        (cons (gx#core-quote-syntax__0 _hd155599_) _tl155600_)))
    (define gx#core-list
      (lambda (_hd155596_ . _rest155597_)
        (cons (gx#core-quote-syntax__0 _hd155596_) _rest155597_)))
    (define gx#core-cons*
      (lambda (_hd155593_ . _rest155594_)
        (apply cons* (gx#core-quote-syntax__0 _hd155593_) _rest155594_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path155567_ _rel155568_)
        (let ((_path155580_ (gx#stx-e _stx-path155567_))
              (_reldir155581_
               (let _lp155570_ ((_relsrc155572_
                                 (let ((_$e155577_
                                        (gx#stx-source _stx-path155567_)))
                                   (if _$e155577_ _$e155577_ _rel155568_))))
                 (if (##structure-instance-of? _relsrc155572_ 'gerbil#AST::t)
                     (_lp155570_
                      (let ((_$e155574_ (gx#stx-source _relsrc155572_)))
                        (if _$e155574_ _$e155574_ (gx#stx-e _relsrc155572_))))
                     (if (source-location-path? _relsrc155572_)
                         (path-directory (source-location-path _relsrc155572_))
                         (if (string? _relsrc155572_)
                             (path-directory _relsrc155572_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path155580_ (path-normalize _reldir155581_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path155586_)
        (let ((_rel155588_ '#f))
          (gx#core-resolve-path__% _stx-path155586_ _rel155588_))))
    (define gx#core-resolve-path
      (lambda _g162538_
        (let ((_g162537_ (##length _g162538_)))
          (cond ((##fx= _g162537_ 1)
                 (apply (lambda (_stx-path155586_)
                          (gx#core-resolve-path__0 _stx-path155586_))
                        _g162538_))
                ((##fx= _g162537_ 2)
                 (apply (lambda (_stx-path155590_ _rel155591_)
                          (gx#core-resolve-path__%
                           _stx-path155590_
                           _rel155591_))
                        _g162538_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g162538_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr155523_ _ctx155524_)
        (let* ((_repr155525155532_ _repr155523_)
               (_E155527155536_
                (lambda () (error '"No clause matching" _repr155525155532_)))
               (_K155528155544_
                (lambda (_subs155539_ _phi155540_)
                  (let ((_subst155542_
                         (if (not (null? _subs155539_))
                             (list->hash-table-eq _subs155539_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst155542_
                     _ctx155524_
                     _phi155540_
                     '#f)))))
          (if (##pair? _repr155525155532_)
              (let ((_hd155529155547_ (##car _repr155525155532_))
                    (_tl155530155549_ (##cdr _repr155525155532_)))
                (let* ((_phi155552_ _hd155529155547_)
                       (_subs155554_ _tl155530155549_))
                  (_K155528155544_ _subs155554_ _phi155552_)))
              (_E155527155536_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr155559_)
        (let ((_ctx155561_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr155559_ _ctx155561_))))
    (define gx#core-deserialize-mark
      (lambda _g162540_
        (let ((_g162539_ (##length _g162540_)))
          (cond ((##fx= _g162539_ 1)
                 (apply (lambda (_repr155559_)
                          (gx#core-deserialize-mark__0 _repr155559_))
                        _g162540_))
                ((##fx= _g162539_ 2)
                 (apply (lambda (_repr155563_ _ctx155564_)
                          (gx#core-deserialize-mark__%
                           _repr155563_
                           _ctx155564_))
                        _g162540_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g162540_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx155520_)
        (gx#stx-rewrap _stx155520_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx155518_)
        (gx#stx-unwrap__% _stx155518_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx155488_)
        (let* ((_g155489155497_ (gx#current-expander-marks))
               (_else155491155505_ (lambda () _stx155488_))
               (_K155493155510_
                (lambda (_hd155508_)
                  (gx#stx-apply-mark _stx155488_ _hd155508_))))
          (if (##pair? _g155489155497_)
              (let* ((_hd155494155513_ (##car _g155489155497_))
                     (_hd155516_ _hd155494155513_))
                (_K155493155510_ _hd155516_))
              (_else155491155505_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx155473_ _E155474_)
        (let ((_bind155476_ (gx#resolve-identifier__0 _stx155473_)))
          (if (##structure-direct-instance-of?
               _bind155476_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind155476_
               '4
               gx#syntax-binding::t
               '#f)
              (_E155474_ _stx155473_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx155481_)
        (let ((_E155483_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx155481_ _E155483_))))
    (define gx#syntax-local-e
      (lambda _g162542_
        (let ((_g162541_ (##length _g162542_)))
          (cond ((##fx= _g162541_ 1)
                 (apply (lambda (_stx155481_)
                          (gx#syntax-local-e__0 _stx155481_))
                        _g162542_))
                ((##fx= _g162541_ 2)
                 (apply (lambda (_stx155485_ _E155486_)
                          (gx#syntax-local-e__% _stx155485_ _E155486_))
                        _g162542_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g162542_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx155457_ _E155458_)
        (let ((_e155460_ (gx#syntax-local-e__% _stx155457_ _E155458_)))
          (if (##structure-instance-of? _e155460_ 'gx#expander::t)
              (##structure-ref _e155460_ '1 gx#expander::t '#f)
              _e155460_))))
    (define gx#syntax-local-value__0
      (lambda (_stx155465_)
        (let ((_E155467_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx155465_ _E155467_))))
    (define gx#syntax-local-value
      (lambda _g162544_
        (let ((_g162543_ (##length _g162544_)))
          (cond ((##fx= _g162543_ 1)
                 (apply (lambda (_stx155465_)
                          (gx#syntax-local-value__0 _stx155465_))
                        _g162544_))
                ((##fx= _g162543_ 2)
                 (apply (lambda (_stx155469_ _E155470_)
                          (gx#syntax-local-value__% _stx155469_ _E155470_))
                        _g162544_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g162544_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx155454_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx155454_)))))
