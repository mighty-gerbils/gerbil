(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1709994213)
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
      (lambda _$args85001_
        (apply make-instance gx#expander-context::t _$args85001_)))
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
      (lambda _$args84998_
        (apply make-instance gx#root-context::t _$args84998_)))
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
      (lambda _$args84995_
        (apply make-instance gx#phi-context::t _$args84995_)))
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
      (lambda _$args84992_
        (apply make-instance gx#top-context::t _$args84992_)))
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
      (lambda _$args84989_
        (apply make-instance gx#module-context::t _$args84989_)))
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
      (lambda _$args84986_
        (apply make-instance gx#prelude-context::t _$args84986_)))
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
      (lambda _$args84983_
        (apply make-instance gx#local-context::t _$args84983_)))
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
      (lambda (_self84967_ _id84968_ _super84969_)
        (if (##fx< '3 (##structure-length _self84967_))
            (begin
              (##unchecked-structure-set!
               _self84967_
               _id84968_
               '1
               (##structure-type _self84967_)
               '#f)
              (##unchecked-structure-set!
               _self84967_
               (make-hash-table-eq)
               '2
               (##structure-type _self84967_)
               '#f)
              (##unchecked-structure-set!
               _self84967_
               _super84969_
               '3
               (##structure-type _self84967_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self84967_
                   '3
                   (##vector-length _self84967_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self84974_ _id84975_)
        (let ((_super84977_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self84974_ _id84975_ _super84977_))))
    (define gx#phi-context:::init!
      (lambda _g85044_
        (let ((_g85043_ (##length _g85044_)))
          (cond ((##fx= _g85043_ 2)
                 (apply (lambda (_self84974_ _id84975_)
                          (gx#phi-context:::init!__0 _self84974_ _id84975_))
                        _g85044_))
                ((##fx= _g85043_ 3)
                 (apply (lambda (_self84979_ _id84980_ _super84981_)
                          (gx#phi-context:::init!__%
                           _self84979_
                           _id84980_
                           _super84981_))
                        _g85044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g85044_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self84831_ _super84832_)
        (if (##fx< '3 (##structure-length _self84831_))
            (begin
              (##unchecked-structure-set!
               _self84831_
               (gensym 'L)
               '1
               (##structure-type _self84831_)
               '#f)
              (##unchecked-structure-set!
               _self84831_
               (make-hash-table-eq)
               '2
               (##structure-type _self84831_)
               '#f)
              (##unchecked-structure-set!
               _self84831_
               _super84832_
               '3
               (##structure-type _self84831_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self84831_
                   '3
                   (##vector-length _self84831_)))))
    (define gx#local-context:::init!__0
      (lambda (_self84837_)
        (let ((_super84839_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self84837_ _super84839_))))
    (define gx#local-context:::init!
      (lambda _g85046_
        (let ((_g85045_ (##length _g85046_)))
          (cond ((##fx= _g85045_ 1)
                 (apply (lambda (_self84837_)
                          (gx#local-context:::init!__0 _self84837_))
                        _g85046_))
                ((##fx= _g85045_ 2)
                 (apply (lambda (_self84841_ _super84842_)
                          (gx#local-context:::init!__%
                           _self84841_
                           _super84842_))
                        _g85046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g85046_))))))
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
      (lambda _$args84705_ (apply make-instance gx#binding::t _$args84705_)))
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
      (lambda _$args84702_
        (apply make-instance gx#runtime-binding::t _$args84702_)))
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
      (lambda _$args84699_
        (apply make-instance gx#local-binding::t _$args84699_)))
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
      (lambda _$args84696_
        (apply make-instance gx#top-binding::t _$args84696_)))
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
      (lambda _$args84693_
        (apply make-instance gx#module-binding::t _$args84693_)))
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
      (lambda _$args84690_
        (apply make-instance gx#extern-binding::t _$args84690_)))
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
      (lambda _$args84687_
        (apply make-instance gx#syntax-binding::t _$args84687_)))
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
      (lambda _$args84684_
        (apply make-instance gx#import-binding::t _$args84684_)))
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
      (lambda _$args84681_
        (apply make-instance gx#alias-binding::t _$args84681_)))
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
      (lambda _$args84678_ (apply make-instance gx#expander::t _$args84678_)))
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
      (lambda _$args84675_
        (apply make-instance gx#core-expander::t _$args84675_)))
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
      (lambda _$args84672_
        (apply make-instance gx#expression-form::t _$args84672_)))
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
      (lambda _$args84669_
        (apply make-instance gx#special-form::t _$args84669_)))
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
      (lambda _$args84666_
        (apply make-instance gx#definition-form::t _$args84666_)))
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
      (lambda _$args84663_
        (apply make-instance gx#top-special-form::t _$args84663_)))
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
      (lambda _$args84660_
        (apply make-instance gx#module-special-form::t _$args84660_)))
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
      (lambda _$args84657_
        (apply make-instance gx#feature-expander::t _$args84657_)))
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
      (lambda _$args84654_
        (apply make-instance gx#private-feature-expander::t _$args84654_)))
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
      (lambda _$args84651_
        (apply make-instance gx#reserved-expander::t _$args84651_)))
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
      (lambda _$args84648_
        (apply make-instance gx#macro-expander::t _$args84648_)))
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
      (lambda _$args84645_
        (apply make-instance gx#rename-macro-expander::t _$args84645_)))
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
      (lambda _$args84642_
        (apply make-instance gx#user-expander::t _$args84642_)))
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
      (lambda _$args84639_
        (apply make-instance gx#expander-mark::t _$args84639_)))
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
      (lambda (_ctx84624_ _message84625_ _stx84626_ . _details84627_)
        (let ((_ctx84637_
               (let ((_$e84629_ _ctx84624_))
                 (if _$e84629_
                     _$e84629_
                     (let ((_$e84632_ (gx#core-context-top__0)))
                       (if _$e84632_
                           ((lambda (_ctx84635_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx84635_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e84632_)
                           '#f))))))
          (raise (make-syntax-error
                  _message84625_
                  (cons _stx84626_ _details84627_)
                  _ctx84637_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx84611_ _expression?84612_)
        (gx#eval-syntax* (gx#core-expand__% _stx84611_ _expression?84612_))))
    (define gx#eval-syntax__0
      (lambda (_stx84617_)
        (let ((_expression?84619_ '#f))
          (gx#eval-syntax__% _stx84617_ _expression?84619_))))
    (define gx#eval-syntax
      (lambda _g85048_
        (let ((_g85047_ (##length _g85048_)))
          (cond ((##fx= _g85047_ 1)
                 (apply (lambda (_stx84617_) (gx#eval-syntax__0 _stx84617_))
                        _g85048_))
                ((##fx= _g85047_ 2)
                 (apply (lambda (_stx84621_ _expression?84622_)
                          (gx#eval-syntax__% _stx84621_ _expression?84622_))
                        _g85048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g85048_))))))
    (define gx#eval-syntax*
      (lambda (_stx84608_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx84608_))))
    (define gx#core-expand__%
      (lambda (_stx84595_ _expression?84596_)
        (if _expression?84596_
            (gx#core-expand-expression _stx84595_)
            (gx#core-expand-top _stx84595_))))
    (define gx#core-expand__0
      (lambda (_stx84601_)
        (let ((_expression?84603_ '#f))
          (gx#core-expand__% _stx84601_ _expression?84603_))))
    (define gx#core-expand
      (lambda _g85050_
        (let ((_g85049_ (##length _g85050_)))
          (cond ((##fx= _g85049_ 1)
                 (apply (lambda (_stx84601_) (gx#core-expand__0 _stx84601_))
                        _g85050_))
                ((##fx= _g85049_ 2)
                 (apply (lambda (_stx84605_ _expression?84606_)
                          (gx#core-expand__% _stx84605_ _expression?84606_))
                        _g85050_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g85050_))))))
    (define gx#core-expand-top
      (lambda (_stx84562_)
        (let* ((_stx84564_ (gx#core-expand*__0 _stx84562_))
               (_e8456584572_ _stx84564_)
               (_E8456784576_
                (lambda () (gx#core-expand-expression _stx84564_)))
               (_E8456684590_
                (lambda ()
                  (if (gx#stx-pair? _e8456584572_)
                      (let ((_e8456884580_ (gx#syntax-e _e8456584572_)))
                        (let ((_hd8456984583_ (##car _e8456884580_))
                              (_tl8457084585_ (##cdr _e8456884580_)))
                          (let ((_form84588_ _hd8456984583_))
                            (if (gx#core-bound-identifier?__0 _form84588_)
                                _stx84564_
                                (_E8456784576_)))))
                      (_E8456784576_)))))
          (_E8456684590_))))
    (define gx#core-expand-expression
      (lambda (_stx84509_)
        (letrec ((_sealed-expression?84511_
                  (lambda (_hd84532_)
                    (if (gx#sealed-syntax? _hd84532_)
                        (let* ((_e8453384540_ _hd84532_)
                               (_E8453584544_ (lambda () '#f))
                               (_E8453484558_
                                (lambda ()
                                  (if (gx#stx-pair? _e8453384540_)
                                      (let ((_e8453684548_
                                             (gx#syntax-e _e8453384540_)))
                                        (let ((_hd8453784551_
                                               (##car _e8453684548_))
                                              (_tl8453884553_
                                               (##cdr _e8453684548_)))
                                          (let ((_form84556_ _hd8453784551_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form84556_
                                                 gx#expression-form-binding?)
                                                (_E8453584544_)))))
                                      (_E8453584544_)))))
                          (_E8453484558_))
                        '#f)))
                 (_illegal-expression84512_
                  (lambda (_hd84530_ . _g85051_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx84509_
                     _hd84530_)))
                 (_expand-e84513_
                  (lambda (_form84525_ _hd84526_)
                    (let ((_bind84528_
                           (if (##structure-instance-of?
                                _form84525_
                                'gx#binding::t)
                               _form84525_
                               (gx#resolve-identifier__0 _form84525_))))
                      (if (gx#core-expander-binding? _bind84528_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind84528_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd84526_
                            (gx#stx-source _stx84509_)))
                          (if (##structure-direct-instance-of?
                               _bind84528_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind84528_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd84526_
                                 (gx#stx-source _stx84509_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx84509_
                               _form84525_)))))))
          (let ((_hd84515_ (gx#core-expand-head _stx84509_)))
            (if (_sealed-expression?84511_ _hd84515_)
                _hd84515_
                (if (gx#stx-pair? _hd84515_)
                    (let* ((_form84517_ (gx#stx-car _hd84515_))
                           (_bind84519_
                            (if (gx#identifier? _form84517_)
                                (gx#resolve-identifier__0 _form84517_)
                                '#f)))
                      (if (or (not _bind84519_)
                              (not (gx#core-expander-binding? _bind84519_)))
                          (_expand-e84513_ '%%app (cons '%%app _hd84515_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind84519_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd84515_
                               _illegal-expression84512_)
                              (if (gx#expression-form-binding? _bind84519_)
                                  (_expand-e84513_ _bind84519_ _hd84515_)
                                  (if (gx#direct-special-form-binding?
                                       _bind84519_)
                                      (gx#core-expand-expression
                                       (_expand-e84513_ _bind84519_ _hd84515_))
                                      (_illegal-expression84512_
                                       _hd84515_))))))
                    (if (gx#core-bound-identifier?__0 _hd84515_)
                        (_illegal-expression84512_ _hd84515_)
                        (if (gx#identifier? _hd84515_)
                            (_expand-e84513_
                             '%%ref
                             (cons '%%ref (cons _hd84515_ '())))
                            (if (gx#stx-datum? _hd84515_)
                                (_expand-e84513_
                                 '%#quote
                                 (cons '%#quote (cons _hd84515_ '())))
                                (_illegal-expression84512_ _hd84515_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx84504_)
        (call-with-parameters
         (lambda ()
           (let ((_stx84507_ (gx#core-expand-expression _stx84504_)))
             (values _stx84507_ (gx#eval-syntax* _stx84507_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx84485_ _stop?84486_)
        (let _lp84488_ ((_stx84490_ _stx84485_))
          (if (_stop?84486_ _stx84490_)
              _stx84490_
              (let ((_rstx84492_ (gx#core-expand1 _stx84490_)))
                (if (eq? _stx84490_ _rstx84492_)
                    _stx84490_
                    (_lp84488_ _rstx84492_)))))))
    (define gx#core-expand*__0
      (lambda (_stx84497_)
        (let ((_stop?84499_ false))
          (gx#core-expand*__% _stx84497_ _stop?84499_))))
    (define gx#core-expand*
      (lambda _g85053_
        (let ((_g85052_ (##length _g85053_)))
          (cond ((##fx= _g85052_ 1)
                 (apply (lambda (_stx84497_) (gx#core-expand*__0 _stx84497_))
                        _g85053_))
                ((##fx= _g85052_ 2)
                 (apply (lambda (_stx84501_ _stop?84502_)
                          (gx#core-expand*__% _stx84501_ _stop?84502_))
                        _g85053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g85053_))))))
    (define gx#core-expand1
      (lambda (_stx84441_)
        (letrec ((_step84443_
                  (lambda (_hd84480_)
                    (let ((_bind84482_ (gx#resolve-identifier__0 _hd84480_)))
                      (if (##structure-instance-of?
                           _bind84482_
                           'gx#runtime-binding::t)
                          _stx84441_
                          (if (##structure-direct-instance-of?
                               _bind84482_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind84482_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx84441_)
                              (if (not _bind84482_)
                                  _stx84441_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx84441_))))))))
          (let* ((_e8444484452_ _stx84441_)
                 (_E8445084456_ (lambda () _stx84441_))
                 (_E8444684462_
                  (lambda ()
                    (let ((_hd84460_ _e8444484452_))
                      (if (gx#identifier? _hd84460_)
                          (_step84443_ _hd84460_)
                          (_E8445084456_)))))
                 (_E8444584476_
                  (lambda ()
                    (if (gx#stx-pair? _e8444484452_)
                        (let ((_e8444784466_ (gx#syntax-e _e8444484452_)))
                          (let ((_hd8444884469_ (##car _e8444784466_))
                                (_tl8444984471_ (##cdr _e8444784466_)))
                            (let ((_hd84474_ _hd8444884469_))
                              (if (gx#identifier? _hd84474_)
                                  (_step84443_ _hd84474_)
                                  (_E8444684462_)))))
                        (_E8444684462_)))))
            (_E8444584476_)))))
    (define gx#core-expand-head
      (lambda (_stx84407_)
        (letrec ((_stop?84409_
                  (lambda (_stx84411_)
                    (let* ((_e8441284419_ _stx84411_)
                           (_E8441484423_ (lambda () '#f))
                           (_E8441384437_
                            (lambda ()
                              (if (gx#stx-pair? _e8441284419_)
                                  (let ((_e8441584427_
                                         (gx#syntax-e _e8441284419_)))
                                    (let ((_hd8441684430_
                                           (##car _e8441584427_))
                                          (_tl8441784432_
                                           (##cdr _e8441584427_)))
                                      (let ((_hd84435_ _hd8441684430_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd84435_)
                                            (_E8441484423_)))))
                                  (_E8441484423_)))))
                      (_E8441384437_)))))
          (gx#core-expand*__% _stx84407_ _stop?84409_))))
    (define gx#core-expand-block__%
      (lambda (_stx84213_
               _expand-special84214_
               _begin-form84215_
               _expand-e84216_)
        (letrec ((_expand-splice84218_
                  (lambda (_hd84381_ _body84382_ _rest84383_ _r84384_)
                    (if (gx#stx-list? _body84382_)
                        (_K84222_
                         (gx#stx-foldr cons _rest84383_ _body84382_)
                         _r84384_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx84213_
                         _hd84381_))))
                 (_expand-cond-expand84219_
                  (lambda (_hd84377_ _rest84378_ _r84379_)
                    (_K84222_
                     (cons (gx#core-expand-cond-expand% _hd84377_) _rest84378_)
                     _r84379_)))
                 (_expand-include84220_
                  (lambda (_hd84326_ _rest84327_ _r84328_)
                    (let* ((_e8432984339_ _hd84326_)
                           (_E8433184343_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8432984339_)))
                           (_E8433084373_
                            (lambda ()
                              (if (gx#stx-pair? _e8432984339_)
                                  (let ((_e8433284347_
                                         (gx#syntax-e _e8432984339_)))
                                    (let ((_hd8433384350_
                                           (##car _e8433284347_))
                                          (_tl8433484352_
                                           (##cdr _e8433284347_)))
                                      (if (gx#stx-pair? _tl8433484352_)
                                          (let ((_e8433584355_
                                                 (gx#syntax-e _tl8433484352_)))
                                            (let ((_hd8433684358_
                                                   (##car _e8433584355_))
                                                  (_tl8433784360_
                                                   (##cdr _e8433584355_)))
                                              (let ((_path84363_
                                                     _hd8433684358_))
                                                (if (gx#stx-null?
                                                     _tl8433784360_)
                                                    (if (gx#stx-string?
                                                         _path84363_)
                                                        (let* ((_rpath84365_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path84363_
                         (gx#stx-source _hd84326_)))
                       (_block84367_
                        (gx#core-expand-include%__% _hd84326_ _rpath84365_))
                       (_rbody84370_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block84367_
                            _expand-special84214_
                            '#f
                            _expand-e84216_))
                         gx#current-expander-path
                         (cons _rpath84365_ (gx#current-expander-path)))))
                  (_K84222_ _rest84327_ (foldr1 cons _r84328_ _rbody84370_)))
                (_E8433184343_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8433184343_)))))
                                          (_E8433184343_))))
                                  (_E8433184343_)))))
                      (_E8433084373_))))
                 (_expand-expression84221_
                  (lambda (_hd84322_ _rest84323_ _r84324_)
                    (_K84222_
                     _rest84323_
                     (cons (_expand-e84216_ _hd84322_) _r84324_))))
                 (_K84222_
                  (lambda (_rest84252_ _r84253_)
                    (let* ((_e8425484261_ _rest84252_)
                           (_E8425684265_
                            (lambda ()
                              (if _begin-form84215_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form84215_
                                    (reverse _r84253_))
                                   (gx#stx-source _stx84213_))
                                  _r84253_)))
                           (_E8425584318_
                            (lambda ()
                              (if (gx#stx-pair? _e8425484261_)
                                  (let ((_e8425784269_
                                         (gx#syntax-e _e8425484261_)))
                                    (let ((_hd8425884272_
                                           (##car _e8425784269_))
                                          (_tl8425984274_
                                           (##cdr _e8425784269_)))
                                      (let* ((_hd84277_ _hd8425884272_)
                                             (_rest84279_ _tl8425984274_))
                                        (if '#t
                                            (let* ((_hd84281_
                                                    (gx#core-expand-head
                                                     _hd84277_))
                                                   (_e8428284289_ _hd84281_)
                                                   (_E8428484293_
                                                    (lambda ()
                                                      (_expand-expression84221_
                                                       _hd84281_
                                                       _rest84279_
                                                       _r84253_)))
                                                   (_E8428384314_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8428284289_)
                                                          (let ((_e8428584297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8428284289_)))
                    (let ((_hd8428684300_ (##car _e8428584297_))
                          (_tl8428784302_ (##cdr _e8428584297_)))
                      (let* ((_form84305_ _hd8428684300_)
                             (_body84307_ _tl8428784302_))
                        (if '#t
                            (let ((_bind84309_
                                   (if (gx#identifier? _form84305_)
                                       (gx#resolve-identifier__0 _form84305_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind84309_)
                                  (let ((_$e84311_
                                         (##unchecked-structure-ref
                                          _bind84309_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e84311_)
                                        (_expand-splice84218_
                                         _hd84281_
                                         _body84307_
                                         _rest84279_
                                         _r84253_)
                                        (if (eq? '%#cond-expand _$e84311_)
                                            (_expand-cond-expand84219_
                                             _hd84281_
                                             _rest84279_
                                             _r84253_)
                                            (if (eq? '%#include _$e84311_)
                                                (_expand-include84220_
                                                 _hd84281_
                                                 _rest84279_
                                                 _r84253_)
                                                (_expand-special84214_
                                                 _hd84281_
                                                 _K84222_
                                                 _rest84279_
                                                 _r84253_)))))
                                  (_expand-expression84221_
                                   _hd84281_
                                   _rest84279_
                                   _r84253_)))
                            (_E8428484293_)))))
                  (_E8428484293_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8428384314_))
                                            (_E8425684265_)))))
                                  (_E8425684265_)))))
                      (_E8425584318_)))))
          (let* ((_e8422384230_ _stx84213_)
                 (_E8422584234_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8422384230_)))
                 (_E8422484248_
                  (lambda ()
                    (if (gx#stx-pair? _e8422384230_)
                        (let ((_e8422684238_ (gx#syntax-e _e8422384230_)))
                          (let ((_hd8422784241_ (##car _e8422684238_))
                                (_tl8422884243_ (##cdr _e8422684238_)))
                            (let ((_body84246_ _tl8422884243_))
                              (if (gx#stx-list? _body84246_)
                                  (_K84222_ _body84246_ '())
                                  (_E8422584234_)))))
                        (_E8422584234_)))))
            (_E8422484248_)))))
    (define gx#core-expand-block__0
      (lambda (_stx84389_ _expand-special84390_)
        (let* ((_begin-form84392_ '%#begin)
               (_expand-e84394_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx84389_
           _expand-special84390_
           _begin-form84392_
           _expand-e84394_))))
    (define gx#core-expand-block__1
      (lambda (_stx84396_ _expand-special84397_ _begin-form84398_)
        (let ((_expand-e84400_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx84396_
           _expand-special84397_
           _begin-form84398_
           _expand-e84400_))))
    (define gx#core-expand-block
      (lambda _g85055_
        (let ((_g85054_ (##length _g85055_)))
          (cond ((##fx= _g85054_ 2)
                 (apply (lambda (_stx84389_ _expand-special84390_)
                          (gx#core-expand-block__0
                           _stx84389_
                           _expand-special84390_))
                        _g85055_))
                ((##fx= _g85054_ 3)
                 (apply (lambda (_stx84396_
                                 _expand-special84397_
                                 _begin-form84398_)
                          (gx#core-expand-block__1
                           _stx84396_
                           _expand-special84397_
                           _begin-form84398_))
                        _g85055_))
                ((##fx= _g85054_ 4)
                 (apply (lambda (_stx84402_
                                 _expand-special84403_
                                 _begin-form84404_
                                 _expand-e84405_)
                          (gx#core-expand-block__%
                           _stx84402_
                           _expand-special84403_
                           _begin-form84404_
                           _expand-e84405_))
                        _g85055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g85055_))))))
    (define gx#core-expand-block*
      (lambda (_stx84161_ _expand-special84162_)
        (let* ((_g8416384174_
                (gx#core-expand-block__1 _stx84161_ _expand-special84162_ '#f))
               (_E8416784178_
                (lambda () (error '"No clause matching" _g8416384174_))))
          (let ((_K8417284209_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx84161_)))
                (_K8416984195_ (lambda (_expr84193_) _expr84193_))
                (_K8416884184_
                 (lambda (_body84182_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body84182_))
                    (gx#stx-source _stx84161_)))))
            (let ((_try-match8416584205_
                   (lambda ()
                     (if (##pair? _g8416384174_)
                         (let ((_tl8417184200_ (##cdr _g8416384174_))
                               (_hd8417084198_ (##car _g8416384174_)))
                           (if (##null? _tl8417184200_)
                               (let ((_expr84203_ _hd8417084198_))
                                 (_K8416984195_ _expr84203_))
                               (let ((_body84187_ _g8416384174_))
                                 (_K8416884184_ _body84187_))))
                         (let ((_body84187_ _g8416384174_))
                           (_K8416884184_ _body84187_))))))
              (if (##null? _g8416384174_)
                  (_K8417284209_)
                  (_try-match8416584205_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx83989_)
        (letrec ((_satisfied?83991_
                  (lambda (_condition84089_)
                    (let* ((_e8409084105_ _condition84089_)
                           (_E8410084109_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8409084105_)))
                           (_E8409384128_
                            (lambda ()
                              (if (gx#stx-pair? _e8409084105_)
                                  (let ((_e8410184113_
                                         (gx#syntax-e _e8409084105_)))
                                    (let ((_hd8410284116_
                                           (##car _e8410184113_))
                                          (_tl8410384118_
                                           (##cdr _e8410184113_)))
                                      (let* ((_combinator84121_ _hd8410284116_)
                                             (_body84123_ _tl8410384118_))
                                        (if (gx#stx-list? _body84123_)
                                            (let ((_$e84125_
                                                   (gx#stx-e
                                                    _combinator84121_)))
                                              (if (eq? 'not _$e84125_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?83991_
                                                        _body84123_))
                                                  (if (eq? 'and _$e84125_)
                                                      (gx#stx-andmap
                                                       _satisfied?83991_
                                                       _body84123_)
                                                      (if (eq? 'or _$e84125_)
                                                          (gx#stx-ormap
                                                           _satisfied?83991_
                                                           _body84123_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e84125_)
                      (gx#stx-andmap gx#core-resolve-identifier _body84123_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx83989_
                       _combinator84121_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8410084109_)))))
                                  (_E8410084109_))))
                           (_E8409284151_
                            (lambda ()
                              (if (gx#stx-pair? _e8409084105_)
                                  (let ((_e8409484132_
                                         (gx#syntax-e _e8409084105_)))
                                    (let ((_hd8409584135_
                                           (##car _e8409484132_))
                                          (_tl8409684137_
                                           (##cdr _e8409484132_)))
                                      (if (and (gx#identifier? _hd8409584135_)
                                               (gx#core-identifier=?
                                                _hd8409584135_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8409684137_)
                                              (let ((_e8409784140_
                                                     (gx#syntax-e
                                                      _tl8409684137_)))
                                                (let ((_hd8409884143_
                                                       (##car _e8409784140_))
                                                      (_tl8409984145_
                                                       (##cdr _e8409784140_)))
                                                  (let ((_expr84148_
                                                         _hd8409884143_))
                                                    (if (gx#stx-null?
                                                         _tl8409984145_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr84148_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8409384128_))
                (_E8409384128_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8409384128_))
                                          (_E8409384128_))))
                                  (_E8409384128_))))
                           (_E8409184157_
                            (lambda ()
                              (let ((_id84155_ _e8409084105_))
                                (if (gx#identifier? _id84155_)
                                    (gx#core-bound-identifier?__%
                                     _id84155_
                                     gx#feature-binding?)
                                    (_E8409284151_))))))
                      (_E8409184157_))))
                 (_loop83992_
                  (lambda (_rest84022_)
                    (let* ((_e8402384031_ _rest84022_)
                           (_E8402984035_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8402384031_)))
                           (_E8402584039_
                            (lambda ()
                              (if (gx#stx-null? _e8402384031_)
                                  (if '#t '() (_E8402984035_))
                                  (_E8402984035_))))
                           (_E8402484085_
                            (lambda ()
                              (if (gx#stx-pair? _e8402384031_)
                                  (let ((_e8402684043_
                                         (gx#syntax-e _e8402384031_)))
                                    (let ((_hd8402784046_
                                           (##car _e8402684043_))
                                          (_tl8402884048_
                                           (##cdr _e8402684043_)))
                                      (let* ((_hd84051_ _hd8402784046_)
                                             (_rest84053_ _tl8402884048_))
                                        (if '#t
                                            (let* ((_e8405484061_ _hd84051_)
                                                   (_E8405684065_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8405484061_)))
                                                   (_E8405584081_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8405484061_)
                                                          (let ((_e8405784069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8405484061_)))
                    (let ((_hd8405884072_ (##car _e8405784069_))
                          (_tl8405984074_ (##cdr _e8405784069_)))
                      (let* ((_condition84077_ _hd8405884072_)
                             (_body84079_ _tl8405984074_))
                        (if '#t
                            (if (gx#stx-eq? _condition84077_ 'else)
                                (if (gx#stx-null? _rest84053_)
                                    _body84079_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx83989_
                                     _hd84051_))
                                (if (_satisfied?83991_ _condition84077_)
                                    _body84079_
                                    (_loop83992_ _rest84053_)))
                            (_E8405684065_)))))
                  (_E8405684065_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8405584081_))
                                            (_E8402584039_)))))
                                  (_E8402584039_)))))
                      (_E8402484085_)))))
          (let* ((_e8399384000_ _stx83989_)
                 (_E8399584004_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8399384000_)))
                 (_E8399484018_
                  (lambda ()
                    (if (gx#stx-pair? _e8399384000_)
                        (let ((_e8399684008_ (gx#syntax-e _e8399384000_)))
                          (let ((_hd8399784011_ (##car _e8399684008_))
                                (_tl8399884013_ (##cdr _e8399684008_)))
                            (let ((_clauses84016_ _tl8399884013_))
                              (if (gx#stx-list? _clauses84016_)
                                  (gx#core-cons
                                   'begin
                                   (_loop83992_ _clauses84016_))
                                  (_E8399584004_)))))
                        (_E8399584004_)))))
            (_E8399484018_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx83932_ _rpath83933_)
        (let* ((_e8393483944_ _stx83932_)
               (_E8393683948_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8393483944_)))
               (_E8393583975_
                (lambda ()
                  (if (gx#stx-pair? _e8393483944_)
                      (let ((_e8393783952_ (gx#syntax-e _e8393483944_)))
                        (let ((_hd8393883955_ (##car _e8393783952_))
                              (_tl8393983957_ (##cdr _e8393783952_)))
                          (if (gx#stx-pair? _tl8393983957_)
                              (let ((_e8394083960_
                                     (gx#syntax-e _tl8393983957_)))
                                (let ((_hd8394183963_ (##car _e8394083960_))
                                      (_tl8394283965_ (##cdr _e8394083960_)))
                                  (let ((_path83968_ _hd8394183963_))
                                    (if (gx#stx-null? _tl8394283965_)
                                        (if (gx#stx-string? _path83968_)
                                            (let ((_rpath83973_
                                                   (let ((_$e83970_
                                                          _rpath83933_))
                                                     (if _$e83970_
                                                         _$e83970_
                                                         (gx#core-resolve-path__%
                                                          _path83968_
                                                          (gx#stx-source
                                                           _stx83932_))))))
                                              (if (member _rpath83973_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx83932_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath83973_))
                                                    (gx#stx-source
                                                     _stx83932_)))))
                                            (_E8393683948_))
                                        (_E8393683948_)))))
                              (_E8393683948_))))
                      (_E8393683948_)))))
          (_E8393583975_))))
    (define gx#core-expand-include%__0
      (lambda (_stx83982_)
        (let ((_rpath83984_ '#f))
          (gx#core-expand-include%__% _stx83982_ _rpath83984_))))
    (define gx#core-expand-include%
      (lambda _g85057_
        (let ((_g85056_ (##length _g85057_)))
          (cond ((##fx= _g85056_ 1)
                 (apply (lambda (_stx83982_)
                          (gx#core-expand-include%__0 _stx83982_))
                        _g85057_))
                ((##fx= _g85056_ 2)
                 (apply (lambda (_stx83986_ _rpath83987_)
                          (gx#core-expand-include%__% _stx83986_ _rpath83987_))
                        _g85057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g85057_))))))
    (define gx#core-apply-expander__%
      (lambda (_K83901_ _stx83902_ _method83903_)
        (if (procedure? _K83901_)
            (let ((_$e83905_ (gx#stx-source _stx83902_)))
              (if _$e83905_
                  ((lambda (_g8390783909_)
                     (gx#stx-wrap-source (_K83901_ _stx83902_) _g8390783909_))
                   _$e83905_)
                  (_K83901_ _stx83902_)))
            (let ((_$e83912_ (bound-method-ref _K83901_ _method83903_)))
              (if _$e83912_
                  ((lambda (_g8391483916_)
                     (gx#core-apply-expander__%
                      _g8391483916_
                      _stx83902_
                      _method83903_))
                   _$e83912_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx83902_
                   _method83903_))))))
    (define gx#core-apply-expander__0
      (lambda (_K83922_ _stx83923_)
        (let ((_method83925_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K83922_ _stx83923_ _method83925_))))
    (define gx#core-apply-expander
      (lambda _g85059_
        (let ((_g85058_ (##length _g85059_)))
          (cond ((##fx= _g85058_ 2)
                 (apply (lambda (_K83922_ _stx83923_)
                          (gx#core-apply-expander__0 _K83922_ _stx83923_))
                        _g85059_))
                ((##fx= _g85058_ 3)
                 (apply (lambda (_K83927_ _stx83928_ _method83929_)
                          (gx#core-apply-expander__%
                           _K83927_
                           _stx83928_
                           _method83929_))
                        _g85059_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g85059_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self83897_ _stx83898_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx83898_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self83750_ _stx83751_)
        (let* ((_self8375283758_ _self83750_)
               (_E8375483762_
                (lambda () (error '"No clause matching" _self8375283758_)))
               (_K8375583767_
                (lambda (_K83765_)
                  (gx#core-apply-expander__0 _K83765_ _stx83751_))))
          (if (##structure-instance-of? _self8375283758_ 'gx#core-macro::t)
              (let* ((_e8375683770_
                      (##unchecked-structure-ref
                       _self8375283758_
                       '1
                       gx#expander::t
                       '#f))
                     (_K83773_ _e8375683770_))
                (_K8375583767_ _K83773_))
              (_E8375483762_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self83603_ _stx83604_)
        (if (gx#sealed-syntax? _stx83604_)
            _stx83604_
            (let* ((_self8360583611_ _self83603_)
                   (_E8360783615_
                    (lambda () (error '"No clause matching" _self8360583611_)))
                   (_K8360883620_
                    (lambda (_K83618_)
                      (gx#core-apply-expander__0 _K83618_ _stx83604_))))
              (if (##structure-instance-of?
                   _self8360583611_
                   'gx#core-expander::t)
                  (let* ((_e8360983623_
                          (##unchecked-structure-ref
                           _self8360583611_
                           '1
                           gx#expander::t
                           '#f))
                         (_K83626_ _e8360983623_))
                    (_K8360883620_ _K83626_))
                  (_E8360783615_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self83465_ _stx83466_ _top?83467_)
        (if (_top?83467_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self83465_ _stx83466_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx83466_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self83472_ _stx83473_)
        (let ((_top?83475_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self83472_
           _stx83473_
           _top?83475_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g85061_
        (let ((_g85060_ (##length _g85061_)))
          (cond ((##fx= _g85060_ 2)
                 (apply (lambda (_self83472_ _stx83473_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self83472_
                           _stx83473_))
                        _g85061_))
                ((##fx= _g85060_ 3)
                 (apply (lambda (_self83477_ _stx83478_ _top?83479_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self83477_
                           _stx83478_
                           _top?83479_))
                        _g85061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g85061_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self83339_ _stx83340_)
        (gx#top-special-form::apply-macro-expander__%
         _self83339_
         _stx83340_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self83164_ _stx83165_)
        (let* ((_self8316683172_ _self83164_)
               (_E8316883176_
                (lambda () (error '"No clause matching" _self8316683172_)))
               (_K8316983209_
                (lambda (_id83179_)
                  (let* ((_e8318083187_ _stx83165_)
                         (_E8318283191_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8318083187_)))
                         (_E8318183205_
                          (lambda ()
                            (if (gx#stx-pair? _e8318083187_)
                                (let ((_e8318383195_
                                       (gx#syntax-e _e8318083187_)))
                                  (let ((_hd8318483198_ (##car _e8318383195_))
                                        (_tl8318583200_ (##cdr _e8318383195_)))
                                    (let ((_body83203_ _tl8318583200_))
                                      (if '#t
                                          (gx#core-cons _id83179_ _body83203_)
                                          (_E8318283191_)))))
                                (_E8318283191_)))))
                    (_E8318183205_)))))
          (if (##structure-instance-of?
               _self8316683172_
               'gx#rename-macro-expander::t)
              (let* ((_e8317083212_
                      (##unchecked-structure-ref
                       _self8316683172_
                       '1
                       gx#expander::t
                       '#f))
                     (_id83215_ _e8317083212_))
                (_K8316983209_ _id83215_))
              (_E8316883176_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self82990_ _stx82991_ _method82992_)
        (let* ((_self8299383001_ _self82990_)
               (_E8299583005_
                (lambda () (error '"No clause matching" _self8299383001_)))
               (_K8299683012_
                (lambda (_phi83008_ _ctx83009_ _K83010_)
                  (gx#core-apply-user-macro
                   _K83010_
                   _stx82991_
                   _ctx83009_
                   _phi83008_
                   _method82992_))))
          (if (##structure-instance-of? _self8299383001_ 'gx#macro-expander::t)
              (let* ((_e8299783015_
                      (##unchecked-structure-ref
                       _self8299383001_
                       '1
                       gx#expander::t
                       '#f))
                     (_K83018_ _e8299783015_)
                     (_e8299883020_
                      (##unchecked-structure-ref
                       _self8299383001_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx83023_ _e8299883020_)
                     (_e8299983025_
                      (##unchecked-structure-ref
                       _self8299383001_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi83028_ _e8299983025_))
                (_K8299683012_ _phi83028_ _ctx83023_ _K83018_))
              (_E8299583005_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self83033_ _stx83034_)
        (let ((_method83036_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self83033_
           _stx83034_
           _method83036_))))
    (define gx#core-apply-user-expander
      (lambda _g85063_
        (let ((_g85062_ (##length _g85063_)))
          (cond ((##fx= _g85062_ 2)
                 (apply (lambda (_self83033_ _stx83034_)
                          (gx#core-apply-user-expander__0
                           _self83033_
                           _stx83034_))
                        _g85063_))
                ((##fx= _g85062_ 3)
                 (apply (lambda (_self83038_ _stx83039_ _method83040_)
                          (gx#core-apply-user-expander__%
                           _self83038_
                           _stx83039_
                           _method83040_))
                        _g85063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g85063_))))))
    (define gx#core-apply-user-macro
      (lambda (_K82980_ _stx82981_ _ctx82982_ _phi82983_ _method82984_)
        (let ((_mark82986_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx82982_
                _phi82983_
                _stx82981_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K82980_
               (gx#stx-apply-mark _stx82981_ _mark82986_)
               _method82984_)
              _mark82986_))
           gx#current-expander-marks
           (cons _mark82986_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx82832_ _phi82833_ _ctx82834_)
        (let _lp82836_ ((_bind82838_
                         (gx#core-resolve-identifier__%
                          _stx82832_
                          _phi82833_
                          _ctx82834_)))
          (if (##structure-direct-instance-of?
               _bind82838_
               'gx#import-binding::t)
              (_lp82836_
               (##unchecked-structure-ref
                _bind82838_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind82838_
                   'gx#alias-binding::t)
                  (_lp82836_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind82838_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi82833_
                    _ctx82834_))
                  _bind82838_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx82843_)
        (let* ((_phi82845_ (gx#current-expander-phi))
               (_ctx82847_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx82843_ _phi82845_ _ctx82847_))))
    (define gx#resolve-identifier__1
      (lambda (_stx82849_ _phi82850_)
        (let ((_ctx82852_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx82849_ _phi82850_ _ctx82852_))))
    (define gx#resolve-identifier
      (lambda _g85065_
        (let ((_g85064_ (##length _g85065_)))
          (cond ((##fx= _g85064_ 1)
                 (apply (lambda (_stx82843_)
                          (gx#resolve-identifier__0 _stx82843_))
                        _g85065_))
                ((##fx= _g85064_ 2)
                 (apply (lambda (_stx82849_ _phi82850_)
                          (gx#resolve-identifier__1 _stx82849_ _phi82850_))
                        _g85065_))
                ((##fx= _g85064_ 3)
                 (apply (lambda (_stx82854_ _phi82855_ _ctx82856_)
                          (gx#resolve-identifier__%
                           _stx82854_
                           _phi82855_
                           _ctx82856_))
                        _g85065_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g85065_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx82790_ _val82791_ _rebind?82792_ _phi82793_ _ctx82794_)
        (let ((_rebind?82796_
               (if (not _rebind?82792_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?82792_) _rebind?82792_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx82790_)
           _val82791_
           _rebind?82796_
           _phi82793_
           _ctx82794_))))
    (define gx#bind-identifier!__0
      (lambda (_stx82801_ _val82802_)
        (let* ((_rebind?82804_ '#f)
               (_phi82806_ (gx#current-expander-phi))
               (_ctx82808_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82801_
           _val82802_
           _rebind?82804_
           _phi82806_
           _ctx82808_))))
    (define gx#bind-identifier!__1
      (lambda (_stx82810_ _val82811_ _rebind?82812_)
        (let* ((_phi82814_ (gx#current-expander-phi))
               (_ctx82816_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82810_
           _val82811_
           _rebind?82812_
           _phi82814_
           _ctx82816_))))
    (define gx#bind-identifier!__2
      (lambda (_stx82818_ _val82819_ _rebind?82820_ _phi82821_)
        (let ((_ctx82823_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx82818_
           _val82819_
           _rebind?82820_
           _phi82821_
           _ctx82823_))))
    (define gx#bind-identifier!
      (lambda _g85067_
        (let ((_g85066_ (##length _g85067_)))
          (cond ((##fx= _g85066_ 2)
                 (apply (lambda (_stx82801_ _val82802_)
                          (gx#bind-identifier!__0 _stx82801_ _val82802_))
                        _g85067_))
                ((##fx= _g85066_ 3)
                 (apply (lambda (_stx82810_ _val82811_ _rebind?82812_)
                          (gx#bind-identifier!__1
                           _stx82810_
                           _val82811_
                           _rebind?82812_))
                        _g85067_))
                ((##fx= _g85066_ 4)
                 (apply (lambda (_stx82818_
                                 _val82819_
                                 _rebind?82820_
                                 _phi82821_)
                          (gx#bind-identifier!__2
                           _stx82818_
                           _val82819_
                           _rebind?82820_
                           _phi82821_))
                        _g85067_))
                ((##fx= _g85066_ 5)
                 (apply (lambda (_stx82825_
                                 _val82826_
                                 _rebind?82827_
                                 _phi82828_
                                 _ctx82829_)
                          (gx#bind-identifier!__%
                           _stx82825_
                           _val82826_
                           _rebind?82827_
                           _phi82828_
                           _ctx82829_))
                        _g85067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g85067_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx82762_ _phi82763_ _ctx82764_)
        (let _lp82766_ ((_e82768_ _stx82762_)
                        (_marks82769_ (gx#current-expander-marks)))
          (if (symbol? _e82768_)
              (gx#core-resolve-binding
               _e82768_
               _phi82763_
               _phi82763_
               _ctx82764_
               (reverse _marks82769_))
              (if (gx#identifier-quote? _e82768_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e82768_ '1 gx#AST::t '#f)
                   _phi82763_
                   '0
                   (##unchecked-structure-ref
                    _e82768_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e82768_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e82768_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e82768_ '1 gx#AST::t '#f)
                       _phi82763_
                       _phi82763_
                       _ctx82764_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e82768_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks82769_))
                      (if (##structure-direct-instance-of?
                           _e82768_
                           'gx#syntax-wrap::t)
                          (_lp82766_
                           (##unchecked-structure-ref
                            _e82768_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e82768_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks82769_))
                          (if (##structure-instance-of?
                               _e82768_
                               'gerbil#AST::t)
                              (_lp82766_
                               (##unchecked-structure-ref
                                _e82768_
                                '1
                                gx#AST::t
                                '#f)
                               _marks82769_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx82762_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx82774_)
        (let* ((_phi82776_ (gx#current-expander-phi))
               (_ctx82778_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx82774_ _phi82776_ _ctx82778_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx82780_ _phi82781_)
        (let ((_ctx82783_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx82780_ _phi82781_ _ctx82783_))))
    (define gx#core-resolve-identifier
      (lambda _g85069_
        (let ((_g85068_ (##length _g85069_)))
          (cond ((##fx= _g85068_ 1)
                 (apply (lambda (_stx82774_)
                          (gx#core-resolve-identifier__0 _stx82774_))
                        _g85069_))
                ((##fx= _g85068_ 2)
                 (apply (lambda (_stx82780_ _phi82781_)
                          (gx#core-resolve-identifier__1
                           _stx82780_
                           _phi82781_))
                        _g85069_))
                ((##fx= _g85068_ 3)
                 (apply (lambda (_stx82785_ _phi82786_ _ctx82787_)
                          (gx#core-resolve-identifier__%
                           _stx82785_
                           _phi82786_
                           _ctx82787_))
                        _g85069_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g85069_))))))
    (define gx#core-resolve-binding
      (lambda (_id82675_ _phi82676_ _src-phi82677_ _ctx82678_ _marks82679_)
        (letrec ((_resolve82681_
                  (lambda (_ctx82749_ _src-phi82750_ _key82751_)
                    (let _lp82753_ ((_ctx82755_
                                     (gx#core-context-shift
                                      _ctx82749_
                                      _phi82676_))
                                    (_dphi82756_
                                     (fx- _phi82676_ _src-phi82750_)))
                      (let ((_$e82758_
                             (gx#core-context-resolve _ctx82755_ _key82751_)))
                        (if _$e82758_
                            (values _$e82758_)
                            (if (fxzero? _dphi82756_)
                                '#f
                                (if (fxpositive? _dphi82756_)
                                    (_lp82753_
                                     (gx#core-context-shift _ctx82755_ '-1)
                                     (fx- _dphi82756_ '1))
                                    (_lp82753_
                                     (gx#core-context-shift _ctx82755_ '1)
                                     (fx+ _dphi82756_ '1))))))))))
          (let _lp82683_ ((_ctx82685_ _ctx82678_)
                          (_src-phi82686_ _src-phi82677_)
                          (_rest82687_ _marks82679_))
            (let* ((_rest8268882696_ _rest82687_)
                   (_else8269082704_
                    (lambda ()
                      (_resolve82681_ _ctx82685_ _src-phi82686_ _id82675_)))
                   (_K8269282737_
                    (lambda (_rest82707_ _hd82708_)
                      (let* ((_hd8270982715_ _hd82708_)
                             (_E8271182719_
                              (lambda ()
                                (error '"No clause matching" _hd8270982715_)))
                             (_K8271282729_
                              (lambda (_subst82722_)
                                (let ((_$e82726_
                                       (let ((_key82724_
                                              (if _subst82722_
                                                  (hash-get
                                                   _subst82722_
                                                   _id82675_)
                                                  '#f)))
                                         (if _key82724_
                                             (_resolve82681_
                                              _ctx82685_
                                              _src-phi82686_
                                              _key82724_)
                                             '#f))))
                                  (if _$e82726_
                                      _$e82726_
                                      (_lp82683_
                                       (##unchecked-structure-ref
                                        _hd82708_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd82708_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest82707_))))))
                        (if (##structure-instance-of?
                             _hd8270982715_
                             'gx#expander-mark::t)
                            (let* ((_e8271382732_
                                    (##unchecked-structure-ref
                                     _hd8270982715_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst82735_ _e8271382732_))
                              (_K8271282729_ _subst82735_))
                            (_E8271182719_))))))
              (if (##pair? _rest8268882696_)
                  (let ((_hd8269382740_ (##car _rest8268882696_))
                        (_tl8269482742_ (##cdr _rest8268882696_)))
                    (let* ((_hd82745_ _hd8269382740_)
                           (_rest82747_ _tl8269482742_))
                      (_K8269282737_ _rest82747_ _hd82745_)))
                  (_else8269082704_)))))))
    (define gx#core-bind!__%
      (lambda (_key82551_ _val82552_ _rebind?82553_ _phi82554_ _ctx82555_)
        (letrec ((_update-binding82557_
                  (lambda (_xval82628_)
                    (if (or (_rebind?82553_ _ctx82555_ _xval82628_ _val82552_)
                            (and (##structure-direct-instance-of?
                                  _xval82628_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval82628_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val82552_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val82552_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval82628_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val82552_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val82552_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval82628_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val82552_
                        (if (and (##structure-direct-instance-of?
                                  _val82552_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val82552_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval82628_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val82552_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval82628_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval82628_
                            (if (and (##structure-direct-instance-of?
                                      _val82552_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval82628_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key82551_
                                 (cons (##unchecked-structure-ref
                                        _val82552_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val82552_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval82628_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval82628_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval82628_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval82628_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key82551_
                                 _val82552_
                                 _xval82628_))))))
                 (_gensubst82558_
                  (lambda (_subst82623_ _id82624_)
                    (let ((_eid82626_
                           (gensym (if (uninterned-symbol? _id82624_)
                                       '%
                                       _id82624_))))
                      (hash-put! _subst82623_ _id82624_ _eid82626_)
                      _eid82626_)))
                 (_subst!82559_
                  (lambda (_key82561_)
                    (let* ((_key8256282570_ _key82561_)
                           (_else8256482578_ (lambda () _key82561_))
                           (_K8256682611_
                            (lambda (_mark82581_ _id82582_)
                              (let* ((_mark8258382589_ _mark82581_)
                                     (_E8258582593_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8258382589_)))
                                     (_K8258682603_
                                      (lambda (_subst82596_)
                                        (if (not _subst82596_)
                                            (let ((_subst82598_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark82581_
                                               _subst82598_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst82558_
                                               _subst82598_
                                               _id82582_))
                                            (let ((_$e82600_
                                                   (hash-get
                                                    _subst82596_
                                                    _id82582_)))
                                              (if _$e82600_
                                                  (values _$e82600_)
                                                  (_gensubst82558_
                                                   _subst82596_
                                                   _id82582_)))))))
                                (if (##structure-instance-of?
                                     _mark8258382589_
                                     'gx#expander-mark::t)
                                    (let* ((_e8258782606_
                                            (##unchecked-structure-ref
                                             _mark8258382589_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst82609_ _e8258782606_))
                                      (_K8258682603_ _subst82609_))
                                    (_E8258582593_))))))
                      (if (##pair? _key8256282570_)
                          (let ((_hd8256782614_ (##car _key8256282570_))
                                (_tl8256882616_ (##cdr _key8256282570_)))
                            (let* ((_id82619_ _hd8256782614_)
                                   (_mark82621_ _tl8256882616_))
                              (_K8256682611_ _mark82621_ _id82619_)))
                          (_else8256482578_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx82555_ _phi82554_)
           (_subst!82559_ _key82551_)
           _val82552_
           _update-binding82557_))))
    (define gx#core-bind!__0
      (lambda (_key82645_ _val82646_)
        (let* ((_rebind?82648_ false)
               (_phi82650_ (gx#current-expander-phi))
               (_ctx82652_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key82645_
           _val82646_
           _rebind?82648_
           _phi82650_
           _ctx82652_))))
    (define gx#core-bind!__1
      (lambda (_key82654_ _val82655_ _rebind?82656_)
        (let* ((_phi82658_ (gx#current-expander-phi))
               (_ctx82660_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key82654_
           _val82655_
           _rebind?82656_
           _phi82658_
           _ctx82660_))))
    (define gx#core-bind!__2
      (lambda (_key82662_ _val82663_ _rebind?82664_ _phi82665_)
        (let ((_ctx82667_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key82662_
           _val82663_
           _rebind?82664_
           _phi82665_
           _ctx82667_))))
    (define gx#core-bind!
      (lambda _g85071_
        (let ((_g85070_ (##length _g85071_)))
          (cond ((##fx= _g85070_ 2)
                 (apply (lambda (_key82645_ _val82646_)
                          (gx#core-bind!__0 _key82645_ _val82646_))
                        _g85071_))
                ((##fx= _g85070_ 3)
                 (apply (lambda (_key82654_ _val82655_ _rebind?82656_)
                          (gx#core-bind!__1
                           _key82654_
                           _val82655_
                           _rebind?82656_))
                        _g85071_))
                ((##fx= _g85070_ 4)
                 (apply (lambda (_key82662_
                                 _val82663_
                                 _rebind?82664_
                                 _phi82665_)
                          (gx#core-bind!__2
                           _key82662_
                           _val82663_
                           _rebind?82664_
                           _phi82665_))
                        _g85071_))
                ((##fx= _g85070_ 5)
                 (apply (lambda (_key82669_
                                 _val82670_
                                 _rebind?82671_
                                 _phi82672_
                                 _ctx82673_)
                          (gx#core-bind!__%
                           _key82669_
                           _val82670_
                           _rebind?82671_
                           _phi82672_
                           _ctx82673_))
                        _g85071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g85071_))))))
    (define gx#core-identifier-key
      (lambda (_stx82485_)
        (if (symbol? _stx82485_)
            (let* ((_g8248682494_ (gx#current-expander-marks))
                   (_else8248882502_ (lambda () _stx82485_))
                   (_K8249082507_
                    (lambda (_hd82505_) (cons _stx82485_ _hd82505_))))
              (if (##pair? _g8248682494_)
                  (let* ((_hd8249182510_ (##car _g8248682494_))
                         (_hd82513_ _hd8249182510_))
                    (_K8249082507_ _hd82513_))
                  (_else8248882502_)))
            (if (gx#identifier? _stx82485_)
                (let* ((_id82515_ (gx#syntax-local-unwrap _stx82485_))
                       (_eid82517_ (gx#stx-e _id82515_))
                       (_marks82519_ (gx#stx-identifier-marks* _id82515_)))
                  (let* ((_marks8252182529_ _marks82519_)
                         (_else8252382537_ (lambda () _eid82517_))
                         (_K8252582542_
                          (lambda (_hd82540_) (cons _eid82517_ _hd82540_))))
                    (if (##pair? _marks8252182529_)
                        (let* ((_hd8252682545_ (##car _marks8252182529_))
                               (_hd82548_ _hd8252682545_))
                          (_K8252582542_ _hd82548_))
                        (_else8252382537_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx82485_)))))
    (define gx#core-context-shift
      (lambda (_ctx82430_ _phi82431_)
        (letrec ((_make-phi82433_
                  (lambda (_super82483_)
                    (let ((__obj85042
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj85042
                       (gensym 'phi)
                       _super82483_)
                      __obj85042)))
                 (_make-phi/up82434_
                  (lambda (_ctx82478_ _super82479_)
                    (let ((_ctx+182481_ (_make-phi82433_ _super82479_)))
                      (##unchecked-structure-set!
                       _ctx82478_
                       _ctx+182481_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+182481_
                       _ctx82478_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+182481_)))
                 (_make-phi/down82435_
                  (lambda (_ctx82473_ _super82474_)
                    (let ((_ctx-182476_ (_make-phi82433_ _super82474_)))
                      (##unchecked-structure-set!
                       _ctx-182476_
                       _ctx82473_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx82473_
                       _ctx-182476_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-182476_)))
                 (_shift82436_
                  (lambda (_ctx82457_
                           _delta82458_
                           _make-delta-context82459_
                           _phi82460_
                           _K82461_)
                    (let ((_$e82463_
                           (##unchecked-structure-ref
                            _ctx82457_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e82463_
                          ((lambda (_super82466_)
                             (let* ((_super82468_
                                     (_K82461_ _super82466_ _delta82458_))
                                    (_ctx+d82470_
                                     (_make-delta-context82459_
                                      _ctx82457_
                                      _super82468_)))
                               (_K82461_
                                _ctx+d82470_
                                (fx- _phi82460_ _delta82458_))))
                           _$e82463_)
                          (error '"Bad context" _ctx82457_))))))
          (let _K82438_ ((_ctx82440_ _ctx82430_) (_phi82441_ _phi82431_))
            (if (fxzero? _phi82441_)
                _ctx82440_
                (if (fx> (##vector-length _ctx82440_) '3)
                    (if (fxpositive? _phi82441_)
                        (let ((_$e82443_
                               (##unchecked-structure-ref
                                _ctx82440_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e82443_
                              ((lambda (_g8244582447_)
                                 (_K82438_ _g8244582447_ (fx- _phi82441_ '1)))
                               _$e82443_)
                              (_shift82436_
                               _ctx82440_
                               '1
                               _make-phi/up82434_
                               _phi82441_
                               _K82438_)))
                        (let ((_$e82450_
                               (##unchecked-structure-ref
                                _ctx82440_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e82450_
                              ((lambda (_g8245282454_)
                                 (_K82438_ _g8245282454_ (fx+ _phi82441_ '1)))
                               _$e82450_)
                              (_shift82436_
                               _ctx82440_
                               '-1
                               _make-phi/down82435_
                               _phi82441_
                               _K82438_))))
                    _ctx82440_))))))
    (define gx#core-context-get
      (lambda (_ctx82427_ _key82428_)
        (hash-get
         (##unchecked-structure-ref _ctx82427_ '2 gx#expander-context::t '#f)
         _key82428_)))
    (define gx#core-context-put!
      (lambda (_ctx82423_ _key82424_ _val82425_)
        (hash-put!
         (##unchecked-structure-ref _ctx82423_ '2 gx#expander-context::t '#f)
         _key82424_
         _val82425_)))
    (define gx#core-context-resolve
      (lambda (_ctx82410_ _key82411_)
        (let _lp82413_ ((_ctx82415_ _ctx82410_))
          (let ((_$e82417_ (gx#core-context-get _ctx82415_ _key82411_)))
            (if _$e82417_
                (values _$e82417_)
                (let ((_$e82420_
                       (if (fx> (##vector-length _ctx82415_) '3)
                           (##unchecked-structure-ref
                            _ctx82415_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e82420_ (_lp82413_ _$e82420_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx82400_ _key82401_ _val82402_ _rebind82403_)
        (let ((_$e82405_ (gx#core-context-get _ctx82400_ _key82401_)))
          (if _$e82405_
              ((lambda (_xval82408_)
                 (gx#core-context-put!
                  _ctx82400_
                  _key82401_
                  (_rebind82403_ _xval82408_)))
               _$e82405_)
              (gx#core-context-put! _ctx82400_ _key82401_ _val82402_)))))
    (define gx#core-context-top__%
      (lambda (_ctx82378_ _stop?82379_)
        (let _lp82381_ ((_ctx82383_ _ctx82378_))
          (if (_stop?82379_ _ctx82383_)
              _ctx82383_
              (if (##structure-instance-of? _ctx82383_ 'gx#context-phi::t)
                  (_lp82381_
                   (##unchecked-structure-ref
                    _ctx82383_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx82389_ (gx#current-expander-context))
               (_stop?82391_ gx#top-context?))
          (gx#core-context-top__% _ctx82389_ _stop?82391_))))
    (define gx#core-context-top__1
      (lambda (_ctx82393_)
        (let ((_stop?82395_ gx#top-context?))
          (gx#core-context-top__% _ctx82393_ _stop?82395_))))
    (define gx#core-context-top
      (lambda _g85073_
        (let ((_g85072_ (##length _g85073_)))
          (cond ((##fx= _g85072_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g85073_))
                ((##fx= _g85072_ 1)
                 (apply (lambda (_ctx82393_)
                          (gx#core-context-top__1 _ctx82393_))
                        _g85073_))
                ((##fx= _g85072_ 2)
                 (apply (lambda (_ctx82397_ _stop?82398_)
                          (gx#core-context-top__% _ctx82397_ _stop?82398_))
                        _g85073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g85073_))))))
    (define gx#core-context-root__%
      (lambda (_ctx82363_)
        (let _lp82365_ ((_ctx82367_ _ctx82363_))
          (if (##structure-instance-of? _ctx82367_ 'gx#context-phi::t)
              (_lp82365_
               (##unchecked-structure-ref _ctx82367_ '3 gx#phi-context::t '#f))
              _ctx82367_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx82373_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx82373_))))
    (define gx#core-context-root
      (lambda _g85075_
        (let ((_g85074_ (##length _g85075_)))
          (cond ((##fx= _g85074_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g85075_))
                ((##fx= _g85074_ 1)
                 (apply (lambda (_ctx82375_)
                          (gx#core-context-root__% _ctx82375_))
                        _g85075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g85075_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx82344_ . __8234182345_)
        (let ((_$e82348_ (gx#current-expander-allow-rebind?)))
          (if _$e82348_
              _$e82348_
              (if (##structure-instance-of? _ctx82344_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx82344_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx82344_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx82355_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx82355_))))
    (define gx#core-context-rebind?
      (lambda _g85077_
        (let ((_g85076_ (##length _g85077_)))
          (cond ((##fx= _g85076_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g85077_))
                ((##fx= _g85076_ 1)
                 (apply (lambda (_ctx82357_)
                          (gx#core-context-rebind?__% _ctx82357_))
                        _g85077_))
                ((##fx>= _g85076_ 1)
                 (apply gx#core-context-rebind?__% _g85077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g85077_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx82327_)
        (let ((_$e82329_ (gx#core-context-top__1 _ctx82327_)))
          (if _$e82329_
              ((lambda (_ctx82332_)
                 (if (##structure-instance-of?
                      _ctx82332_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx82332_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e82329_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx82338_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx82338_))))
    (define gx#core-context-namespace
      (lambda _g85079_
        (let ((_g85078_ (##length _g85079_)))
          (cond ((##fx= _g85078_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g85079_))
                ((##fx= _g85078_ 1)
                 (apply (lambda (_ctx82340_)
                          (gx#core-context-namespace__% _ctx82340_))
                        _g85079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g85079_))))))
    (define gx#expander-binding?__%
      (lambda (_bind82313_ _is?82314_)
        (if (##structure-direct-instance-of? _bind82313_ 'gx#syntax-binding::t)
            (_is?82314_
             (##unchecked-structure-ref
              _bind82313_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind82319_)
        (let ((_is?82321_ gx#expander?))
          (gx#expander-binding?__% _bind82319_ _is?82321_))))
    (define gx#expander-binding?
      (lambda _g85081_
        (let ((_g85080_ (##length _g85081_)))
          (cond ((##fx= _g85080_ 1)
                 (apply (lambda (_bind82319_)
                          (gx#expander-binding?__0 _bind82319_))
                        _g85081_))
                ((##fx= _g85080_ 2)
                 (apply (lambda (_bind82323_ _is?82324_)
                          (gx#expander-binding?__% _bind82323_ _is?82324_))
                        _g85081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g85081_))))))
    (define gx#core-expander-binding?
      (lambda (_bind82310_)
        (gx#expander-binding?__% _bind82310_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind82308_)
        (gx#expander-binding?__% _bind82308_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind82302_)
        (letrec ((_direct-special-form?82304_
                  (lambda (_obj82306_)
                    (##structure-direct-instance-of?
                     _obj82306_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind82302_ _direct-special-form?82304_))))
    (define gx#special-form-binding?
      (lambda (_bind82300_)
        (gx#expander-binding?__% _bind82300_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind82291_)
        (letrec ((_feature?82293_
                  (lambda (_e82295_)
                    (let ((_$e82297_
                           (##structure-instance-of?
                            _e82295_
                            'gx#feature-expander::t)))
                      (if _$e82297_
                          _$e82297_
                          (##structure-instance-of?
                           _e82295_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind82291_ _feature?82293_))))
    (define gx#private-feature-binding?
      (lambda (_bind82289_)
        (gx#expander-binding?__% _bind82289_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id82276_ _bound?82277_)
        (if (gx#identifier? _id82276_)
            (_bound?82277_ (gx#resolve-identifier__0 _id82276_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id82282_)
        (let ((_bound?82284_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id82282_ _bound?82284_))))
    (define gx#core-bound-identifier?
      (lambda _g85083_
        (let ((_g85082_ (##length _g85083_)))
          (cond ((##fx= _g85082_ 1)
                 (apply (lambda (_id82282_)
                          (gx#core-bound-identifier?__0 _id82282_))
                        _g85083_))
                ((##fx= _g85082_ 2)
                 (apply (lambda (_id82286_ _bound?82287_)
                          (gx#core-bound-identifier?__%
                           _id82286_
                           _bound?82287_))
                        _g85083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g85083_))))))
    (define gx#core-identifier=?
      (lambda (_x82266_ _y82267_)
        (letrec ((_y=?82269_
                  (lambda (_xid82273_)
                    ((if (list? _y82267_) memq eq?) _xid82273_ _y82267_))))
          (let ((_bind82271_ (gx#resolve-identifier__0 _x82266_)))
            (if (##structure-instance-of? _bind82271_ 'gx#binding::t)
                (_y=?82269_
                 (##unchecked-structure-ref _bind82271_ '1 gx#binding::t '#f))
                (_y=?82269_ (gx#stx-e _x82266_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e82264_)
        (if (interned-symbol? _e82264_)
            (string-index__0 (symbol->string _e82264_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx82219_ _src82220_ _ctx82221_ _marks82222_)
        (if (##structure? _stx82219_)
            (let ((_$e82224_ (gx#sealed-syntax-unwrap _stx82219_)))
              (if _$e82224_
                  (values _$e82224_)
                  (if (gx#identifier? _stx82219_)
                      (let ((_id82227_
                             (gx#stx-unwrap__% _stx82219_ _marks82222_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id82227_ '1 gx#AST::t '#f)
                         (let ((_$e82229_
                                (##unchecked-structure-ref
                                 _id82227_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e82229_ _$e82229_ _src82220_))
                         _ctx82221_
                         (##unchecked-structure-ref
                          _id82227_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx82219_)
                       (let ((_$e82232_ (gx#stx-source _stx82219_)))
                         (if _$e82232_ _$e82232_ _src82220_))
                       _ctx82221_
                       (reverse _marks82222_)))))
            (##structure
             gx#syntax-quote::t
             _stx82219_
             _src82220_
             _ctx82221_
             (reverse _marks82222_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx82238_)
        (let* ((_src82240_ '#f)
               (_ctx82242_ (gx#current-expander-context))
               (_marks82244_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx82238_
           _src82240_
           _ctx82242_
           _marks82244_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx82246_ _src82247_)
        (let* ((_ctx82249_ (gx#current-expander-context))
               (_marks82251_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx82246_
           _src82247_
           _ctx82249_
           _marks82251_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx82253_ _src82254_ _ctx82255_)
        (let ((_marks82257_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx82253_
           _src82254_
           _ctx82255_
           _marks82257_))))
    (define gx#core-quote-syntax
      (lambda _g85085_
        (let ((_g85084_ (##length _g85085_)))
          (cond ((##fx= _g85084_ 1)
                 (apply (lambda (_stx82238_)
                          (gx#core-quote-syntax__0 _stx82238_))
                        _g85085_))
                ((##fx= _g85084_ 2)
                 (apply (lambda (_stx82246_ _src82247_)
                          (gx#core-quote-syntax__1 _stx82246_ _src82247_))
                        _g85085_))
                ((##fx= _g85084_ 3)
                 (apply (lambda (_stx82253_ _src82254_ _ctx82255_)
                          (gx#core-quote-syntax__2
                           _stx82253_
                           _src82254_
                           _ctx82255_))
                        _g85085_))
                ((##fx= _g85084_ 4)
                 (apply (lambda (_stx82259_ _src82260_ _ctx82261_ _marks82262_)
                          (gx#core-quote-syntax__%
                           _stx82259_
                           _src82260_
                           _ctx82261_
                           _marks82262_))
                        _g85085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g85085_))))))
    (define gx#core-cons
      (lambda (_hd82215_ _tl82216_)
        (cons (gx#core-quote-syntax__0 _hd82215_) _tl82216_)))
    (define gx#core-list
      (lambda (_hd82212_ . _rest82213_)
        (cons (gx#core-quote-syntax__0 _hd82212_) _rest82213_)))
    (define gx#core-cons*
      (lambda (_hd82209_ . _rest82210_)
        (apply cons* (gx#core-quote-syntax__0 _hd82209_) _rest82210_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path82183_ _rel82184_)
        (let ((_path82196_ (gx#stx-e _stx-path82183_))
              (_reldir82197_
               (let _lp82186_ ((_relsrc82188_
                                (let ((_$e82193_
                                       (gx#stx-source _stx-path82183_)))
                                  (if _$e82193_ _$e82193_ _rel82184_))))
                 (if (##structure-instance-of? _relsrc82188_ 'gerbil#AST::t)
                     (_lp82186_
                      (let ((_$e82190_ (gx#stx-source _relsrc82188_)))
                        (if _$e82190_ _$e82190_ (gx#stx-e _relsrc82188_))))
                     (if (source-location-path? _relsrc82188_)
                         (path-directory (source-location-path _relsrc82188_))
                         (if (string? _relsrc82188_)
                             (path-directory _relsrc82188_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path82196_ (path-normalize _reldir82197_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path82202_)
        (let ((_rel82204_ '#f))
          (gx#core-resolve-path__% _stx-path82202_ _rel82204_))))
    (define gx#core-resolve-path
      (lambda _g85087_
        (let ((_g85086_ (##length _g85087_)))
          (cond ((##fx= _g85086_ 1)
                 (apply (lambda (_stx-path82202_)
                          (gx#core-resolve-path__0 _stx-path82202_))
                        _g85087_))
                ((##fx= _g85086_ 2)
                 (apply (lambda (_stx-path82206_ _rel82207_)
                          (gx#core-resolve-path__% _stx-path82206_ _rel82207_))
                        _g85087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g85087_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr82139_ _ctx82140_)
        (let* ((_repr8214182148_ _repr82139_)
               (_E8214382152_
                (lambda () (error '"No clause matching" _repr8214182148_)))
               (_K8214482160_
                (lambda (_subs82155_ _phi82156_)
                  (let ((_subst82158_
                         (if (not (null? _subs82155_))
                             (list->hash-table-eq _subs82155_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst82158_
                     _ctx82140_
                     _phi82156_
                     '#f)))))
          (if (##pair? _repr8214182148_)
              (let ((_hd8214582163_ (##car _repr8214182148_))
                    (_tl8214682165_ (##cdr _repr8214182148_)))
                (let* ((_phi82168_ _hd8214582163_)
                       (_subs82170_ _tl8214682165_))
                  (_K8214482160_ _subs82170_ _phi82168_)))
              (_E8214382152_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr82175_)
        (let ((_ctx82177_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr82175_ _ctx82177_))))
    (define gx#core-deserialize-mark
      (lambda _g85089_
        (let ((_g85088_ (##length _g85089_)))
          (cond ((##fx= _g85088_ 1)
                 (apply (lambda (_repr82175_)
                          (gx#core-deserialize-mark__0 _repr82175_))
                        _g85089_))
                ((##fx= _g85088_ 2)
                 (apply (lambda (_repr82179_ _ctx82180_)
                          (gx#core-deserialize-mark__% _repr82179_ _ctx82180_))
                        _g85089_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g85089_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx82136_)
        (gx#stx-rewrap _stx82136_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx82134_)
        (gx#stx-unwrap__% _stx82134_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx82104_)
        (let* ((_g8210582113_ (gx#current-expander-marks))
               (_else8210782121_ (lambda () _stx82104_))
               (_K8210982126_
                (lambda (_hd82124_) (gx#stx-apply-mark _stx82104_ _hd82124_))))
          (if (##pair? _g8210582113_)
              (let* ((_hd8211082129_ (##car _g8210582113_))
                     (_hd82132_ _hd8211082129_))
                (_K8210982126_ _hd82132_))
              (_else8210782121_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx82089_ _E82090_)
        (let ((_bind82092_ (gx#resolve-identifier__0 _stx82089_)))
          (if (##structure-direct-instance-of?
               _bind82092_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind82092_
               '4
               gx#syntax-binding::t
               '#f)
              (_E82090_ _stx82089_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx82097_)
        (let ((_E82099_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx82097_ _E82099_))))
    (define gx#syntax-local-e
      (lambda _g85091_
        (let ((_g85090_ (##length _g85091_)))
          (cond ((##fx= _g85090_ 1)
                 (apply (lambda (_stx82097_) (gx#syntax-local-e__0 _stx82097_))
                        _g85091_))
                ((##fx= _g85090_ 2)
                 (apply (lambda (_stx82101_ _E82102_)
                          (gx#syntax-local-e__% _stx82101_ _E82102_))
                        _g85091_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g85091_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx82073_ _E82074_)
        (let ((_e82076_ (gx#syntax-local-e__% _stx82073_ _E82074_)))
          (if (##structure-instance-of? _e82076_ 'gx#expander::t)
              (##structure-ref _e82076_ '1 gx#expander::t '#f)
              _e82076_))))
    (define gx#syntax-local-value__0
      (lambda (_stx82081_)
        (let ((_E82083_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx82081_ _E82083_))))
    (define gx#syntax-local-value
      (lambda _g85093_
        (let ((_g85092_ (##length _g85093_)))
          (cond ((##fx= _g85092_ 1)
                 (apply (lambda (_stx82081_)
                          (gx#syntax-local-value__0 _stx82081_))
                        _g85093_))
                ((##fx= _g85092_ 2)
                 (apply (lambda (_stx82085_ _E82086_)
                          (gx#syntax-local-value__% _stx82085_ _E82086_))
                        _g85093_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g85093_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx82070_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx82070_)))))
