(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1708194423)
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
      (lambda _$args143769_
        (apply make-instance gx#expander-context::t _$args143769_)))
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
      (lambda _$args143766_
        (apply make-instance gx#root-context::t _$args143766_)))
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
      (lambda _$args143763_
        (apply make-instance gx#phi-context::t _$args143763_)))
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
      (lambda _$args143760_
        (apply make-instance gx#top-context::t _$args143760_)))
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
      (lambda _$args143757_
        (apply make-instance gx#module-context::t _$args143757_)))
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
      (lambda _$args143754_
        (apply make-instance gx#prelude-context::t _$args143754_)))
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
      (lambda _$args143751_
        (apply make-instance gx#local-context::t _$args143751_)))
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
      (lambda (_self143735_ _id143736_ _super143737_)
        (if (##fx< '3 (##structure-length _self143735_))
            (begin
              (##unchecked-structure-set!
               _self143735_
               _id143736_
               '1
               (##structure-type _self143735_)
               '#f)
              (##unchecked-structure-set!
               _self143735_
               (make-hash-table-eq)
               '2
               (##structure-type _self143735_)
               '#f)
              (##unchecked-structure-set!
               _self143735_
               _super143737_
               '3
               (##structure-type _self143735_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143735_
                   '3
                   (##vector-length _self143735_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self143742_ _id143743_)
        (let ((_super143745_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self143742_ _id143743_ _super143745_))))
    (define gx#phi-context:::init!
      (lambda _g147879_
        (let ((_g147878_ (##length _g147879_)))
          (cond ((##fx= _g147878_ 2)
                 (apply (lambda (_self143742_ _id143743_)
                          (gx#phi-context:::init!__0 _self143742_ _id143743_))
                        _g147879_))
                ((##fx= _g147878_ 3)
                 (apply (lambda (_self143747_ _id143748_ _super143749_)
                          (gx#phi-context:::init!__%
                           _self143747_
                           _id143748_
                           _super143749_))
                        _g147879_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g147879_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self143599_ _super143600_)
        (if (##fx< '3 (##structure-length _self143599_))
            (begin
              (##unchecked-structure-set!
               _self143599_
               (gensym 'L)
               '1
               (##structure-type _self143599_)
               '#f)
              (##unchecked-structure-set!
               _self143599_
               (make-hash-table-eq)
               '2
               (##structure-type _self143599_)
               '#f)
              (##unchecked-structure-set!
               _self143599_
               _super143600_
               '3
               (##structure-type _self143599_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143599_
                   '3
                   (##vector-length _self143599_)))))
    (define gx#local-context:::init!__0
      (lambda (_self143605_)
        (let ((_super143607_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self143605_ _super143607_))))
    (define gx#local-context:::init!
      (lambda _g147881_
        (let ((_g147880_ (##length _g147881_)))
          (cond ((##fx= _g147880_ 1)
                 (apply (lambda (_self143605_)
                          (gx#local-context:::init!__0 _self143605_))
                        _g147881_))
                ((##fx= _g147880_ 2)
                 (apply (lambda (_self143609_ _super143610_)
                          (gx#local-context:::init!__%
                           _self143609_
                           _super143610_))
                        _g147881_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g147881_))))))
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
      (lambda _$args143473_ (apply make-instance gx#binding::t _$args143473_)))
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
      (lambda _$args143470_
        (apply make-instance gx#runtime-binding::t _$args143470_)))
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
      (lambda _$args143467_
        (apply make-instance gx#local-binding::t _$args143467_)))
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
      (lambda _$args143464_
        (apply make-instance gx#top-binding::t _$args143464_)))
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
      (lambda _$args143461_
        (apply make-instance gx#module-binding::t _$args143461_)))
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
      (lambda _$args143458_
        (apply make-instance gx#extern-binding::t _$args143458_)))
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
      (lambda _$args143455_
        (apply make-instance gx#syntax-binding::t _$args143455_)))
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
      (lambda _$args143452_
        (apply make-instance gx#import-binding::t _$args143452_)))
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
      (lambda _$args143449_
        (apply make-instance gx#alias-binding::t _$args143449_)))
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
      (lambda _$args143446_
        (apply make-instance gx#expander::t _$args143446_)))
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
      (lambda _$args143443_
        (apply make-instance gx#core-expander::t _$args143443_)))
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
      (lambda _$args143440_
        (apply make-instance gx#expression-form::t _$args143440_)))
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
      (lambda _$args143437_
        (apply make-instance gx#special-form::t _$args143437_)))
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
      (lambda _$args143434_
        (apply make-instance gx#definition-form::t _$args143434_)))
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
      (lambda _$args143431_
        (apply make-instance gx#top-special-form::t _$args143431_)))
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
      (lambda _$args143428_
        (apply make-instance gx#module-special-form::t _$args143428_)))
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
      (lambda _$args143425_
        (apply make-instance gx#feature-expander::t _$args143425_)))
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
      (lambda _$args143422_
        (apply make-instance gx#private-feature-expander::t _$args143422_)))
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
      (lambda _$args143419_
        (apply make-instance gx#reserved-expander::t _$args143419_)))
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
      (lambda _$args143416_
        (apply make-instance gx#macro-expander::t _$args143416_)))
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
      (lambda _$args143413_
        (apply make-instance gx#rename-macro-expander::t _$args143413_)))
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
      (lambda _$args143410_
        (apply make-instance gx#user-expander::t _$args143410_)))
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
      (lambda _$args143407_
        (apply make-instance gx#expander-mark::t _$args143407_)))
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
      (lambda (_ctx143392_ _message143393_ _stx143394_ . _details143395_)
        (let ((_ctx143405_
               (let ((_$e143397_ _ctx143392_))
                 (if _$e143397_
                     _$e143397_
                     (let ((_$e143400_ (gx#core-context-top__0)))
                       (if _$e143400_
                           ((lambda (_ctx143403_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx143403_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e143400_)
                           '#f))))))
          (raise (make-syntax-error
                  _message143393_
                  (cons _stx143394_ _details143395_)
                  _ctx143405_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx143379_ _expression?143380_)
        (gx#eval-syntax* (gx#core-expand__% _stx143379_ _expression?143380_))))
    (define gx#eval-syntax__0
      (lambda (_stx143385_)
        (let ((_expression?143387_ '#f))
          (gx#eval-syntax__% _stx143385_ _expression?143387_))))
    (define gx#eval-syntax
      (lambda _g147883_
        (let ((_g147882_ (##length _g147883_)))
          (cond ((##fx= _g147882_ 1)
                 (apply (lambda (_stx143385_) (gx#eval-syntax__0 _stx143385_))
                        _g147883_))
                ((##fx= _g147882_ 2)
                 (apply (lambda (_stx143389_ _expression?143390_)
                          (gx#eval-syntax__% _stx143389_ _expression?143390_))
                        _g147883_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g147883_))))))
    (define gx#eval-syntax*
      (lambda (_stx143376_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx143376_))))
    (define gx#core-expand__%
      (lambda (_stx143363_ _expression?143364_)
        (if _expression?143364_
            (gx#core-expand-expression _stx143363_)
            (gx#core-expand-top _stx143363_))))
    (define gx#core-expand__0
      (lambda (_stx143369_)
        (let ((_expression?143371_ '#f))
          (gx#core-expand__% _stx143369_ _expression?143371_))))
    (define gx#core-expand
      (lambda _g147885_
        (let ((_g147884_ (##length _g147885_)))
          (cond ((##fx= _g147884_ 1)
                 (apply (lambda (_stx143369_) (gx#core-expand__0 _stx143369_))
                        _g147885_))
                ((##fx= _g147884_ 2)
                 (apply (lambda (_stx143373_ _expression?143374_)
                          (gx#core-expand__% _stx143373_ _expression?143374_))
                        _g147885_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g147885_))))))
    (define gx#core-expand-top
      (lambda (_stx143330_)
        (let* ((_stx143332_ (gx#core-expand*__0 _stx143330_))
               (_e143333143340_ _stx143332_)
               (_E143335143344_
                (lambda () (gx#core-expand-expression _stx143332_)))
               (_E143334143358_
                (lambda ()
                  (if (gx#stx-pair? _e143333143340_)
                      (let ((_e143336143348_ (gx#syntax-e _e143333143340_)))
                        (let ((_hd143337143351_ (##car _e143336143348_))
                              (_tl143338143353_ (##cdr _e143336143348_)))
                          (let ((_form143356_ _hd143337143351_))
                            (if (gx#core-bound-identifier?__0 _form143356_)
                                _stx143332_
                                (_E143335143344_)))))
                      (_E143335143344_)))))
          (_E143334143358_))))
    (define gx#core-expand-expression
      (lambda (_stx143277_)
        (letrec ((_sealed-expression?143279_
                  (lambda (_hd143300_)
                    (if (gx#sealed-syntax? _hd143300_)
                        (let* ((_e143301143308_ _hd143300_)
                               (_E143303143312_ (lambda () '#f))
                               (_E143302143326_
                                (lambda ()
                                  (if (gx#stx-pair? _e143301143308_)
                                      (let ((_e143304143316_
                                             (gx#syntax-e _e143301143308_)))
                                        (let ((_hd143305143319_
                                               (##car _e143304143316_))
                                              (_tl143306143321_
                                               (##cdr _e143304143316_)))
                                          (let ((_form143324_
                                                 _hd143305143319_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form143324_
                                                 gx#expression-form-binding?)
                                                (_E143303143312_)))))
                                      (_E143303143312_)))))
                          (_E143302143326_))
                        '#f)))
                 (_illegal-expression143280_
                  (lambda (_hd143298_ . _g147886_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx143277_
                     _hd143298_)))
                 (_expand-e143281_
                  (lambda (_form143293_ _hd143294_)
                    (let ((_bind143296_
                           (if (##structure-instance-of?
                                _form143293_
                                'gx#binding::t)
                               _form143293_
                               (gx#resolve-identifier__0 _form143293_))))
                      (if (gx#core-expander-binding? _bind143296_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind143296_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd143294_
                            (gx#stx-source _stx143277_)))
                          (if (##structure-direct-instance-of?
                               _bind143296_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind143296_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd143294_
                                 (gx#stx-source _stx143277_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx143277_
                               _form143293_)))))))
          (let ((_hd143283_ (gx#core-expand-head _stx143277_)))
            (if (_sealed-expression?143279_ _hd143283_)
                _hd143283_
                (if (gx#stx-pair? _hd143283_)
                    (let* ((_form143285_ (gx#stx-car _hd143283_))
                           (_bind143287_
                            (if (gx#identifier? _form143285_)
                                (gx#resolve-identifier__0 _form143285_)
                                '#f)))
                      (if (or (not _bind143287_)
                              (not (gx#core-expander-binding? _bind143287_)))
                          (_expand-e143281_ '%%app (cons '%%app _hd143283_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind143287_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd143283_
                               _illegal-expression143280_)
                              (if (gx#expression-form-binding? _bind143287_)
                                  (_expand-e143281_ _bind143287_ _hd143283_)
                                  (if (gx#direct-special-form-binding?
                                       _bind143287_)
                                      (gx#core-expand-expression
                                       (_expand-e143281_
                                        _bind143287_
                                        _hd143283_))
                                      (_illegal-expression143280_
                                       _hd143283_))))))
                    (if (gx#core-bound-identifier?__0 _hd143283_)
                        (_illegal-expression143280_ _hd143283_)
                        (if (gx#identifier? _hd143283_)
                            (_expand-e143281_
                             '%%ref
                             (cons '%%ref (cons _hd143283_ '())))
                            (if (gx#stx-datum? _hd143283_)
                                (_expand-e143281_
                                 '%#quote
                                 (cons '%#quote (cons _hd143283_ '())))
                                (_illegal-expression143280_
                                 _hd143283_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx143272_)
        (call-with-parameters
         (lambda ()
           (let ((_stx143275_ (gx#core-expand-expression _stx143272_)))
             (values _stx143275_ (gx#eval-syntax* _stx143275_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx143253_ _stop?143254_)
        (let _lp143256_ ((_stx143258_ _stx143253_))
          (if (_stop?143254_ _stx143258_)
              _stx143258_
              (let ((_rstx143260_ (gx#core-expand1 _stx143258_)))
                (if (eq? _stx143258_ _rstx143260_)
                    _stx143258_
                    (_lp143256_ _rstx143260_)))))))
    (define gx#core-expand*__0
      (lambda (_stx143265_)
        (let ((_stop?143267_ false))
          (gx#core-expand*__% _stx143265_ _stop?143267_))))
    (define gx#core-expand*
      (lambda _g147888_
        (let ((_g147887_ (##length _g147888_)))
          (cond ((##fx= _g147887_ 1)
                 (apply (lambda (_stx143265_) (gx#core-expand*__0 _stx143265_))
                        _g147888_))
                ((##fx= _g147887_ 2)
                 (apply (lambda (_stx143269_ _stop?143270_)
                          (gx#core-expand*__% _stx143269_ _stop?143270_))
                        _g147888_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g147888_))))))
    (define gx#core-expand1
      (lambda (_stx143209_)
        (letrec ((_step143211_
                  (lambda (_hd143248_)
                    (let ((_bind143250_ (gx#resolve-identifier__0 _hd143248_)))
                      (if (##structure-instance-of?
                           _bind143250_
                           'gx#runtime-binding::t)
                          _stx143209_
                          (if (##structure-direct-instance-of?
                               _bind143250_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind143250_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx143209_)
                              (if (not _bind143250_)
                                  _stx143209_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx143209_))))))))
          (let* ((_e143212143220_ _stx143209_)
                 (_E143218143224_ (lambda () _stx143209_))
                 (_E143214143230_
                  (lambda ()
                    (let ((_hd143228_ _e143212143220_))
                      (if (gx#identifier? _hd143228_)
                          (_step143211_ _hd143228_)
                          (_E143218143224_)))))
                 (_E143213143244_
                  (lambda ()
                    (if (gx#stx-pair? _e143212143220_)
                        (let ((_e143215143234_ (gx#syntax-e _e143212143220_)))
                          (let ((_hd143216143237_ (##car _e143215143234_))
                                (_tl143217143239_ (##cdr _e143215143234_)))
                            (let ((_hd143242_ _hd143216143237_))
                              (if (gx#identifier? _hd143242_)
                                  (_step143211_ _hd143242_)
                                  (_E143214143230_)))))
                        (_E143214143230_)))))
            (_E143213143244_)))))
    (define gx#core-expand-head
      (lambda (_stx143175_)
        (letrec ((_stop?143177_
                  (lambda (_stx143179_)
                    (let* ((_e143180143187_ _stx143179_)
                           (_E143182143191_ (lambda () '#f))
                           (_E143181143205_
                            (lambda ()
                              (if (gx#stx-pair? _e143180143187_)
                                  (let ((_e143183143195_
                                         (gx#syntax-e _e143180143187_)))
                                    (let ((_hd143184143198_
                                           (##car _e143183143195_))
                                          (_tl143185143200_
                                           (##cdr _e143183143195_)))
                                      (let ((_hd143203_ _hd143184143198_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd143203_)
                                            (_E143182143191_)))))
                                  (_E143182143191_)))))
                      (_E143181143205_)))))
          (gx#core-expand*__% _stx143175_ _stop?143177_))))
    (define gx#core-expand-block__%
      (lambda (_stx142981_
               _expand-special142982_
               _begin-form142983_
               _expand-e142984_)
        (letrec ((_expand-splice142986_
                  (lambda (_hd143149_ _body143150_ _rest143151_ _r143152_)
                    (if (gx#stx-list? _body143150_)
                        (_K142990_
                         (gx#stx-foldr cons _rest143151_ _body143150_)
                         _r143152_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx142981_
                         _hd143149_))))
                 (_expand-cond-expand142987_
                  (lambda (_hd143145_ _rest143146_ _r143147_)
                    (_K142990_
                     (cons (gx#core-expand-cond-expand% _hd143145_)
                           _rest143146_)
                     _r143147_)))
                 (_expand-include142988_
                  (lambda (_hd143094_ _rest143095_ _r143096_)
                    (let* ((_e143097143107_ _hd143094_)
                           (_E143099143111_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e143097143107_)))
                           (_E143098143141_
                            (lambda ()
                              (if (gx#stx-pair? _e143097143107_)
                                  (let ((_e143100143115_
                                         (gx#syntax-e _e143097143107_)))
                                    (let ((_hd143101143118_
                                           (##car _e143100143115_))
                                          (_tl143102143120_
                                           (##cdr _e143100143115_)))
                                      (if (gx#stx-pair? _tl143102143120_)
                                          (let ((_e143103143123_
                                                 (gx#syntax-e
                                                  _tl143102143120_)))
                                            (let ((_hd143104143126_
                                                   (##car _e143103143123_))
                                                  (_tl143105143128_
                                                   (##cdr _e143103143123_)))
                                              (let ((_path143131_
                                                     _hd143104143126_))
                                                (if (gx#stx-null?
                                                     _tl143105143128_)
                                                    (if (gx#stx-string?
                                                         _path143131_)
                                                        (let* ((_rpath143133_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path143131_
                         (gx#stx-source _hd143094_)))
                       (_block143135_
                        (gx#core-expand-include%__% _hd143094_ _rpath143133_))
                       (_rbody143138_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block143135_
                            _expand-special142982_
                            '#f
                            _expand-e142984_))
                         gx#current-expander-path
                         (cons _rpath143133_ (gx#current-expander-path)))))
                  (_K142990_
                   _rest143095_
                   (foldr1 cons _r143096_ _rbody143138_)))
                (_E143099143111_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E143099143111_)))))
                                          (_E143099143111_))))
                                  (_E143099143111_)))))
                      (_E143098143141_))))
                 (_expand-expression142989_
                  (lambda (_hd143090_ _rest143091_ _r143092_)
                    (_K142990_
                     _rest143091_
                     (cons (_expand-e142984_ _hd143090_) _r143092_))))
                 (_K142990_
                  (lambda (_rest143020_ _r143021_)
                    (let* ((_e143022143029_ _rest143020_)
                           (_E143024143033_
                            (lambda ()
                              (if _begin-form142983_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form142983_
                                    (reverse _r143021_))
                                   (gx#stx-source _stx142981_))
                                  _r143021_)))
                           (_E143023143086_
                            (lambda ()
                              (if (gx#stx-pair? _e143022143029_)
                                  (let ((_e143025143037_
                                         (gx#syntax-e _e143022143029_)))
                                    (let ((_hd143026143040_
                                           (##car _e143025143037_))
                                          (_tl143027143042_
                                           (##cdr _e143025143037_)))
                                      (let* ((_hd143045_ _hd143026143040_)
                                             (_rest143047_ _tl143027143042_))
                                        (if '#t
                                            (let* ((_hd143049_
                                                    (gx#core-expand-head
                                                     _hd143045_))
                                                   (_e143050143057_ _hd143049_)
                                                   (_E143052143061_
                                                    (lambda ()
                                                      (_expand-expression142989_
                                                       _hd143049_
                                                       _rest143047_
                                                       _r143021_)))
                                                   (_E143051143082_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e143050143057_)
                                                          (let ((_e143053143065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e143050143057_)))
                    (let ((_hd143054143068_ (##car _e143053143065_))
                          (_tl143055143070_ (##cdr _e143053143065_)))
                      (let* ((_form143073_ _hd143054143068_)
                             (_body143075_ _tl143055143070_))
                        (if '#t
                            (let ((_bind143077_
                                   (if (gx#identifier? _form143073_)
                                       (gx#resolve-identifier__0 _form143073_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind143077_)
                                  (let ((_$e143079_
                                         (##unchecked-structure-ref
                                          _bind143077_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e143079_)
                                        (_expand-splice142986_
                                         _hd143049_
                                         _body143075_
                                         _rest143047_
                                         _r143021_)
                                        (if (eq? '%#cond-expand _$e143079_)
                                            (_expand-cond-expand142987_
                                             _hd143049_
                                             _rest143047_
                                             _r143021_)
                                            (if (eq? '%#include _$e143079_)
                                                (_expand-include142988_
                                                 _hd143049_
                                                 _rest143047_
                                                 _r143021_)
                                                (_expand-special142982_
                                                 _hd143049_
                                                 _K142990_
                                                 _rest143047_
                                                 _r143021_)))))
                                  (_expand-expression142989_
                                   _hd143049_
                                   _rest143047_
                                   _r143021_)))
                            (_E143052143061_)))))
                  (_E143052143061_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E143051143082_))
                                            (_E143024143033_)))))
                                  (_E143024143033_)))))
                      (_E143023143086_)))))
          (let* ((_e142991142998_ _stx142981_)
                 (_E142993143002_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142991142998_)))
                 (_E142992143016_
                  (lambda ()
                    (if (gx#stx-pair? _e142991142998_)
                        (let ((_e142994143006_ (gx#syntax-e _e142991142998_)))
                          (let ((_hd142995143009_ (##car _e142994143006_))
                                (_tl142996143011_ (##cdr _e142994143006_)))
                            (let ((_body143014_ _tl142996143011_))
                              (if (gx#stx-list? _body143014_)
                                  (_K142990_ _body143014_ '())
                                  (_E142993143002_)))))
                        (_E142993143002_)))))
            (_E142992143016_)))))
    (define gx#core-expand-block__0
      (lambda (_stx143157_ _expand-special143158_)
        (let* ((_begin-form143160_ '%#begin)
               (_expand-e143162_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx143157_
           _expand-special143158_
           _begin-form143160_
           _expand-e143162_))))
    (define gx#core-expand-block__1
      (lambda (_stx143164_ _expand-special143165_ _begin-form143166_)
        (let ((_expand-e143168_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx143164_
           _expand-special143165_
           _begin-form143166_
           _expand-e143168_))))
    (define gx#core-expand-block
      (lambda _g147890_
        (let ((_g147889_ (##length _g147890_)))
          (cond ((##fx= _g147889_ 2)
                 (apply (lambda (_stx143157_ _expand-special143158_)
                          (gx#core-expand-block__0
                           _stx143157_
                           _expand-special143158_))
                        _g147890_))
                ((##fx= _g147889_ 3)
                 (apply (lambda (_stx143164_
                                 _expand-special143165_
                                 _begin-form143166_)
                          (gx#core-expand-block__1
                           _stx143164_
                           _expand-special143165_
                           _begin-form143166_))
                        _g147890_))
                ((##fx= _g147889_ 4)
                 (apply (lambda (_stx143170_
                                 _expand-special143171_
                                 _begin-form143172_
                                 _expand-e143173_)
                          (gx#core-expand-block__%
                           _stx143170_
                           _expand-special143171_
                           _begin-form143172_
                           _expand-e143173_))
                        _g147890_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g147890_))))))
    (define gx#core-expand-block*
      (lambda (_stx142929_ _expand-special142930_)
        (let* ((_g142931142942_
                (gx#core-expand-block__1
                 _stx142929_
                 _expand-special142930_
                 '#f))
               (_E142935142946_
                (lambda () (error '"No clause matching" _g142931142942_))))
          (let ((_K142940142977_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx142929_)))
                (_K142937142963_ (lambda (_expr142961_) _expr142961_))
                (_K142936142952_
                 (lambda (_body142950_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body142950_))
                    (gx#stx-source _stx142929_)))))
            (let ((_try-match142933142973_
                   (lambda ()
                     (if (##pair? _g142931142942_)
                         (let ((_tl142939142968_ (##cdr _g142931142942_))
                               (_hd142938142966_ (##car _g142931142942_)))
                           (if (##null? _tl142939142968_)
                               (let ((_expr142971_ _hd142938142966_))
                                 (_K142937142963_ _expr142971_))
                               (let ((_body142955_ _g142931142942_))
                                 (_K142936142952_ _body142955_))))
                         (let ((_body142955_ _g142931142942_))
                           (_K142936142952_ _body142955_))))))
              (if (##null? _g142931142942_)
                  (_K142940142977_)
                  (_try-match142933142973_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx142757_)
        (letrec ((_satisfied?142759_
                  (lambda (_condition142857_)
                    (let* ((_e142858142873_ _condition142857_)
                           (_E142868142877_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142858142873_)))
                           (_E142861142896_
                            (lambda ()
                              (if (gx#stx-pair? _e142858142873_)
                                  (let ((_e142869142881_
                                         (gx#syntax-e _e142858142873_)))
                                    (let ((_hd142870142884_
                                           (##car _e142869142881_))
                                          (_tl142871142886_
                                           (##cdr _e142869142881_)))
                                      (let* ((_combinator142889_
                                              _hd142870142884_)
                                             (_body142891_ _tl142871142886_))
                                        (if (gx#stx-list? _body142891_)
                                            (let ((_$e142893_
                                                   (gx#stx-e
                                                    _combinator142889_)))
                                              (if (eq? 'not _$e142893_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?142759_
                                                        _body142891_))
                                                  (if (eq? 'and _$e142893_)
                                                      (gx#stx-andmap
                                                       _satisfied?142759_
                                                       _body142891_)
                                                      (if (eq? 'or _$e142893_)
                                                          (gx#stx-ormap
                                                           _satisfied?142759_
                                                           _body142891_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e142893_)
                      (gx#stx-andmap gx#core-resolve-identifier _body142891_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx142757_
                       _combinator142889_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E142868142877_)))))
                                  (_E142868142877_))))
                           (_E142860142919_
                            (lambda ()
                              (if (gx#stx-pair? _e142858142873_)
                                  (let ((_e142862142900_
                                         (gx#syntax-e _e142858142873_)))
                                    (let ((_hd142863142903_
                                           (##car _e142862142900_))
                                          (_tl142864142905_
                                           (##cdr _e142862142900_)))
                                      (if (and (gx#identifier?
                                                _hd142863142903_)
                                               (gx#core-identifier=?
                                                _hd142863142903_
                                                'unquote))
                                          (if (gx#stx-pair? _tl142864142905_)
                                              (let ((_e142865142908_
                                                     (gx#syntax-e
                                                      _tl142864142905_)))
                                                (let ((_hd142866142911_
                                                       (##car _e142865142908_))
                                                      (_tl142867142913_
                                                       (##cdr _e142865142908_)))
                                                  (let ((_expr142916_
                                                         _hd142866142911_))
                                                    (if (gx#stx-null?
                                                         _tl142867142913_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr142916_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E142861142896_))
                (_E142861142896_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142861142896_))
                                          (_E142861142896_))))
                                  (_E142861142896_))))
                           (_E142859142925_
                            (lambda ()
                              (let ((_id142923_ _e142858142873_))
                                (if (gx#identifier? _id142923_)
                                    (gx#core-bound-identifier?__%
                                     _id142923_
                                     gx#feature-binding?)
                                    (_E142860142919_))))))
                      (_E142859142925_))))
                 (_loop142760_
                  (lambda (_rest142790_)
                    (let* ((_e142791142799_ _rest142790_)
                           (_E142797142803_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142791142799_)))
                           (_E142793142807_
                            (lambda ()
                              (if (gx#stx-null? _e142791142799_)
                                  (if '#t '() (_E142797142803_))
                                  (_E142797142803_))))
                           (_E142792142853_
                            (lambda ()
                              (if (gx#stx-pair? _e142791142799_)
                                  (let ((_e142794142811_
                                         (gx#syntax-e _e142791142799_)))
                                    (let ((_hd142795142814_
                                           (##car _e142794142811_))
                                          (_tl142796142816_
                                           (##cdr _e142794142811_)))
                                      (let* ((_hd142819_ _hd142795142814_)
                                             (_rest142821_ _tl142796142816_))
                                        (if '#t
                                            (let* ((_e142822142829_ _hd142819_)
                                                   (_E142824142833_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e142822142829_)))
                                                   (_E142823142849_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142822142829_)
                                                          (let ((_e142825142837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142822142829_)))
                    (let ((_hd142826142840_ (##car _e142825142837_))
                          (_tl142827142842_ (##cdr _e142825142837_)))
                      (let* ((_condition142845_ _hd142826142840_)
                             (_body142847_ _tl142827142842_))
                        (if '#t
                            (if (gx#stx-eq? _condition142845_ 'else)
                                (if (gx#stx-null? _rest142821_)
                                    _body142847_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx142757_
                                     _hd142819_))
                                (if (_satisfied?142759_ _condition142845_)
                                    _body142847_
                                    (_loop142760_ _rest142821_)))
                            (_E142824142833_)))))
                  (_E142824142833_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142823142849_))
                                            (_E142793142807_)))))
                                  (_E142793142807_)))))
                      (_E142792142853_)))))
          (let* ((_e142761142768_ _stx142757_)
                 (_E142763142772_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142761142768_)))
                 (_E142762142786_
                  (lambda ()
                    (if (gx#stx-pair? _e142761142768_)
                        (let ((_e142764142776_ (gx#syntax-e _e142761142768_)))
                          (let ((_hd142765142779_ (##car _e142764142776_))
                                (_tl142766142781_ (##cdr _e142764142776_)))
                            (let ((_clauses142784_ _tl142766142781_))
                              (if (gx#stx-list? _clauses142784_)
                                  (gx#core-cons
                                   'begin
                                   (_loop142760_ _clauses142784_))
                                  (_E142763142772_)))))
                        (_E142763142772_)))))
            (_E142762142786_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx142700_ _rpath142701_)
        (let* ((_e142702142712_ _stx142700_)
               (_E142704142716_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e142702142712_)))
               (_E142703142743_
                (lambda ()
                  (if (gx#stx-pair? _e142702142712_)
                      (let ((_e142705142720_ (gx#syntax-e _e142702142712_)))
                        (let ((_hd142706142723_ (##car _e142705142720_))
                              (_tl142707142725_ (##cdr _e142705142720_)))
                          (if (gx#stx-pair? _tl142707142725_)
                              (let ((_e142708142728_
                                     (gx#syntax-e _tl142707142725_)))
                                (let ((_hd142709142731_
                                       (##car _e142708142728_))
                                      (_tl142710142733_
                                       (##cdr _e142708142728_)))
                                  (let ((_path142736_ _hd142709142731_))
                                    (if (gx#stx-null? _tl142710142733_)
                                        (if (gx#stx-string? _path142736_)
                                            (let ((_rpath142741_
                                                   (let ((_$e142738_
                                                          _rpath142701_))
                                                     (if _$e142738_
                                                         _$e142738_
                                                         (gx#core-resolve-path__%
                                                          _path142736_
                                                          (gx#stx-source
                                                           _stx142700_))))))
                                              (if (member _rpath142741_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx142700_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath142741_))
                                                    (gx#stx-source
                                                     _stx142700_)))))
                                            (_E142704142716_))
                                        (_E142704142716_)))))
                              (_E142704142716_))))
                      (_E142704142716_)))))
          (_E142703142743_))))
    (define gx#core-expand-include%__0
      (lambda (_stx142750_)
        (let ((_rpath142752_ '#f))
          (gx#core-expand-include%__% _stx142750_ _rpath142752_))))
    (define gx#core-expand-include%
      (lambda _g147892_
        (let ((_g147891_ (##length _g147892_)))
          (cond ((##fx= _g147891_ 1)
                 (apply (lambda (_stx142750_)
                          (gx#core-expand-include%__0 _stx142750_))
                        _g147892_))
                ((##fx= _g147891_ 2)
                 (apply (lambda (_stx142754_ _rpath142755_)
                          (gx#core-expand-include%__%
                           _stx142754_
                           _rpath142755_))
                        _g147892_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g147892_))))))
    (define gx#core-apply-expander__%
      (lambda (_K142669_ _stx142670_ _method142671_)
        (if (procedure? _K142669_)
            (let ((_$e142673_ (gx#stx-source _stx142670_)))
              (if _$e142673_
                  ((lambda (_g142675142677_)
                     (gx#stx-wrap-source
                      (_K142669_ _stx142670_)
                      _g142675142677_))
                   _$e142673_)
                  (_K142669_ _stx142670_)))
            (let ((_$e142680_ (bound-method-ref _K142669_ _method142671_)))
              (if _$e142680_
                  ((lambda (_g142682142684_)
                     (gx#core-apply-expander__%
                      _g142682142684_
                      _stx142670_
                      _method142671_))
                   _$e142680_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx142670_
                   _method142671_))))))
    (define gx#core-apply-expander__0
      (lambda (_K142690_ _stx142691_)
        (let ((_method142693_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K142690_ _stx142691_ _method142693_))))
    (define gx#core-apply-expander
      (lambda _g147894_
        (let ((_g147893_ (##length _g147894_)))
          (cond ((##fx= _g147893_ 2)
                 (apply (lambda (_K142690_ _stx142691_)
                          (gx#core-apply-expander__0 _K142690_ _stx142691_))
                        _g147894_))
                ((##fx= _g147893_ 3)
                 (apply (lambda (_K142695_ _stx142696_ _method142697_)
                          (gx#core-apply-expander__%
                           _K142695_
                           _stx142696_
                           _method142697_))
                        _g147894_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g147894_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self142665_ _stx142666_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx142666_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self142518_ _stx142519_)
        (let* ((_self142520142526_ _self142518_)
               (_E142522142530_
                (lambda () (error '"No clause matching" _self142520142526_)))
               (_K142523142535_
                (lambda (_K142533_)
                  (gx#core-apply-expander__0 _K142533_ _stx142519_))))
          (if (##structure-instance-of? _self142520142526_ 'gx#core-macro::t)
              (let* ((_e142524142538_
                      (##unchecked-structure-ref
                       _self142520142526_
                       '1
                       gx#expander::t
                       '#f))
                     (_K142541_ _e142524142538_))
                (_K142523142535_ _K142541_))
              (_E142522142530_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self142371_ _stx142372_)
        (if (gx#sealed-syntax? _stx142372_)
            _stx142372_
            (let* ((_self142373142379_ _self142371_)
                   (_E142375142383_
                    (lambda ()
                      (error '"No clause matching" _self142373142379_)))
                   (_K142376142388_
                    (lambda (_K142386_)
                      (gx#core-apply-expander__0 _K142386_ _stx142372_))))
              (if (##structure-instance-of?
                   _self142373142379_
                   'gx#core-expander::t)
                  (let* ((_e142377142391_
                          (##unchecked-structure-ref
                           _self142373142379_
                           '1
                           gx#expander::t
                           '#f))
                         (_K142394_ _e142377142391_))
                    (_K142376142388_ _K142394_))
                  (_E142375142383_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self142233_ _stx142234_ _top?142235_)
        (if (_top?142235_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self142233_ _stx142234_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx142234_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self142240_ _stx142241_)
        (let ((_top?142243_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self142240_
           _stx142241_
           _top?142243_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g147896_
        (let ((_g147895_ (##length _g147896_)))
          (cond ((##fx= _g147895_ 2)
                 (apply (lambda (_self142240_ _stx142241_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self142240_
                           _stx142241_))
                        _g147896_))
                ((##fx= _g147895_ 3)
                 (apply (lambda (_self142245_ _stx142246_ _top?142247_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self142245_
                           _stx142246_
                           _top?142247_))
                        _g147896_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g147896_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self142107_ _stx142108_)
        (gx#top-special-form::apply-macro-expander__%
         _self142107_
         _stx142108_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self141932_ _stx141933_)
        (let* ((_self141934141940_ _self141932_)
               (_E141936141944_
                (lambda () (error '"No clause matching" _self141934141940_)))
               (_K141937141977_
                (lambda (_id141947_)
                  (let* ((_e141948141955_ _stx141933_)
                         (_E141950141959_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e141948141955_)))
                         (_E141949141973_
                          (lambda ()
                            (if (gx#stx-pair? _e141948141955_)
                                (let ((_e141951141963_
                                       (gx#syntax-e _e141948141955_)))
                                  (let ((_hd141952141966_
                                         (##car _e141951141963_))
                                        (_tl141953141968_
                                         (##cdr _e141951141963_)))
                                    (let ((_body141971_ _tl141953141968_))
                                      (if '#t
                                          (gx#core-cons
                                           _id141947_
                                           _body141971_)
                                          (_E141950141959_)))))
                                (_E141950141959_)))))
                    (_E141949141973_)))))
          (if (##structure-instance-of?
               _self141934141940_
               'gx#rename-macro-expander::t)
              (let* ((_e141938141980_
                      (##unchecked-structure-ref
                       _self141934141940_
                       '1
                       gx#expander::t
                       '#f))
                     (_id141983_ _e141938141980_))
                (_K141937141977_ _id141983_))
              (_E141936141944_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self141758_ _stx141759_ _method141760_)
        (let* ((_self141761141769_ _self141758_)
               (_E141763141773_
                (lambda () (error '"No clause matching" _self141761141769_)))
               (_K141764141780_
                (lambda (_phi141776_ _ctx141777_ _K141778_)
                  (gx#core-apply-user-macro
                   _K141778_
                   _stx141759_
                   _ctx141777_
                   _phi141776_
                   _method141760_))))
          (if (##structure-instance-of?
               _self141761141769_
               'gx#macro-expander::t)
              (let* ((_e141765141783_
                      (##unchecked-structure-ref
                       _self141761141769_
                       '1
                       gx#expander::t
                       '#f))
                     (_K141786_ _e141765141783_)
                     (_e141766141788_
                      (##unchecked-structure-ref
                       _self141761141769_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx141791_ _e141766141788_)
                     (_e141767141793_
                      (##unchecked-structure-ref
                       _self141761141769_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi141796_ _e141767141793_))
                (_K141764141780_ _phi141796_ _ctx141791_ _K141786_))
              (_E141763141773_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self141801_ _stx141802_)
        (let ((_method141804_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self141801_
           _stx141802_
           _method141804_))))
    (define gx#core-apply-user-expander
      (lambda _g147898_
        (let ((_g147897_ (##length _g147898_)))
          (cond ((##fx= _g147897_ 2)
                 (apply (lambda (_self141801_ _stx141802_)
                          (gx#core-apply-user-expander__0
                           _self141801_
                           _stx141802_))
                        _g147898_))
                ((##fx= _g147897_ 3)
                 (apply (lambda (_self141806_ _stx141807_ _method141808_)
                          (gx#core-apply-user-expander__%
                           _self141806_
                           _stx141807_
                           _method141808_))
                        _g147898_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g147898_))))))
    (define gx#core-apply-user-macro
      (lambda (_K141748_ _stx141749_ _ctx141750_ _phi141751_ _method141752_)
        (let ((_mark141754_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx141750_
                _phi141751_
                _stx141749_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K141748_
               (gx#stx-apply-mark _stx141749_ _mark141754_)
               _method141752_)
              _mark141754_))
           gx#current-expander-marks
           (cons _mark141754_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx141600_ _phi141601_ _ctx141602_)
        (let _lp141604_ ((_bind141606_
                          (gx#core-resolve-identifier__%
                           _stx141600_
                           _phi141601_
                           _ctx141602_)))
          (if (##structure-direct-instance-of?
               _bind141606_
               'gx#import-binding::t)
              (_lp141604_
               (##unchecked-structure-ref
                _bind141606_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind141606_
                   'gx#alias-binding::t)
                  (_lp141604_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind141606_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi141601_
                    _ctx141602_))
                  _bind141606_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx141611_)
        (let* ((_phi141613_ (gx#current-expander-phi))
               (_ctx141615_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141611_ _phi141613_ _ctx141615_))))
    (define gx#resolve-identifier__1
      (lambda (_stx141617_ _phi141618_)
        (let ((_ctx141620_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141617_ _phi141618_ _ctx141620_))))
    (define gx#resolve-identifier
      (lambda _g147900_
        (let ((_g147899_ (##length _g147900_)))
          (cond ((##fx= _g147899_ 1)
                 (apply (lambda (_stx141611_)
                          (gx#resolve-identifier__0 _stx141611_))
                        _g147900_))
                ((##fx= _g147899_ 2)
                 (apply (lambda (_stx141617_ _phi141618_)
                          (gx#resolve-identifier__1 _stx141617_ _phi141618_))
                        _g147900_))
                ((##fx= _g147899_ 3)
                 (apply (lambda (_stx141622_ _phi141623_ _ctx141624_)
                          (gx#resolve-identifier__%
                           _stx141622_
                           _phi141623_
                           _ctx141624_))
                        _g147900_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g147900_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx141558_ _val141559_ _rebind?141560_ _phi141561_ _ctx141562_)
        (let ((_rebind?141564_
               (if (not _rebind?141560_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?141560_) _rebind?141560_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx141558_)
           _val141559_
           _rebind?141564_
           _phi141561_
           _ctx141562_))))
    (define gx#bind-identifier!__0
      (lambda (_stx141569_ _val141570_)
        (let* ((_rebind?141572_ '#f)
               (_phi141574_ (gx#current-expander-phi))
               (_ctx141576_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141569_
           _val141570_
           _rebind?141572_
           _phi141574_
           _ctx141576_))))
    (define gx#bind-identifier!__1
      (lambda (_stx141578_ _val141579_ _rebind?141580_)
        (let* ((_phi141582_ (gx#current-expander-phi))
               (_ctx141584_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141578_
           _val141579_
           _rebind?141580_
           _phi141582_
           _ctx141584_))))
    (define gx#bind-identifier!__2
      (lambda (_stx141586_ _val141587_ _rebind?141588_ _phi141589_)
        (let ((_ctx141591_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx141586_
           _val141587_
           _rebind?141588_
           _phi141589_
           _ctx141591_))))
    (define gx#bind-identifier!
      (lambda _g147902_
        (let ((_g147901_ (##length _g147902_)))
          (cond ((##fx= _g147901_ 2)
                 (apply (lambda (_stx141569_ _val141570_)
                          (gx#bind-identifier!__0 _stx141569_ _val141570_))
                        _g147902_))
                ((##fx= _g147901_ 3)
                 (apply (lambda (_stx141578_ _val141579_ _rebind?141580_)
                          (gx#bind-identifier!__1
                           _stx141578_
                           _val141579_
                           _rebind?141580_))
                        _g147902_))
                ((##fx= _g147901_ 4)
                 (apply (lambda (_stx141586_
                                 _val141587_
                                 _rebind?141588_
                                 _phi141589_)
                          (gx#bind-identifier!__2
                           _stx141586_
                           _val141587_
                           _rebind?141588_
                           _phi141589_))
                        _g147902_))
                ((##fx= _g147901_ 5)
                 (apply (lambda (_stx141593_
                                 _val141594_
                                 _rebind?141595_
                                 _phi141596_
                                 _ctx141597_)
                          (gx#bind-identifier!__%
                           _stx141593_
                           _val141594_
                           _rebind?141595_
                           _phi141596_
                           _ctx141597_))
                        _g147902_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g147902_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx141530_ _phi141531_ _ctx141532_)
        (let _lp141534_ ((_e141536_ _stx141530_)
                         (_marks141537_ (gx#current-expander-marks)))
          (if (symbol? _e141536_)
              (gx#core-resolve-binding
               _e141536_
               _phi141531_
               _phi141531_
               _ctx141532_
               (reverse _marks141537_))
              (if (gx#identifier-quote? _e141536_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e141536_ '1 gx#AST::t '#f)
                   _phi141531_
                   '0
                   (##unchecked-structure-ref
                    _e141536_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e141536_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e141536_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e141536_ '1 gx#AST::t '#f)
                       _phi141531_
                       _phi141531_
                       _ctx141532_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e141536_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks141537_))
                      (if (##structure-direct-instance-of?
                           _e141536_
                           'gx#syntax-wrap::t)
                          (_lp141534_
                           (##unchecked-structure-ref
                            _e141536_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e141536_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks141537_))
                          (if (##structure-instance-of?
                               _e141536_
                               'gerbil#AST::t)
                              (_lp141534_
                               (##unchecked-structure-ref
                                _e141536_
                                '1
                                gx#AST::t
                                '#f)
                               _marks141537_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx141530_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx141542_)
        (let* ((_phi141544_ (gx#current-expander-phi))
               (_ctx141546_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141542_
           _phi141544_
           _ctx141546_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx141548_ _phi141549_)
        (let ((_ctx141551_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx141548_
           _phi141549_
           _ctx141551_))))
    (define gx#core-resolve-identifier
      (lambda _g147904_
        (let ((_g147903_ (##length _g147904_)))
          (cond ((##fx= _g147903_ 1)
                 (apply (lambda (_stx141542_)
                          (gx#core-resolve-identifier__0 _stx141542_))
                        _g147904_))
                ((##fx= _g147903_ 2)
                 (apply (lambda (_stx141548_ _phi141549_)
                          (gx#core-resolve-identifier__1
                           _stx141548_
                           _phi141549_))
                        _g147904_))
                ((##fx= _g147903_ 3)
                 (apply (lambda (_stx141553_ _phi141554_ _ctx141555_)
                          (gx#core-resolve-identifier__%
                           _stx141553_
                           _phi141554_
                           _ctx141555_))
                        _g147904_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g147904_))))))
    (define gx#core-resolve-binding
      (lambda (_id141443_
               _phi141444_
               _src-phi141445_
               _ctx141446_
               _marks141447_)
        (letrec ((_resolve141449_
                  (lambda (_ctx141517_ _src-phi141518_ _key141519_)
                    (let _lp141521_ ((_ctx141523_
                                      (gx#core-context-shift
                                       _ctx141517_
                                       _phi141444_))
                                     (_dphi141524_
                                      (fx- _phi141444_ _src-phi141518_)))
                      (let ((_$e141526_
                             (gx#core-context-resolve
                              _ctx141523_
                              _key141519_)))
                        (if _$e141526_
                            (values _$e141526_)
                            (if (fxzero? _dphi141524_)
                                '#f
                                (if (fxpositive? _dphi141524_)
                                    (_lp141521_
                                     (gx#core-context-shift _ctx141523_ '-1)
                                     (fx- _dphi141524_ '1))
                                    (_lp141521_
                                     (gx#core-context-shift _ctx141523_ '1)
                                     (fx+ _dphi141524_ '1))))))))))
          (let _lp141451_ ((_ctx141453_ _ctx141446_)
                           (_src-phi141454_ _src-phi141445_)
                           (_rest141455_ _marks141447_))
            (let* ((_rest141456141464_ _rest141455_)
                   (_else141458141472_
                    (lambda ()
                      (_resolve141449_
                       _ctx141453_
                       _src-phi141454_
                       _id141443_)))
                   (_K141460141505_
                    (lambda (_rest141475_ _hd141476_)
                      (let* ((_hd141477141483_ _hd141476_)
                             (_E141479141487_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd141477141483_)))
                             (_K141480141497_
                              (lambda (_subst141490_)
                                (let ((_$e141494_
                                       (let ((_key141492_
                                              (if _subst141490_
                                                  (hash-get
                                                   _subst141490_
                                                   _id141443_)
                                                  '#f)))
                                         (if _key141492_
                                             (_resolve141449_
                                              _ctx141453_
                                              _src-phi141454_
                                              _key141492_)
                                             '#f))))
                                  (if _$e141494_
                                      _$e141494_
                                      (_lp141451_
                                       (##unchecked-structure-ref
                                        _hd141476_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd141476_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest141475_))))))
                        (if (##structure-instance-of?
                             _hd141477141483_
                             'gx#expander-mark::t)
                            (let* ((_e141481141500_
                                    (##unchecked-structure-ref
                                     _hd141477141483_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst141503_ _e141481141500_))
                              (_K141480141497_ _subst141503_))
                            (_E141479141487_))))))
              (if (##pair? _rest141456141464_)
                  (let ((_hd141461141508_ (##car _rest141456141464_))
                        (_tl141462141510_ (##cdr _rest141456141464_)))
                    (let* ((_hd141513_ _hd141461141508_)
                           (_rest141515_ _tl141462141510_))
                      (_K141460141505_ _rest141515_ _hd141513_)))
                  (_else141458141472_)))))))
    (define gx#core-bind!__%
      (lambda (_key141319_ _val141320_ _rebind?141321_ _phi141322_ _ctx141323_)
        (letrec ((_update-binding141325_
                  (lambda (_xval141396_)
                    (if (or (_rebind?141321_
                             _ctx141323_
                             _xval141396_
                             _val141320_)
                            (and (##structure-direct-instance-of?
                                  _xval141396_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval141396_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val141320_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val141320_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval141396_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val141320_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val141320_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval141396_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val141320_
                        (if (and (##structure-direct-instance-of?
                                  _val141320_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val141320_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval141396_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val141320_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval141396_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval141396_
                            (if (and (##structure-direct-instance-of?
                                      _val141320_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval141396_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key141319_
                                 (cons (##unchecked-structure-ref
                                        _val141320_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val141320_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval141396_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval141396_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval141396_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval141396_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key141319_
                                 _val141320_
                                 _xval141396_))))))
                 (_gensubst141326_
                  (lambda (_subst141391_ _id141392_)
                    (let ((_eid141394_
                           (gensym (if (uninterned-symbol? _id141392_)
                                       '%
                                       _id141392_))))
                      (table-set! _subst141391_ _id141392_ _eid141394_)
                      _eid141394_)))
                 (_subst!141327_
                  (lambda (_key141329_)
                    (let* ((_key141330141338_ _key141329_)
                           (_else141332141346_ (lambda () _key141329_))
                           (_K141334141379_
                            (lambda (_mark141349_ _id141350_)
                              (let* ((_mark141351141357_ _mark141349_)
                                     (_E141353141361_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark141351141357_)))
                                     (_K141354141371_
                                      (lambda (_subst141364_)
                                        (if (not _subst141364_)
                                            (let ((_subst141366_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark141349_
                                               _subst141366_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst141326_
                                               _subst141366_
                                               _id141350_))
                                            (let ((_$e141368_
                                                   (hash-get
                                                    _subst141364_
                                                    _id141350_)))
                                              (if _$e141368_
                                                  (values _$e141368_)
                                                  (_gensubst141326_
                                                   _subst141364_
                                                   _id141350_)))))))
                                (if (##structure-instance-of?
                                     _mark141351141357_
                                     'gx#expander-mark::t)
                                    (let* ((_e141355141374_
                                            (##unchecked-structure-ref
                                             _mark141351141357_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst141377_ _e141355141374_))
                                      (_K141354141371_ _subst141377_))
                                    (_E141353141361_))))))
                      (if (##pair? _key141330141338_)
                          (let ((_hd141335141382_ (##car _key141330141338_))
                                (_tl141336141384_ (##cdr _key141330141338_)))
                            (let* ((_id141387_ _hd141335141382_)
                                   (_mark141389_ _tl141336141384_))
                              (_K141334141379_ _mark141389_ _id141387_)))
                          (_else141332141346_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx141323_ _phi141322_)
           (_subst!141327_ _key141319_)
           _val141320_
           _update-binding141325_))))
    (define gx#core-bind!__0
      (lambda (_key141413_ _val141414_)
        (let* ((_rebind?141416_ false)
               (_phi141418_ (gx#current-expander-phi))
               (_ctx141420_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141413_
           _val141414_
           _rebind?141416_
           _phi141418_
           _ctx141420_))))
    (define gx#core-bind!__1
      (lambda (_key141422_ _val141423_ _rebind?141424_)
        (let* ((_phi141426_ (gx#current-expander-phi))
               (_ctx141428_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141422_
           _val141423_
           _rebind?141424_
           _phi141426_
           _ctx141428_))))
    (define gx#core-bind!__2
      (lambda (_key141430_ _val141431_ _rebind?141432_ _phi141433_)
        (let ((_ctx141435_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key141430_
           _val141431_
           _rebind?141432_
           _phi141433_
           _ctx141435_))))
    (define gx#core-bind!
      (lambda _g147906_
        (let ((_g147905_ (##length _g147906_)))
          (cond ((##fx= _g147905_ 2)
                 (apply (lambda (_key141413_ _val141414_)
                          (gx#core-bind!__0 _key141413_ _val141414_))
                        _g147906_))
                ((##fx= _g147905_ 3)
                 (apply (lambda (_key141422_ _val141423_ _rebind?141424_)
                          (gx#core-bind!__1
                           _key141422_
                           _val141423_
                           _rebind?141424_))
                        _g147906_))
                ((##fx= _g147905_ 4)
                 (apply (lambda (_key141430_
                                 _val141431_
                                 _rebind?141432_
                                 _phi141433_)
                          (gx#core-bind!__2
                           _key141430_
                           _val141431_
                           _rebind?141432_
                           _phi141433_))
                        _g147906_))
                ((##fx= _g147905_ 5)
                 (apply (lambda (_key141437_
                                 _val141438_
                                 _rebind?141439_
                                 _phi141440_
                                 _ctx141441_)
                          (gx#core-bind!__%
                           _key141437_
                           _val141438_
                           _rebind?141439_
                           _phi141440_
                           _ctx141441_))
                        _g147906_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g147906_))))))
    (define gx#core-identifier-key
      (lambda (_stx141253_)
        (if (symbol? _stx141253_)
            (let* ((_g141254141262_ (gx#current-expander-marks))
                   (_else141256141270_ (lambda () _stx141253_))
                   (_K141258141275_
                    (lambda (_hd141273_) (cons _stx141253_ _hd141273_))))
              (if (##pair? _g141254141262_)
                  (let* ((_hd141259141278_ (##car _g141254141262_))
                         (_hd141281_ _hd141259141278_))
                    (_K141258141275_ _hd141281_))
                  (_else141256141270_)))
            (if (gx#identifier? _stx141253_)
                (let* ((_id141283_ (gx#syntax-local-unwrap _stx141253_))
                       (_eid141285_ (gx#stx-e _id141283_))
                       (_marks141287_ (gx#stx-identifier-marks* _id141283_)))
                  (let* ((_marks141289141297_ _marks141287_)
                         (_else141291141305_ (lambda () _eid141285_))
                         (_K141293141310_
                          (lambda (_hd141308_) (cons _eid141285_ _hd141308_))))
                    (if (##pair? _marks141289141297_)
                        (let* ((_hd141294141313_ (##car _marks141289141297_))
                               (_hd141316_ _hd141294141313_))
                          (_K141293141310_ _hd141316_))
                        (_else141291141305_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx141253_)))))
    (define gx#core-context-shift
      (lambda (_ctx141198_ _phi141199_)
        (letrec ((_make-phi141201_
                  (lambda (_super141251_)
                    (let ((__obj147877
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj147877
                       (gensym 'phi)
                       _super141251_)
                      __obj147877)))
                 (_make-phi/up141202_
                  (lambda (_ctx141246_ _super141247_)
                    (let ((_ctx+1141249_ (_make-phi141201_ _super141247_)))
                      (##unchecked-structure-set!
                       _ctx141246_
                       _ctx+1141249_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1141249_
                       _ctx141246_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1141249_)))
                 (_make-phi/down141203_
                  (lambda (_ctx141241_ _super141242_)
                    (let ((_ctx-1141244_ (_make-phi141201_ _super141242_)))
                      (##unchecked-structure-set!
                       _ctx-1141244_
                       _ctx141241_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx141241_
                       _ctx-1141244_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1141244_)))
                 (_shift141204_
                  (lambda (_ctx141225_
                           _delta141226_
                           _make-delta-context141227_
                           _phi141228_
                           _K141229_)
                    (let ((_$e141231_
                           (##unchecked-structure-ref
                            _ctx141225_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e141231_
                          ((lambda (_super141234_)
                             (let* ((_super141236_
                                     (_K141229_ _super141234_ _delta141226_))
                                    (_ctx+d141238_
                                     (_make-delta-context141227_
                                      _ctx141225_
                                      _super141236_)))
                               (_K141229_
                                _ctx+d141238_
                                (fx- _phi141228_ _delta141226_))))
                           _$e141231_)
                          (error '"Bad context" _ctx141225_))))))
          (let _K141206_ ((_ctx141208_ _ctx141198_) (_phi141209_ _phi141199_))
            (if (fxzero? _phi141209_)
                _ctx141208_
                (if (fx> (##vector-length _ctx141208_) '3)
                    (if (fxpositive? _phi141209_)
                        (let ((_$e141211_
                               (##unchecked-structure-ref
                                _ctx141208_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e141211_
                              ((lambda (_g141213141215_)
                                 (_K141206_
                                  _g141213141215_
                                  (fx- _phi141209_ '1)))
                               _$e141211_)
                              (_shift141204_
                               _ctx141208_
                               '1
                               _make-phi/up141202_
                               _phi141209_
                               _K141206_)))
                        (let ((_$e141218_
                               (##unchecked-structure-ref
                                _ctx141208_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e141218_
                              ((lambda (_g141220141222_)
                                 (_K141206_
                                  _g141220141222_
                                  (fx+ _phi141209_ '1)))
                               _$e141218_)
                              (_shift141204_
                               _ctx141208_
                               '-1
                               _make-phi/down141203_
                               _phi141209_
                               _K141206_))))
                    _ctx141208_))))))
    (define gx#core-context-get
      (lambda (_ctx141195_ _key141196_)
        (hash-get
         (##unchecked-structure-ref _ctx141195_ '2 gx#expander-context::t '#f)
         _key141196_)))
    (define gx#core-context-put!
      (lambda (_ctx141191_ _key141192_ _val141193_)
        (table-set!
         (##unchecked-structure-ref _ctx141191_ '2 gx#expander-context::t '#f)
         _key141192_
         _val141193_)))
    (define gx#core-context-resolve
      (lambda (_ctx141178_ _key141179_)
        (let _lp141181_ ((_ctx141183_ _ctx141178_))
          (let ((_$e141185_ (gx#core-context-get _ctx141183_ _key141179_)))
            (if _$e141185_
                (values _$e141185_)
                (let ((_$e141188_
                       (if (fx> (##vector-length _ctx141183_) '3)
                           (##unchecked-structure-ref
                            _ctx141183_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e141188_ (_lp141181_ _$e141188_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx141168_ _key141169_ _val141170_ _rebind141171_)
        (let ((_$e141173_ (gx#core-context-get _ctx141168_ _key141169_)))
          (if _$e141173_
              ((lambda (_xval141176_)
                 (gx#core-context-put!
                  _ctx141168_
                  _key141169_
                  (_rebind141171_ _xval141176_)))
               _$e141173_)
              (gx#core-context-put! _ctx141168_ _key141169_ _val141170_)))))
    (define gx#core-context-top__%
      (lambda (_ctx141146_ _stop?141147_)
        (let _lp141149_ ((_ctx141151_ _ctx141146_))
          (if (_stop?141147_ _ctx141151_)
              _ctx141151_
              (if (##structure-instance-of? _ctx141151_ 'gx#context-phi::t)
                  (_lp141149_
                   (##unchecked-structure-ref
                    _ctx141151_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx141157_ (gx#current-expander-context))
               (_stop?141159_ gx#top-context?))
          (gx#core-context-top__% _ctx141157_ _stop?141159_))))
    (define gx#core-context-top__1
      (lambda (_ctx141161_)
        (let ((_stop?141163_ gx#top-context?))
          (gx#core-context-top__% _ctx141161_ _stop?141163_))))
    (define gx#core-context-top
      (lambda _g147908_
        (let ((_g147907_ (##length _g147908_)))
          (cond ((##fx= _g147907_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g147908_))
                ((##fx= _g147907_ 1)
                 (apply (lambda (_ctx141161_)
                          (gx#core-context-top__1 _ctx141161_))
                        _g147908_))
                ((##fx= _g147907_ 2)
                 (apply (lambda (_ctx141165_ _stop?141166_)
                          (gx#core-context-top__% _ctx141165_ _stop?141166_))
                        _g147908_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g147908_))))))
    (define gx#core-context-root__%
      (lambda (_ctx141131_)
        (let _lp141133_ ((_ctx141135_ _ctx141131_))
          (if (##structure-instance-of? _ctx141135_ 'gx#context-phi::t)
              (_lp141133_
               (##unchecked-structure-ref
                _ctx141135_
                '3
                gx#phi-context::t
                '#f))
              _ctx141135_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx141141_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx141141_))))
    (define gx#core-context-root
      (lambda _g147910_
        (let ((_g147909_ (##length _g147910_)))
          (cond ((##fx= _g147909_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g147910_))
                ((##fx= _g147909_ 1)
                 (apply (lambda (_ctx141143_)
                          (gx#core-context-root__% _ctx141143_))
                        _g147910_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g147910_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx141112_ . __141109141113_)
        (let ((_$e141116_ (gx#current-expander-allow-rebind?)))
          (if _$e141116_
              _$e141116_
              (if (##structure-instance-of? _ctx141112_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx141112_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx141112_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx141123_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx141123_))))
    (define gx#core-context-rebind?
      (lambda _g147912_
        (let ((_g147911_ (##length _g147912_)))
          (cond ((##fx= _g147911_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g147912_))
                ((##fx= _g147911_ 1)
                 (apply (lambda (_ctx141125_)
                          (gx#core-context-rebind?__% _ctx141125_))
                        _g147912_))
                ((##fx>= _g147911_ 1)
                 (apply gx#core-context-rebind?__% _g147912_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g147912_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx141095_)
        (let ((_$e141097_ (gx#core-context-top__1 _ctx141095_)))
          (if _$e141097_
              ((lambda (_ctx141100_)
                 (if (##structure-instance-of?
                      _ctx141100_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx141100_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e141097_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx141106_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx141106_))))
    (define gx#core-context-namespace
      (lambda _g147914_
        (let ((_g147913_ (##length _g147914_)))
          (cond ((##fx= _g147913_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g147914_))
                ((##fx= _g147913_ 1)
                 (apply (lambda (_ctx141108_)
                          (gx#core-context-namespace__% _ctx141108_))
                        _g147914_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g147914_))))))
    (define gx#expander-binding?__%
      (lambda (_bind141081_ _is?141082_)
        (if (##structure-direct-instance-of?
             _bind141081_
             'gx#syntax-binding::t)
            (_is?141082_
             (##unchecked-structure-ref
              _bind141081_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind141087_)
        (let ((_is?141089_ gx#expander?))
          (gx#expander-binding?__% _bind141087_ _is?141089_))))
    (define gx#expander-binding?
      (lambda _g147916_
        (let ((_g147915_ (##length _g147916_)))
          (cond ((##fx= _g147915_ 1)
                 (apply (lambda (_bind141087_)
                          (gx#expander-binding?__0 _bind141087_))
                        _g147916_))
                ((##fx= _g147915_ 2)
                 (apply (lambda (_bind141091_ _is?141092_)
                          (gx#expander-binding?__% _bind141091_ _is?141092_))
                        _g147916_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g147916_))))))
    (define gx#core-expander-binding?
      (lambda (_bind141078_)
        (gx#expander-binding?__% _bind141078_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind141076_)
        (gx#expander-binding?__% _bind141076_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind141070_)
        (letrec ((_direct-special-form?141072_
                  (lambda (_obj141074_)
                    (##structure-direct-instance-of?
                     _obj141074_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind141070_
           _direct-special-form?141072_))))
    (define gx#special-form-binding?
      (lambda (_bind141068_)
        (gx#expander-binding?__% _bind141068_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind141059_)
        (letrec ((_feature?141061_
                  (lambda (_e141063_)
                    (let ((_$e141065_
                           (##structure-instance-of?
                            _e141063_
                            'gx#feature-expander::t)))
                      (if _$e141065_
                          _$e141065_
                          (##structure-instance-of?
                           _e141063_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind141059_ _feature?141061_))))
    (define gx#private-feature-binding?
      (lambda (_bind141057_)
        (gx#expander-binding?__% _bind141057_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id141044_ _bound?141045_)
        (if (gx#identifier? _id141044_)
            (_bound?141045_ (gx#resolve-identifier__0 _id141044_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id141050_)
        (let ((_bound?141052_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id141050_ _bound?141052_))))
    (define gx#core-bound-identifier?
      (lambda _g147918_
        (let ((_g147917_ (##length _g147918_)))
          (cond ((##fx= _g147917_ 1)
                 (apply (lambda (_id141050_)
                          (gx#core-bound-identifier?__0 _id141050_))
                        _g147918_))
                ((##fx= _g147917_ 2)
                 (apply (lambda (_id141054_ _bound?141055_)
                          (gx#core-bound-identifier?__%
                           _id141054_
                           _bound?141055_))
                        _g147918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g147918_))))))
    (define gx#core-identifier=?
      (lambda (_x141034_ _y141035_)
        (letrec ((_y=?141037_
                  (lambda (_xid141041_)
                    ((if (list? _y141035_) memq eq?) _xid141041_ _y141035_))))
          (let ((_bind141039_ (gx#resolve-identifier__0 _x141034_)))
            (if (##structure-instance-of? _bind141039_ 'gx#binding::t)
                (_y=?141037_
                 (##unchecked-structure-ref _bind141039_ '1 gx#binding::t '#f))
                (_y=?141037_ (gx#stx-e _x141034_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e141032_)
        (if (interned-symbol? _e141032_)
            (string-index (symbol->string _e141032_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx140987_ _src140988_ _ctx140989_ _marks140990_)
        (if (##structure? _stx140987_)
            (let ((_$e140992_ (gx#sealed-syntax-unwrap _stx140987_)))
              (if _$e140992_
                  (values _$e140992_)
                  (if (gx#identifier? _stx140987_)
                      (let ((_id140995_
                             (gx#stx-unwrap__% _stx140987_ _marks140990_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id140995_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e140997_
                                (##unchecked-structure-ref
                                 _id140995_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e140997_ _$e140997_ _src140988_))
                         _ctx140989_
                         (##unchecked-structure-ref
                          _id140995_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx140987_)
                       (let ((_$e141000_ (gx#stx-source _stx140987_)))
                         (if _$e141000_ _$e141000_ _src140988_))
                       _ctx140989_
                       (reverse _marks140990_)))))
            (##structure
             gx#syntax-quote::t
             _stx140987_
             _src140988_
             _ctx140989_
             (reverse _marks140990_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx141006_)
        (let* ((_src141008_ '#f)
               (_ctx141010_ (gx#current-expander-context))
               (_marks141012_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx141006_
           _src141008_
           _ctx141010_
           _marks141012_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx141014_ _src141015_)
        (let* ((_ctx141017_ (gx#current-expander-context))
               (_marks141019_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx141014_
           _src141015_
           _ctx141017_
           _marks141019_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx141021_ _src141022_ _ctx141023_)
        (let ((_marks141025_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx141021_
           _src141022_
           _ctx141023_
           _marks141025_))))
    (define gx#core-quote-syntax
      (lambda _g147920_
        (let ((_g147919_ (##length _g147920_)))
          (cond ((##fx= _g147919_ 1)
                 (apply (lambda (_stx141006_)
                          (gx#core-quote-syntax__0 _stx141006_))
                        _g147920_))
                ((##fx= _g147919_ 2)
                 (apply (lambda (_stx141014_ _src141015_)
                          (gx#core-quote-syntax__1 _stx141014_ _src141015_))
                        _g147920_))
                ((##fx= _g147919_ 3)
                 (apply (lambda (_stx141021_ _src141022_ _ctx141023_)
                          (gx#core-quote-syntax__2
                           _stx141021_
                           _src141022_
                           _ctx141023_))
                        _g147920_))
                ((##fx= _g147919_ 4)
                 (apply (lambda (_stx141027_
                                 _src141028_
                                 _ctx141029_
                                 _marks141030_)
                          (gx#core-quote-syntax__%
                           _stx141027_
                           _src141028_
                           _ctx141029_
                           _marks141030_))
                        _g147920_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g147920_))))))
    (define gx#core-cons
      (lambda (_hd140983_ _tl140984_)
        (cons (gx#core-quote-syntax__0 _hd140983_) _tl140984_)))
    (define gx#core-list
      (lambda (_hd140980_ . _rest140981_)
        (cons (gx#core-quote-syntax__0 _hd140980_) _rest140981_)))
    (define gx#core-cons*
      (lambda (_hd140977_ . _rest140978_)
        (apply cons* (gx#core-quote-syntax__0 _hd140977_) _rest140978_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path140951_ _rel140952_)
        (let ((_path140964_ (gx#stx-e _stx-path140951_))
              (_reldir140965_
               (let _lp140954_ ((_relsrc140956_
                                 (let ((_$e140961_
                                        (gx#stx-source _stx-path140951_)))
                                   (if _$e140961_ _$e140961_ _rel140952_))))
                 (if (##structure-instance-of? _relsrc140956_ 'gerbil#AST::t)
                     (_lp140954_
                      (let ((_$e140958_ (gx#stx-source _relsrc140956_)))
                        (if _$e140958_ _$e140958_ (gx#stx-e _relsrc140956_))))
                     (if (source-location-path? _relsrc140956_)
                         (path-directory (source-location-path _relsrc140956_))
                         (if (string? _relsrc140956_)
                             (path-directory _relsrc140956_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path140964_ (path-normalize _reldir140965_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path140970_)
        (let ((_rel140972_ '#f))
          (gx#core-resolve-path__% _stx-path140970_ _rel140972_))))
    (define gx#core-resolve-path
      (lambda _g147922_
        (let ((_g147921_ (##length _g147922_)))
          (cond ((##fx= _g147921_ 1)
                 (apply (lambda (_stx-path140970_)
                          (gx#core-resolve-path__0 _stx-path140970_))
                        _g147922_))
                ((##fx= _g147921_ 2)
                 (apply (lambda (_stx-path140974_ _rel140975_)
                          (gx#core-resolve-path__%
                           _stx-path140974_
                           _rel140975_))
                        _g147922_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g147922_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr140907_ _ctx140908_)
        (let* ((_repr140909140916_ _repr140907_)
               (_E140911140920_
                (lambda () (error '"No clause matching" _repr140909140916_)))
               (_K140912140928_
                (lambda (_subs140923_ _phi140924_)
                  (let ((_subst140926_
                         (if (not (null? _subs140923_))
                             (list->hash-table-eq _subs140923_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst140926_
                     _ctx140908_
                     _phi140924_
                     '#f)))))
          (if (##pair? _repr140909140916_)
              (let ((_hd140913140931_ (##car _repr140909140916_))
                    (_tl140914140933_ (##cdr _repr140909140916_)))
                (let* ((_phi140936_ _hd140913140931_)
                       (_subs140938_ _tl140914140933_))
                  (_K140912140928_ _subs140938_ _phi140936_)))
              (_E140911140920_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr140943_)
        (let ((_ctx140945_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr140943_ _ctx140945_))))
    (define gx#core-deserialize-mark
      (lambda _g147924_
        (let ((_g147923_ (##length _g147924_)))
          (cond ((##fx= _g147923_ 1)
                 (apply (lambda (_repr140943_)
                          (gx#core-deserialize-mark__0 _repr140943_))
                        _g147924_))
                ((##fx= _g147923_ 2)
                 (apply (lambda (_repr140947_ _ctx140948_)
                          (gx#core-deserialize-mark__%
                           _repr140947_
                           _ctx140948_))
                        _g147924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g147924_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx140904_)
        (gx#stx-rewrap _stx140904_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx140902_)
        (gx#stx-unwrap__% _stx140902_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx140872_)
        (let* ((_g140873140881_ (gx#current-expander-marks))
               (_else140875140889_ (lambda () _stx140872_))
               (_K140877140894_
                (lambda (_hd140892_)
                  (gx#stx-apply-mark _stx140872_ _hd140892_))))
          (if (##pair? _g140873140881_)
              (let* ((_hd140878140897_ (##car _g140873140881_))
                     (_hd140900_ _hd140878140897_))
                (_K140877140894_ _hd140900_))
              (_else140875140889_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx140857_ _E140858_)
        (let ((_bind140860_ (gx#resolve-identifier__0 _stx140857_)))
          (if (##structure-direct-instance-of?
               _bind140860_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind140860_
               '4
               gx#syntax-binding::t
               '#f)
              (_E140858_ _stx140857_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx140865_)
        (let ((_E140867_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx140865_ _E140867_))))
    (define gx#syntax-local-e
      (lambda _g147926_
        (let ((_g147925_ (##length _g147926_)))
          (cond ((##fx= _g147925_ 1)
                 (apply (lambda (_stx140865_)
                          (gx#syntax-local-e__0 _stx140865_))
                        _g147926_))
                ((##fx= _g147925_ 2)
                 (apply (lambda (_stx140869_ _E140870_)
                          (gx#syntax-local-e__% _stx140869_ _E140870_))
                        _g147926_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g147926_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx140841_ _E140842_)
        (let ((_e140844_ (gx#syntax-local-e__% _stx140841_ _E140842_)))
          (if (##structure-instance-of? _e140844_ 'gx#expander::t)
              (##structure-ref _e140844_ '1 gx#expander::t '#f)
              _e140844_))))
    (define gx#syntax-local-value__0
      (lambda (_stx140849_)
        (let ((_E140851_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx140849_ _E140851_))))
    (define gx#syntax-local-value
      (lambda _g147928_
        (let ((_g147927_ (##length _g147928_)))
          (cond ((##fx= _g147927_ 1)
                 (apply (lambda (_stx140849_)
                          (gx#syntax-local-value__0 _stx140849_))
                        _g147928_))
                ((##fx= _g147927_ 2)
                 (apply (lambda (_stx140853_ _E140854_)
                          (gx#syntax-local-value__% _stx140853_ _E140854_))
                        _g147928_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g147928_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx140838_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx140838_)))))
