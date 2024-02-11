(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707651233)
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
      (lambda _$args143153_
        (apply make-class-instance gx#expander-context::t _$args143153_)))
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
      (lambda _$args143150_
        (apply make-class-instance gx#root-context::t _$args143150_)))
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
      (lambda _$args143147_
        (apply make-class-instance gx#phi-context::t _$args143147_)))
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
      (lambda _$args143144_
        (apply make-class-instance gx#top-context::t _$args143144_)))
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
      (lambda _$args143141_
        (apply make-class-instance gx#module-context::t _$args143141_)))
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
      (lambda _$args143138_
        (apply make-class-instance gx#prelude-context::t _$args143138_)))
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
      (lambda _$args143135_
        (apply make-class-instance gx#local-context::t _$args143135_)))
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
      (lambda (_self143119_ _id143120_ _super143121_)
        (if (##fx< '3 (##structure-length _self143119_))
            (begin
              (##unchecked-structure-set!
               _self143119_
               _id143120_
               '1
               (##structure-type _self143119_)
               '#f)
              (##unchecked-structure-set!
               _self143119_
               (make-table 'test: eq?)
               '2
               (##structure-type _self143119_)
               '#f)
              (##unchecked-structure-set!
               _self143119_
               _super143121_
               '3
               (##structure-type _self143119_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self143119_
                   '3
                   (##vector-length _self143119_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self143126_ _id143127_)
        (let ((_super143129_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self143126_ _id143127_ _super143129_))))
    (define gx#phi-context:::init!
      (lambda _g147673_
        (let ((_g147672_ (##length _g147673_)))
          (cond ((##fx= _g147672_ 2)
                 (apply (lambda (_self143126_ _id143127_)
                          (gx#phi-context:::init!__0 _self143126_ _id143127_))
                        _g147673_))
                ((##fx= _g147672_ 3)
                 (apply (lambda (_self143131_ _id143132_ _super143133_)
                          (gx#phi-context:::init!__%
                           _self143131_
                           _id143132_
                           _super143133_))
                        _g147673_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g147673_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self142983_ _super142984_)
        (if (##fx< '3 (##structure-length _self142983_))
            (begin
              (##unchecked-structure-set!
               _self142983_
               (gensym 'L)
               '1
               (##structure-type _self142983_)
               '#f)
              (##unchecked-structure-set!
               _self142983_
               (make-table 'test: eq?)
               '2
               (##structure-type _self142983_)
               '#f)
              (##unchecked-structure-set!
               _self142983_
               _super142984_
               '3
               (##structure-type _self142983_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self142983_
                   '3
                   (##vector-length _self142983_)))))
    (define gx#local-context:::init!__0
      (lambda (_self142989_)
        (let ((_super142991_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self142989_ _super142991_))))
    (define gx#local-context:::init!
      (lambda _g147675_
        (let ((_g147674_ (##length _g147675_)))
          (cond ((##fx= _g147674_ 1)
                 (apply (lambda (_self142989_)
                          (gx#local-context:::init!__0 _self142989_))
                        _g147675_))
                ((##fx= _g147674_ 2)
                 (apply (lambda (_self142993_ _super142994_)
                          (gx#local-context:::init!__%
                           _self142993_
                           _super142994_))
                        _g147675_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g147675_))))))
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
      (lambda _$args142857_
        (apply make-class-instance gx#binding::t _$args142857_)))
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
      (lambda _$args142854_
        (apply make-class-instance gx#runtime-binding::t _$args142854_)))
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
      (lambda _$args142851_
        (apply make-class-instance gx#local-binding::t _$args142851_)))
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
      (lambda _$args142848_
        (apply make-class-instance gx#top-binding::t _$args142848_)))
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
      (lambda _$args142845_
        (apply make-class-instance gx#module-binding::t _$args142845_)))
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
      (lambda _$args142842_
        (apply make-class-instance gx#extern-binding::t _$args142842_)))
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
      (lambda _$args142839_
        (apply make-class-instance gx#syntax-binding::t _$args142839_)))
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
      (lambda _$args142836_
        (apply make-class-instance gx#import-binding::t _$args142836_)))
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
      (lambda _$args142833_
        (apply make-class-instance gx#alias-binding::t _$args142833_)))
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
      (lambda _$args142830_
        (apply make-class-instance gx#expander::t _$args142830_)))
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
      (lambda _$args142827_
        (apply make-class-instance gx#core-expander::t _$args142827_)))
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
      (lambda _$args142824_
        (apply make-class-instance gx#expression-form::t _$args142824_)))
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
      (lambda _$args142821_
        (apply make-class-instance gx#special-form::t _$args142821_)))
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
      (lambda _$args142818_
        (apply make-class-instance gx#definition-form::t _$args142818_)))
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
      (lambda _$args142815_
        (apply make-class-instance gx#top-special-form::t _$args142815_)))
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
      (lambda _$args142812_
        (apply make-class-instance gx#module-special-form::t _$args142812_)))
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
      (lambda _$args142809_
        (apply make-class-instance gx#feature-expander::t _$args142809_)))
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
      (lambda _$args142806_
        (apply make-class-instance
               gx#private-feature-expander::t
               _$args142806_)))
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
      (lambda _$args142803_
        (apply make-class-instance gx#reserved-expander::t _$args142803_)))
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
      (lambda _$args142800_
        (apply make-class-instance gx#macro-expander::t _$args142800_)))
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
      (lambda _$args142797_
        (apply make-class-instance gx#rename-macro-expander::t _$args142797_)))
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
      (lambda _$args142794_
        (apply make-class-instance gx#user-expander::t _$args142794_)))
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
      (lambda _$args142791_
        (apply make-class-instance gx#expander-mark::t _$args142791_)))
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
      (lambda (_ctx142776_ _message142777_ _stx142778_ . _details142779_)
        (let ((_ctx142789_
               (let ((_$e142781_ _ctx142776_))
                 (if _$e142781_
                     _$e142781_
                     (let ((_$e142784_ (gx#core-context-top__0)))
                       (if _$e142784_
                           ((lambda (_ctx142787_)
                              (cons 'expand
                                    (cons (let ((__obj147662 _ctx142787_))
                                            (if (##structure-direct-instance-of?
                                                 __obj147662
                                                 'gx#expander-context::t)
                                                (##unchecked-structure-ref
                                                 __obj147662
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (class-slot-ref
                                                 gx#expander-context::t
                                                 __obj147662
                                                 'id)))
                                          '())))
                            _$e142784_)
                           '#f))))))
          (raise (make-syntax-error
                  _message142777_
                  (cons _stx142778_ _details142779_)
                  _ctx142789_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx142763_ _expression?142764_)
        (gx#eval-syntax* (gx#core-expand__% _stx142763_ _expression?142764_))))
    (define gx#eval-syntax__0
      (lambda (_stx142769_)
        (let ((_expression?142771_ '#f))
          (gx#eval-syntax__% _stx142769_ _expression?142771_))))
    (define gx#eval-syntax
      (lambda _g147677_
        (let ((_g147676_ (##length _g147677_)))
          (cond ((##fx= _g147676_ 1)
                 (apply (lambda (_stx142769_) (gx#eval-syntax__0 _stx142769_))
                        _g147677_))
                ((##fx= _g147676_ 2)
                 (apply (lambda (_stx142773_ _expression?142774_)
                          (gx#eval-syntax__% _stx142773_ _expression?142774_))
                        _g147677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g147677_))))))
    (define gx#eval-syntax*
      (lambda (_stx142760_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx142760_))))
    (define gx#core-expand__%
      (lambda (_stx142747_ _expression?142748_)
        (if _expression?142748_
            (gx#core-expand-expression _stx142747_)
            (gx#core-expand-top _stx142747_))))
    (define gx#core-expand__0
      (lambda (_stx142753_)
        (let ((_expression?142755_ '#f))
          (gx#core-expand__% _stx142753_ _expression?142755_))))
    (define gx#core-expand
      (lambda _g147679_
        (let ((_g147678_ (##length _g147679_)))
          (cond ((##fx= _g147678_ 1)
                 (apply (lambda (_stx142753_) (gx#core-expand__0 _stx142753_))
                        _g147679_))
                ((##fx= _g147678_ 2)
                 (apply (lambda (_stx142757_ _expression?142758_)
                          (gx#core-expand__% _stx142757_ _expression?142758_))
                        _g147679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g147679_))))))
    (define gx#core-expand-top
      (lambda (_stx142714_)
        (let* ((_stx142716_ (gx#core-expand*__0 _stx142714_))
               (_e142717142724_ _stx142716_)
               (_E142719142728_
                (lambda () (gx#core-expand-expression _stx142716_)))
               (_E142718142742_
                (lambda ()
                  (if (gx#stx-pair? _e142717142724_)
                      (let ((_e142720142732_ (gx#syntax-e _e142717142724_)))
                        (let ((_hd142721142735_ (##car _e142720142732_))
                              (_tl142722142737_ (##cdr _e142720142732_)))
                          (let ((_form142740_ _hd142721142735_))
                            (if (gx#core-bound-identifier?__0 _form142740_)
                                _stx142716_
                                (_E142719142728_)))))
                      (_E142719142728_)))))
          (_E142718142742_))))
    (define gx#core-expand-expression
      (lambda (_stx142661_)
        (letrec ((_sealed-expression?142663_
                  (lambda (_hd142684_)
                    (if (gx#sealed-syntax? _hd142684_)
                        (let* ((_e142685142692_ _hd142684_)
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
                                          (let ((_form142708_
                                                 _hd142689142703_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form142708_
                                                 gx#expression-form-binding?)
                                                (_E142687142696_)))))
                                      (_E142687142696_)))))
                          (_E142686142710_))
                        '#f)))
                 (_illegal-expression142664_
                  (lambda (_hd142682_ . _g147680_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx142661_
                     _hd142682_)))
                 (_expand-e142665_
                  (lambda (_form142677_ _hd142678_)
                    (let ((_bind142680_
                           (if (class-instance? gx#binding::t _form142677_)
                               _form142677_
                               (gx#resolve-identifier__0 _form142677_))))
                      (if (gx#core-expander-binding? _bind142680_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind142680_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd142678_
                            (gx#stx-source _stx142661_)))
                          (if (##structure-direct-instance-of?
                               _bind142680_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind142680_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd142678_
                                 (gx#stx-source _stx142661_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx142661_
                               _form142677_)))))))
          (let ((_hd142667_ (gx#core-expand-head _stx142661_)))
            (if (_sealed-expression?142663_ _hd142667_)
                _hd142667_
                (if (gx#stx-pair? _hd142667_)
                    (let* ((_form142669_ (gx#stx-car _hd142667_))
                           (_bind142671_
                            (if (gx#identifier? _form142669_)
                                (gx#resolve-identifier__0 _form142669_)
                                '#f)))
                      (if (or (not _bind142671_)
                              (not (gx#core-expander-binding? _bind142671_)))
                          (_expand-e142665_ '%%app (cons '%%app _hd142667_))
                          (if (eq? (unchecked-slot-ref _bind142671_ 'id)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd142667_
                               _illegal-expression142664_)
                              (if (gx#expression-form-binding? _bind142671_)
                                  (_expand-e142665_ _bind142671_ _hd142667_)
                                  (if (gx#direct-special-form-binding?
                                       _bind142671_)
                                      (gx#core-expand-expression
                                       (_expand-e142665_
                                        _bind142671_
                                        _hd142667_))
                                      (_illegal-expression142664_
                                       _hd142667_))))))
                    (if (gx#core-bound-identifier?__0 _hd142667_)
                        (_illegal-expression142664_ _hd142667_)
                        (if (gx#identifier? _hd142667_)
                            (_expand-e142665_
                             '%%ref
                             (cons '%%ref (cons _hd142667_ '())))
                            (if (gx#stx-datum? _hd142667_)
                                (_expand-e142665_
                                 '%#quote
                                 (cons '%#quote (cons _hd142667_ '())))
                                (_illegal-expression142664_
                                 _hd142667_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx142656_)
        (call-with-parameters
         (lambda ()
           (let ((_stx142659_ (gx#core-expand-expression _stx142656_)))
             (values _stx142659_ (gx#eval-syntax* _stx142659_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx142637_ _stop?142638_)
        (let _lp142640_ ((_stx142642_ _stx142637_))
          (if (_stop?142638_ _stx142642_)
              _stx142642_
              (let ((_rstx142644_ (gx#core-expand1 _stx142642_)))
                (if (eq? _stx142642_ _rstx142644_)
                    _stx142642_
                    (_lp142640_ _rstx142644_)))))))
    (define gx#core-expand*__0
      (lambda (_stx142649_)
        (let ((_stop?142651_ false))
          (gx#core-expand*__% _stx142649_ _stop?142651_))))
    (define gx#core-expand*
      (lambda _g147682_
        (let ((_g147681_ (##length _g147682_)))
          (cond ((##fx= _g147681_ 1)
                 (apply (lambda (_stx142649_) (gx#core-expand*__0 _stx142649_))
                        _g147682_))
                ((##fx= _g147681_ 2)
                 (apply (lambda (_stx142653_ _stop?142654_)
                          (gx#core-expand*__% _stx142653_ _stop?142654_))
                        _g147682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g147682_))))))
    (define gx#core-expand1
      (lambda (_stx142593_)
        (letrec ((_step142595_
                  (lambda (_hd142632_)
                    (let ((_bind142634_ (gx#resolve-identifier__0 _hd142632_)))
                      (if (class-instance? gx#runtime-binding::t _bind142634_)
                          _stx142593_
                          (if (##structure-direct-instance-of?
                               _bind142634_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind142634_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx142593_)
                              (if (not _bind142634_)
                                  _stx142593_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx142593_))))))))
          (let* ((_e142596142604_ _stx142593_)
                 (_E142602142608_ (lambda () _stx142593_))
                 (_E142598142614_
                  (lambda ()
                    (let ((_hd142612_ _e142596142604_))
                      (if (gx#identifier? _hd142612_)
                          (_step142595_ _hd142612_)
                          (_E142602142608_)))))
                 (_E142597142628_
                  (lambda ()
                    (if (gx#stx-pair? _e142596142604_)
                        (let ((_e142599142618_ (gx#syntax-e _e142596142604_)))
                          (let ((_hd142600142621_ (##car _e142599142618_))
                                (_tl142601142623_ (##cdr _e142599142618_)))
                            (let ((_hd142626_ _hd142600142621_))
                              (if (gx#identifier? _hd142626_)
                                  (_step142595_ _hd142626_)
                                  (_E142598142614_)))))
                        (_E142598142614_)))))
            (_E142597142628_)))))
    (define gx#core-expand-head
      (lambda (_stx142559_)
        (letrec ((_stop?142561_
                  (lambda (_stx142563_)
                    (let* ((_e142564142571_ _stx142563_)
                           (_E142566142575_ (lambda () '#f))
                           (_E142565142589_
                            (lambda ()
                              (if (gx#stx-pair? _e142564142571_)
                                  (let ((_e142567142579_
                                         (gx#syntax-e _e142564142571_)))
                                    (let ((_hd142568142582_
                                           (##car _e142567142579_))
                                          (_tl142569142584_
                                           (##cdr _e142567142579_)))
                                      (let ((_hd142587_ _hd142568142582_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd142587_)
                                            (_E142566142575_)))))
                                  (_E142566142575_)))))
                      (_E142565142589_)))))
          (gx#core-expand*__% _stx142559_ _stop?142561_))))
    (define gx#core-expand-block__%
      (lambda (_stx142365_
               _expand-special142366_
               _begin-form142367_
               _expand-e142368_)
        (letrec ((_expand-splice142370_
                  (lambda (_hd142533_ _body142534_ _rest142535_ _r142536_)
                    (if (gx#stx-list? _body142534_)
                        (_K142374_
                         (gx#stx-foldr cons _rest142535_ _body142534_)
                         _r142536_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx142365_
                         _hd142533_))))
                 (_expand-cond-expand142371_
                  (lambda (_hd142529_ _rest142530_ _r142531_)
                    (_K142374_
                     (cons (gx#core-expand-cond-expand% _hd142529_)
                           _rest142530_)
                     _r142531_)))
                 (_expand-include142372_
                  (lambda (_hd142478_ _rest142479_ _r142480_)
                    (let* ((_e142481142491_ _hd142478_)
                           (_E142483142495_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142481142491_)))
                           (_E142482142525_
                            (lambda ()
                              (if (gx#stx-pair? _e142481142491_)
                                  (let ((_e142484142499_
                                         (gx#syntax-e _e142481142491_)))
                                    (let ((_hd142485142502_
                                           (##car _e142484142499_))
                                          (_tl142486142504_
                                           (##cdr _e142484142499_)))
                                      (if (gx#stx-pair? _tl142486142504_)
                                          (let ((_e142487142507_
                                                 (gx#syntax-e
                                                  _tl142486142504_)))
                                            (let ((_hd142488142510_
                                                   (##car _e142487142507_))
                                                  (_tl142489142512_
                                                   (##cdr _e142487142507_)))
                                              (let ((_path142515_
                                                     _hd142488142510_))
                                                (if (gx#stx-null?
                                                     _tl142489142512_)
                                                    (if (gx#stx-string?
                                                         _path142515_)
                                                        (let* ((_rpath142517_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path142515_
                         (gx#stx-source _hd142478_)))
                       (_block142519_
                        (gx#core-expand-include%__% _hd142478_ _rpath142517_))
                       (_rbody142522_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block142519_
                            _expand-special142366_
                            '#f
                            _expand-e142368_))
                         gx#current-expander-path
                         (cons _rpath142517_ (gx#current-expander-path)))))
                  (_K142374_
                   _rest142479_
                   (foldr1 cons _r142480_ _rbody142522_)))
                (_E142483142495_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E142483142495_)))))
                                          (_E142483142495_))))
                                  (_E142483142495_)))))
                      (_E142482142525_))))
                 (_expand-expression142373_
                  (lambda (_hd142474_ _rest142475_ _r142476_)
                    (_K142374_
                     _rest142475_
                     (cons (_expand-e142368_ _hd142474_) _r142476_))))
                 (_K142374_
                  (lambda (_rest142404_ _r142405_)
                    (let* ((_e142406142413_ _rest142404_)
                           (_E142408142417_
                            (lambda ()
                              (if _begin-form142367_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form142367_
                                    (reverse _r142405_))
                                   (gx#stx-source _stx142365_))
                                  _r142405_)))
                           (_E142407142470_
                            (lambda ()
                              (if (gx#stx-pair? _e142406142413_)
                                  (let ((_e142409142421_
                                         (gx#syntax-e _e142406142413_)))
                                    (let ((_hd142410142424_
                                           (##car _e142409142421_))
                                          (_tl142411142426_
                                           (##cdr _e142409142421_)))
                                      (let* ((_hd142429_ _hd142410142424_)
                                             (_rest142431_ _tl142411142426_))
                                        (if '#t
                                            (let* ((_hd142433_
                                                    (gx#core-expand-head
                                                     _hd142429_))
                                                   (_e142434142441_ _hd142433_)
                                                   (_E142436142445_
                                                    (lambda ()
                                                      (_expand-expression142373_
                                                       _hd142433_
                                                       _rest142431_
                                                       _r142405_)))
                                                   (_E142435142466_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142434142441_)
                                                          (let ((_e142437142449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142434142441_)))
                    (let ((_hd142438142452_ (##car _e142437142449_))
                          (_tl142439142454_ (##cdr _e142437142449_)))
                      (let* ((_form142457_ _hd142438142452_)
                             (_body142459_ _tl142439142454_))
                        (if '#t
                            (let ((_bind142461_
                                   (if (gx#identifier? _form142457_)
                                       (gx#resolve-identifier__0 _form142457_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind142461_)
                                  (let ((_$e142463_
                                         (unchecked-slot-ref
                                          _bind142461_
                                          'id)))
                                    (if (eq? '%#begin _$e142463_)
                                        (_expand-splice142370_
                                         _hd142433_
                                         _body142459_
                                         _rest142431_
                                         _r142405_)
                                        (if (eq? '%#cond-expand _$e142463_)
                                            (_expand-cond-expand142371_
                                             _hd142433_
                                             _rest142431_
                                             _r142405_)
                                            (if (eq? '%#include _$e142463_)
                                                (_expand-include142372_
                                                 _hd142433_
                                                 _rest142431_
                                                 _r142405_)
                                                (_expand-special142366_
                                                 _hd142433_
                                                 _K142374_
                                                 _rest142431_
                                                 _r142405_)))))
                                  (_expand-expression142373_
                                   _hd142433_
                                   _rest142431_
                                   _r142405_)))
                            (_E142436142445_)))))
                  (_E142436142445_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142435142466_))
                                            (_E142408142417_)))))
                                  (_E142408142417_)))))
                      (_E142407142470_)))))
          (let* ((_e142375142382_ _stx142365_)
                 (_E142377142386_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142375142382_)))
                 (_E142376142400_
                  (lambda ()
                    (if (gx#stx-pair? _e142375142382_)
                        (let ((_e142378142390_ (gx#syntax-e _e142375142382_)))
                          (let ((_hd142379142393_ (##car _e142378142390_))
                                (_tl142380142395_ (##cdr _e142378142390_)))
                            (let ((_body142398_ _tl142380142395_))
                              (if (gx#stx-list? _body142398_)
                                  (_K142374_ _body142398_ '())
                                  (_E142377142386_)))))
                        (_E142377142386_)))))
            (_E142376142400_)))))
    (define gx#core-expand-block__0
      (lambda (_stx142541_ _expand-special142542_)
        (let* ((_begin-form142544_ '%#begin)
               (_expand-e142546_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142541_
           _expand-special142542_
           _begin-form142544_
           _expand-e142546_))))
    (define gx#core-expand-block__1
      (lambda (_stx142548_ _expand-special142549_ _begin-form142550_)
        (let ((_expand-e142552_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx142548_
           _expand-special142549_
           _begin-form142550_
           _expand-e142552_))))
    (define gx#core-expand-block
      (lambda _g147684_
        (let ((_g147683_ (##length _g147684_)))
          (cond ((##fx= _g147683_ 2)
                 (apply (lambda (_stx142541_ _expand-special142542_)
                          (gx#core-expand-block__0
                           _stx142541_
                           _expand-special142542_))
                        _g147684_))
                ((##fx= _g147683_ 3)
                 (apply (lambda (_stx142548_
                                 _expand-special142549_
                                 _begin-form142550_)
                          (gx#core-expand-block__1
                           _stx142548_
                           _expand-special142549_
                           _begin-form142550_))
                        _g147684_))
                ((##fx= _g147683_ 4)
                 (apply (lambda (_stx142554_
                                 _expand-special142555_
                                 _begin-form142556_
                                 _expand-e142557_)
                          (gx#core-expand-block__%
                           _stx142554_
                           _expand-special142555_
                           _begin-form142556_
                           _expand-e142557_))
                        _g147684_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g147684_))))))
    (define gx#core-expand-block*
      (lambda (_stx142313_ _expand-special142314_)
        (let* ((_g142315142326_
                (gx#core-expand-block__1
                 _stx142313_
                 _expand-special142314_
                 '#f))
               (_E142319142330_
                (lambda () (error '"No clause matching" _g142315142326_))))
          (let ((_K142324142361_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx142313_)))
                (_K142321142347_ (lambda (_expr142345_) _expr142345_))
                (_K142320142336_
                 (lambda (_body142334_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body142334_))
                    (gx#stx-source _stx142313_)))))
            (let ((_try-match142317142357_
                   (lambda ()
                     (if (##pair? _g142315142326_)
                         (let ((_tl142323142352_ (##cdr _g142315142326_))
                               (_hd142322142350_ (##car _g142315142326_)))
                           (if (##null? _tl142323142352_)
                               (let ((_expr142355_ _hd142322142350_))
                                 (_K142321142347_ _expr142355_))
                               (let ((_body142339_ _g142315142326_))
                                 (_K142320142336_ _body142339_))))
                         (let ((_body142339_ _g142315142326_))
                           (_K142320142336_ _body142339_))))))
              (if (##null? _g142315142326_)
                  (_K142324142361_)
                  (_try-match142317142357_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx142141_)
        (letrec ((_satisfied?142143_
                  (lambda (_condition142241_)
                    (let* ((_e142242142257_ _condition142241_)
                           (_E142252142261_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142242142257_)))
                           (_E142245142280_
                            (lambda ()
                              (if (gx#stx-pair? _e142242142257_)
                                  (let ((_e142253142265_
                                         (gx#syntax-e _e142242142257_)))
                                    (let ((_hd142254142268_
                                           (##car _e142253142265_))
                                          (_tl142255142270_
                                           (##cdr _e142253142265_)))
                                      (let* ((_combinator142273_
                                              _hd142254142268_)
                                             (_body142275_ _tl142255142270_))
                                        (if (gx#stx-list? _body142275_)
                                            (let ((_$e142277_
                                                   (gx#stx-e
                                                    _combinator142273_)))
                                              (if (eq? 'not _$e142277_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?142143_
                                                        _body142275_))
                                                  (if (eq? 'and _$e142277_)
                                                      (gx#stx-andmap
                                                       _satisfied?142143_
                                                       _body142275_)
                                                      (if (eq? 'or _$e142277_)
                                                          (gx#stx-ormap
                                                           _satisfied?142143_
                                                           _body142275_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e142277_)
                      (gx#stx-andmap gx#core-resolve-identifier _body142275_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx142141_
                       _combinator142273_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E142252142261_)))))
                                  (_E142252142261_))))
                           (_E142244142303_
                            (lambda ()
                              (if (gx#stx-pair? _e142242142257_)
                                  (let ((_e142246142284_
                                         (gx#syntax-e _e142242142257_)))
                                    (let ((_hd142247142287_
                                           (##car _e142246142284_))
                                          (_tl142248142289_
                                           (##cdr _e142246142284_)))
                                      (if (and (gx#identifier?
                                                _hd142247142287_)
                                               (gx#core-identifier=?
                                                _hd142247142287_
                                                'unquote))
                                          (if (gx#stx-pair? _tl142248142289_)
                                              (let ((_e142249142292_
                                                     (gx#syntax-e
                                                      _tl142248142289_)))
                                                (let ((_hd142250142295_
                                                       (##car _e142249142292_))
                                                      (_tl142251142297_
                                                       (##cdr _e142249142292_)))
                                                  (let ((_expr142300_
                                                         _hd142250142295_))
                                                    (if (gx#stx-null?
                                                         _tl142251142297_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr142300_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E142245142280_))
                (_E142245142280_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142245142280_))
                                          (_E142245142280_))))
                                  (_E142245142280_))))
                           (_E142243142309_
                            (lambda ()
                              (let ((_id142307_ _e142242142257_))
                                (if (gx#identifier? _id142307_)
                                    (gx#core-bound-identifier?__%
                                     _id142307_
                                     gx#feature-binding?)
                                    (_E142244142303_))))))
                      (_E142243142309_))))
                 (_loop142144_
                  (lambda (_rest142174_)
                    (let* ((_e142175142183_ _rest142174_)
                           (_E142181142187_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e142175142183_)))
                           (_E142177142191_
                            (lambda ()
                              (if (gx#stx-null? _e142175142183_)
                                  (if '#t '() (_E142181142187_))
                                  (_E142181142187_))))
                           (_E142176142237_
                            (lambda ()
                              (if (gx#stx-pair? _e142175142183_)
                                  (let ((_e142178142195_
                                         (gx#syntax-e _e142175142183_)))
                                    (let ((_hd142179142198_
                                           (##car _e142178142195_))
                                          (_tl142180142200_
                                           (##cdr _e142178142195_)))
                                      (let* ((_hd142203_ _hd142179142198_)
                                             (_rest142205_ _tl142180142200_))
                                        (if '#t
                                            (let* ((_e142206142213_ _hd142203_)
                                                   (_E142208142217_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e142206142213_)))
                                                   (_E142207142233_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e142206142213_)
                                                          (let ((_e142209142221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e142206142213_)))
                    (let ((_hd142210142224_ (##car _e142209142221_))
                          (_tl142211142226_ (##cdr _e142209142221_)))
                      (let* ((_condition142229_ _hd142210142224_)
                             (_body142231_ _tl142211142226_))
                        (if '#t
                            (if (gx#stx-eq? _condition142229_ 'else)
                                (if (gx#stx-null? _rest142205_)
                                    _body142231_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx142141_
                                     _hd142203_))
                                (if (_satisfied?142143_ _condition142229_)
                                    _body142231_
                                    (_loop142144_ _rest142205_)))
                            (_E142208142217_)))))
                  (_E142208142217_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E142207142233_))
                                            (_E142177142191_)))))
                                  (_E142177142191_)))))
                      (_E142176142237_)))))
          (let* ((_e142145142152_ _stx142141_)
                 (_E142147142156_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e142145142152_)))
                 (_E142146142170_
                  (lambda ()
                    (if (gx#stx-pair? _e142145142152_)
                        (let ((_e142148142160_ (gx#syntax-e _e142145142152_)))
                          (let ((_hd142149142163_ (##car _e142148142160_))
                                (_tl142150142165_ (##cdr _e142148142160_)))
                            (let ((_clauses142168_ _tl142150142165_))
                              (if (gx#stx-list? _clauses142168_)
                                  (gx#core-cons
                                   'begin
                                   (_loop142144_ _clauses142168_))
                                  (_E142147142156_)))))
                        (_E142147142156_)))))
            (_E142146142170_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx142084_ _rpath142085_)
        (let* ((_e142086142096_ _stx142084_)
               (_E142088142100_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e142086142096_)))
               (_E142087142127_
                (lambda ()
                  (if (gx#stx-pair? _e142086142096_)
                      (let ((_e142089142104_ (gx#syntax-e _e142086142096_)))
                        (let ((_hd142090142107_ (##car _e142089142104_))
                              (_tl142091142109_ (##cdr _e142089142104_)))
                          (if (gx#stx-pair? _tl142091142109_)
                              (let ((_e142092142112_
                                     (gx#syntax-e _tl142091142109_)))
                                (let ((_hd142093142115_
                                       (##car _e142092142112_))
                                      (_tl142094142117_
                                       (##cdr _e142092142112_)))
                                  (let ((_path142120_ _hd142093142115_))
                                    (if (gx#stx-null? _tl142094142117_)
                                        (if (gx#stx-string? _path142120_)
                                            (let ((_rpath142125_
                                                   (let ((_$e142122_
                                                          _rpath142085_))
                                                     (if _$e142122_
                                                         _$e142122_
                                                         (gx#core-resolve-path__%
                                                          _path142120_
                                                          (gx#stx-source
                                                           _stx142084_))))))
                                              (if (member _rpath142125_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx142084_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath142125_))
                                                    (gx#stx-source
                                                     _stx142084_)))))
                                            (_E142088142100_))
                                        (_E142088142100_)))))
                              (_E142088142100_))))
                      (_E142088142100_)))))
          (_E142087142127_))))
    (define gx#core-expand-include%__0
      (lambda (_stx142134_)
        (let ((_rpath142136_ '#f))
          (gx#core-expand-include%__% _stx142134_ _rpath142136_))))
    (define gx#core-expand-include%
      (lambda _g147686_
        (let ((_g147685_ (##length _g147686_)))
          (cond ((##fx= _g147685_ 1)
                 (apply (lambda (_stx142134_)
                          (gx#core-expand-include%__0 _stx142134_))
                        _g147686_))
                ((##fx= _g147685_ 2)
                 (apply (lambda (_stx142138_ _rpath142139_)
                          (gx#core-expand-include%__%
                           _stx142138_
                           _rpath142139_))
                        _g147686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g147686_))))))
    (define gx#core-apply-expander__%
      (lambda (_K142053_ _stx142054_ _method142055_)
        (if (procedure? _K142053_)
            (let ((_$e142057_ (gx#stx-source _stx142054_)))
              (if _$e142057_
                  ((lambda (_g142059142061_)
                     (gx#stx-wrap-source
                      (_K142053_ _stx142054_)
                      _g142059142061_))
                   _$e142057_)
                  (_K142053_ _stx142054_)))
            (let ((_$e142064_ (bound-method-ref _K142053_ _method142055_)))
              (if _$e142064_
                  ((lambda (_g142066142068_)
                     (gx#core-apply-expander__%
                      _g142066142068_
                      _stx142054_
                      _method142055_))
                   _$e142064_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx142054_
                   _method142055_))))))
    (define gx#core-apply-expander__0
      (lambda (_K142074_ _stx142075_)
        (let ((_method142077_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K142074_ _stx142075_ _method142077_))))
    (define gx#core-apply-expander
      (lambda _g147688_
        (let ((_g147687_ (##length _g147688_)))
          (cond ((##fx= _g147687_ 2)
                 (apply (lambda (_K142074_ _stx142075_)
                          (gx#core-apply-expander__0 _K142074_ _stx142075_))
                        _g147688_))
                ((##fx= _g147687_ 3)
                 (apply (lambda (_K142079_ _stx142080_ _method142081_)
                          (gx#core-apply-expander__%
                           _K142079_
                           _stx142080_
                           _method142081_))
                        _g147688_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g147688_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self142049_ _stx142050_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx142050_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self141902_ _stx141903_)
        (let* ((_self141904141910_ _self141902_)
               (_E141906141914_
                (lambda () (error '"No clause matching" _self141904141910_)))
               (_K141907141919_
                (lambda (_K141917_)
                  (gx#core-apply-expander__0 _K141917_ _stx141903_))))
          (if (class-instance? gx#macro-expander::t _self141904141910_)
              (let* ((_e141908141922_
                      (unchecked-slot-ref _self141904141910_ 'e))
                     (_K141925_ _e141908141922_))
                (_K141907141919_ _K141925_))
              (_E141906141914_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self141755_ _stx141756_)
        (if (gx#sealed-syntax? _stx141756_)
            _stx141756_
            (let* ((_self141757141763_ _self141755_)
                   (_E141759141767_
                    (lambda ()
                      (error '"No clause matching" _self141757141763_)))
                   (_K141760141772_
                    (lambda (_K141770_)
                      (gx#core-apply-expander__0 _K141770_ _stx141756_))))
              (if (class-instance? gx#core-expander::t _self141757141763_)
                  (let* ((_e141761141775_
                          (unchecked-slot-ref _self141757141763_ 'e))
                         (_K141778_ _e141761141775_))
                    (_K141760141772_ _K141778_))
                  (_E141759141767_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self141617_ _stx141618_ _top?141619_)
        (if (_top?141619_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self141617_ _stx141618_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx141618_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self141624_ _stx141625_)
        (let ((_top?141627_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self141624_
           _stx141625_
           _top?141627_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g147690_
        (let ((_g147689_ (##length _g147690_)))
          (cond ((##fx= _g147689_ 2)
                 (apply (lambda (_self141624_ _stx141625_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self141624_
                           _stx141625_))
                        _g147690_))
                ((##fx= _g147689_ 3)
                 (apply (lambda (_self141629_ _stx141630_ _top?141631_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self141629_
                           _stx141630_
                           _top?141631_))
                        _g147690_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g147690_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self141491_ _stx141492_)
        (gx#top-special-form::apply-macro-expander__%
         _self141491_
         _stx141492_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self141316_ _stx141317_)
        (let* ((_self141318141324_ _self141316_)
               (_E141320141328_
                (lambda () (error '"No clause matching" _self141318141324_)))
               (_K141321141361_
                (lambda (_id141331_)
                  (let* ((_e141332141339_ _stx141317_)
                         (_E141334141343_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e141332141339_)))
                         (_E141333141357_
                          (lambda ()
                            (if (gx#stx-pair? _e141332141339_)
                                (let ((_e141335141347_
                                       (gx#syntax-e _e141332141339_)))
                                  (let ((_hd141336141350_
                                         (##car _e141335141347_))
                                        (_tl141337141352_
                                         (##cdr _e141335141347_)))
                                    (let ((_body141355_ _tl141337141352_))
                                      (if '#t
                                          (gx#core-cons
                                           _id141331_
                                           _body141355_)
                                          (_E141334141343_)))))
                                (_E141334141343_)))))
                    (_E141333141357_)))))
          (if (class-instance? gx#rename-macro-expander::t _self141318141324_)
              (let* ((_e141322141364_
                      (unchecked-slot-ref _self141318141324_ 'e))
                     (_id141367_ _e141322141364_))
                (_K141321141361_ _id141367_))
              (_E141320141328_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self141142_ _stx141143_ _method141144_)
        (let* ((_self141145141153_ _self141142_)
               (_E141147141157_
                (lambda () (error '"No clause matching" _self141145141153_)))
               (_K141148141164_
                (lambda (_phi141160_ _ctx141161_ _K141162_)
                  (gx#core-apply-user-macro
                   _K141162_
                   _stx141143_
                   _ctx141161_
                   _phi141160_
                   _method141144_))))
          (if (class-instance? gx#user-expander::t _self141145141153_)
              (let* ((_e141149141167_
                      (unchecked-slot-ref _self141145141153_ 'e))
                     (_K141170_ _e141149141167_)
                     (_e141150141172_
                      (unchecked-slot-ref _self141145141153_ 'context))
                     (_ctx141175_ _e141150141172_)
                     (_e141151141177_
                      (unchecked-slot-ref _self141145141153_ 'phi))
                     (_phi141180_ _e141151141177_))
                (_K141148141164_ _phi141180_ _ctx141175_ _K141170_))
              (_E141147141157_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self141185_ _stx141186_)
        (let ((_method141188_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self141185_
           _stx141186_
           _method141188_))))
    (define gx#core-apply-user-expander
      (lambda _g147692_
        (let ((_g147691_ (##length _g147692_)))
          (cond ((##fx= _g147691_ 2)
                 (apply (lambda (_self141185_ _stx141186_)
                          (gx#core-apply-user-expander__0
                           _self141185_
                           _stx141186_))
                        _g147692_))
                ((##fx= _g147691_ 3)
                 (apply (lambda (_self141190_ _stx141191_ _method141192_)
                          (gx#core-apply-user-expander__%
                           _self141190_
                           _stx141191_
                           _method141192_))
                        _g147692_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g147692_))))))
    (define gx#core-apply-user-macro
      (lambda (_K141132_ _stx141133_ _ctx141134_ _phi141135_ _method141136_)
        (let ((_mark141138_
               (let ((__obj147663
                      (##structure gx#expander-mark::t '#f '#f '#f '#f)))
                 (class-instance-init!
                  __obj147663
                  '#f
                  _ctx141134_
                  _phi141135_
                  _stx141133_)
                 __obj147663)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K141132_
               (gx#stx-apply-mark _stx141133_ _mark141138_)
               _method141136_)
              _mark141138_))
           gx#current-expander-marks
           (cons _mark141138_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx140984_ _phi140985_ _ctx140986_)
        (let _lp140988_ ((_bind140990_
                          (gx#core-resolve-identifier__%
                           _stx140984_
                           _phi140985_
                           _ctx140986_)))
          (if (##structure-direct-instance-of?
               _bind140990_
               'gx#import-binding::t)
              (_lp140988_
               (##unchecked-structure-ref
                _bind140990_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind140990_
                   'gx#alias-binding::t)
                  (_lp140988_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind140990_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi140985_
                    _ctx140986_))
                  _bind140990_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx140995_)
        (let* ((_phi140997_ (gx#current-expander-phi))
               (_ctx140999_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx140995_ _phi140997_ _ctx140999_))))
    (define gx#resolve-identifier__1
      (lambda (_stx141001_ _phi141002_)
        (let ((_ctx141004_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx141001_ _phi141002_ _ctx141004_))))
    (define gx#resolve-identifier
      (lambda _g147694_
        (let ((_g147693_ (##length _g147694_)))
          (cond ((##fx= _g147693_ 1)
                 (apply (lambda (_stx140995_)
                          (gx#resolve-identifier__0 _stx140995_))
                        _g147694_))
                ((##fx= _g147693_ 2)
                 (apply (lambda (_stx141001_ _phi141002_)
                          (gx#resolve-identifier__1 _stx141001_ _phi141002_))
                        _g147694_))
                ((##fx= _g147693_ 3)
                 (apply (lambda (_stx141006_ _phi141007_ _ctx141008_)
                          (gx#resolve-identifier__%
                           _stx141006_
                           _phi141007_
                           _ctx141008_))
                        _g147694_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g147694_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx140942_ _val140943_ _rebind?140944_ _phi140945_ _ctx140946_)
        (let ((_rebind?140948_
               (if (not _rebind?140944_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?140944_) _rebind?140944_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx140942_)
           _val140943_
           _rebind?140948_
           _phi140945_
           _ctx140946_))))
    (define gx#bind-identifier!__0
      (lambda (_stx140953_ _val140954_)
        (let* ((_rebind?140956_ '#f)
               (_phi140958_ (gx#current-expander-phi))
               (_ctx140960_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx140953_
           _val140954_
           _rebind?140956_
           _phi140958_
           _ctx140960_))))
    (define gx#bind-identifier!__1
      (lambda (_stx140962_ _val140963_ _rebind?140964_)
        (let* ((_phi140966_ (gx#current-expander-phi))
               (_ctx140968_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx140962_
           _val140963_
           _rebind?140964_
           _phi140966_
           _ctx140968_))))
    (define gx#bind-identifier!__2
      (lambda (_stx140970_ _val140971_ _rebind?140972_ _phi140973_)
        (let ((_ctx140975_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx140970_
           _val140971_
           _rebind?140972_
           _phi140973_
           _ctx140975_))))
    (define gx#bind-identifier!
      (lambda _g147696_
        (let ((_g147695_ (##length _g147696_)))
          (cond ((##fx= _g147695_ 2)
                 (apply (lambda (_stx140953_ _val140954_)
                          (gx#bind-identifier!__0 _stx140953_ _val140954_))
                        _g147696_))
                ((##fx= _g147695_ 3)
                 (apply (lambda (_stx140962_ _val140963_ _rebind?140964_)
                          (gx#bind-identifier!__1
                           _stx140962_
                           _val140963_
                           _rebind?140964_))
                        _g147696_))
                ((##fx= _g147695_ 4)
                 (apply (lambda (_stx140970_
                                 _val140971_
                                 _rebind?140972_
                                 _phi140973_)
                          (gx#bind-identifier!__2
                           _stx140970_
                           _val140971_
                           _rebind?140972_
                           _phi140973_))
                        _g147696_))
                ((##fx= _g147695_ 5)
                 (apply (lambda (_stx140977_
                                 _val140978_
                                 _rebind?140979_
                                 _phi140980_
                                 _ctx140981_)
                          (gx#bind-identifier!__%
                           _stx140977_
                           _val140978_
                           _rebind?140979_
                           _phi140980_
                           _ctx140981_))
                        _g147696_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g147696_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx140914_ _phi140915_ _ctx140916_)
        (let _lp140918_ ((_e140920_ _stx140914_)
                         (_marks140921_ (gx#current-expander-marks)))
          (if (symbol? _e140920_)
              (gx#core-resolve-binding
               _e140920_
               _phi140915_
               _phi140915_
               _ctx140916_
               (reverse _marks140921_))
              (if (gx#identifier-quote? _e140920_)
                  (gx#core-resolve-binding
                   (unchecked-slot-ref _e140920_ 'e)
                   _phi140915_
                   '0
                   (##unchecked-structure-ref
                    _e140920_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e140920_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e140920_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (unchecked-slot-ref _e140920_ 'e)
                       _phi140915_
                       _phi140915_
                       _ctx140916_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e140920_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks140921_))
                      (if (##structure-direct-instance-of?
                           _e140920_
                           'gx#syntax-wrap::t)
                          (_lp140918_
                           (unchecked-slot-ref _e140920_ 'e)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e140920_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks140921_))
                          (if (class-instance? gx#AST::t _e140920_)
                              (_lp140918_
                               (unchecked-slot-ref _e140920_ 'e)
                               _marks140921_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx140914_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx140926_)
        (let* ((_phi140928_ (gx#current-expander-phi))
               (_ctx140930_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx140926_
           _phi140928_
           _ctx140930_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx140932_ _phi140933_)
        (let ((_ctx140935_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx140932_
           _phi140933_
           _ctx140935_))))
    (define gx#core-resolve-identifier
      (lambda _g147698_
        (let ((_g147697_ (##length _g147698_)))
          (cond ((##fx= _g147697_ 1)
                 (apply (lambda (_stx140926_)
                          (gx#core-resolve-identifier__0 _stx140926_))
                        _g147698_))
                ((##fx= _g147697_ 2)
                 (apply (lambda (_stx140932_ _phi140933_)
                          (gx#core-resolve-identifier__1
                           _stx140932_
                           _phi140933_))
                        _g147698_))
                ((##fx= _g147697_ 3)
                 (apply (lambda (_stx140937_ _phi140938_ _ctx140939_)
                          (gx#core-resolve-identifier__%
                           _stx140937_
                           _phi140938_
                           _ctx140939_))
                        _g147698_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g147698_))))))
    (define gx#core-resolve-binding
      (lambda (_id140827_
               _phi140828_
               _src-phi140829_
               _ctx140830_
               _marks140831_)
        (letrec ((_resolve140833_
                  (lambda (_ctx140901_ _src-phi140902_ _key140903_)
                    (let _lp140905_ ((_ctx140907_
                                      (gx#core-context-shift
                                       _ctx140901_
                                       _phi140828_))
                                     (_dphi140908_
                                      (fx- _phi140828_ _src-phi140902_)))
                      (let ((_$e140910_
                             (gx#core-context-resolve
                              _ctx140907_
                              _key140903_)))
                        (if _$e140910_
                            (values _$e140910_)
                            (if (fxzero? _dphi140908_)
                                '#f
                                (if (fxpositive? _dphi140908_)
                                    (_lp140905_
                                     (gx#core-context-shift _ctx140907_ '-1)
                                     (fx- _dphi140908_ '1))
                                    (_lp140905_
                                     (gx#core-context-shift _ctx140907_ '1)
                                     (fx+ _dphi140908_ '1))))))))))
          (let _lp140835_ ((_ctx140837_ _ctx140830_)
                           (_src-phi140838_ _src-phi140829_)
                           (_rest140839_ _marks140831_))
            (let* ((_rest140840140848_ _rest140839_)
                   (_else140842140856_
                    (lambda ()
                      (_resolve140833_
                       _ctx140837_
                       _src-phi140838_
                       _id140827_)))
                   (_K140844140889_
                    (lambda (_rest140859_ _hd140860_)
                      (let* ((_hd140861140867_ _hd140860_)
                             (_E140863140871_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd140861140867_)))
                             (_K140864140881_
                              (lambda (_subst140874_)
                                (let ((_$e140878_
                                       (let ((_key140876_
                                              (if _subst140874_
                                                  (table-ref
                                                   _subst140874_
                                                   _id140827_
                                                   '#f)
                                                  '#f)))
                                         (if _key140876_
                                             (_resolve140833_
                                              _ctx140837_
                                              _src-phi140838_
                                              _key140876_)
                                             '#f))))
                                  (if _$e140878_
                                      _$e140878_
                                      (_lp140835_
                                       (unchecked-slot-ref _hd140860_ 'context)
                                       (unchecked-slot-ref _hd140860_ 'phi)
                                       _rest140859_))))))
                        (if (class-instance?
                             gx#expander-mark::t
                             _hd140861140867_)
                            (let* ((_e140865140884_
                                    (unchecked-slot-ref
                                     _hd140861140867_
                                     'subst))
                                   (_subst140887_ _e140865140884_))
                              (_K140864140881_ _subst140887_))
                            (_E140863140871_))))))
              (if (##pair? _rest140840140848_)
                  (let ((_hd140845140892_ (##car _rest140840140848_))
                        (_tl140846140894_ (##cdr _rest140840140848_)))
                    (let* ((_hd140897_ _hd140845140892_)
                           (_rest140899_ _tl140846140894_))
                      (_K140844140889_ _rest140899_ _hd140897_)))
                  (_else140842140856_)))))))
    (define gx#core-bind!__%
      (lambda (_key140703_ _val140704_ _rebind?140705_ _phi140706_ _ctx140707_)
        (letrec ((_update-binding140709_
                  (lambda (_xval140780_)
                    (if (or (_rebind?140705_
                             _ctx140707_
                             _xval140780_
                             _val140704_)
                            (and (##structure-direct-instance-of?
                                  _xval140780_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval140780_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (class-instance?
                                           gx#binding::t
                                           _val140704_)
                                          (not (##structure-direct-instance-of?
                                                _val140704_
                                                'gx#import-binding::t)))))
                            (and (class-instance?
                                  gx#extern-binding::t
                                  _xval140780_)
                                 (class-instance?
                                  gx#runtime-binding::t
                                  _val140704_)
                                 (eq? (unchecked-slot-ref _val140704_ 'id)
                                      (unchecked-slot-ref _xval140780_ 'id))))
                        _val140704_
                        (if (and (##structure-direct-instance-of?
                                  _val140704_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val140704_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (class-instance?
                                           gx#binding::t
                                           _xval140780_)
                                          (eq? (unchecked-slot-ref
                                                _val140704_
                                                'id)
                                               (unchecked-slot-ref
                                                _xval140780_
                                                'id)))))
                            _xval140780_
                            (if (and (##structure-direct-instance-of?
                                      _val140704_
                                      'gx#import-binding::t)
                                     (class-instance?
                                      gx#binding::t
                                      _xval140780_))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key140703_
                                 (cons (unchecked-slot-ref _val140704_ 'id)
                                       (cons (let ((__obj147664
                                                    (##unchecked-structure-ref
                                                     _val140704_
                                                     '5
                                                     gx#import-binding::t
                                                     '#f)))
                                               (if (##structure-direct-instance-of?
                                                    __obj147664
                                                    'gx#expander-context::t)
                                                   (##unchecked-structure-ref
                                                    __obj147664
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   (class-slot-ref
                                                    gx#expander-context::t
                                                    __obj147664
                                                    'id)))
                                             '()))
                                 (cons (unchecked-slot-ref _xval140780_ 'id)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval140780_
                                                  'gx#import-binding::t)
                                                 (let ((__obj147665
                                                        (##unchecked-structure-ref
                                                         _xval140780_
                                                         '5
                                                         gx#import-binding::t
                                                         '#f)))
                                                   (if (##structure-direct-instance-of?
                                                        __obj147665
                                                        'gx#expander-context::t)
                                                       (##unchecked-structure-ref
                                                        __obj147665
                                                        '1
                                                        gx#expander-context::t
                                                        '#f)
                                                       (class-slot-ref
                                                        gx#expander-context::t
                                                        __obj147665
                                                        'id)))
                                                 _xval140780_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key140703_
                                 _val140704_
                                 _xval140780_))))))
                 (_gensubst140710_
                  (lambda (_subst140775_ _id140776_)
                    (let ((_eid140778_
                           (gensym (if (uninterned-symbol? _id140776_)
                                       '%
                                       _id140776_))))
                      (table-set! _subst140775_ _id140776_ _eid140778_)
                      _eid140778_)))
                 (_subst!140711_
                  (lambda (_key140713_)
                    (let* ((_key140714140722_ _key140713_)
                           (_else140716140730_ (lambda () _key140713_))
                           (_K140718140763_
                            (lambda (_mark140733_ _id140734_)
                              (let* ((_mark140735140741_ _mark140733_)
                                     (_E140737140745_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark140735140741_)))
                                     (_K140738140755_
                                      (lambda (_subst140748_)
                                        (if (not _subst140748_)
                                            (let ((_subst140750_
                                                   (make-table 'test: eq?)))
                                              (unchecked-slot-set!
                                               _mark140733_
                                               'subst
                                               _subst140750_)
                                              (_gensubst140710_
                                               _subst140750_
                                               _id140734_))
                                            (let ((_$e140752_
                                                   (table-ref
                                                    _subst140748_
                                                    _id140734_
                                                    '#f)))
                                              (if _$e140752_
                                                  (values _$e140752_)
                                                  (_gensubst140710_
                                                   _subst140748_
                                                   _id140734_)))))))
                                (if (class-instance?
                                     gx#expander-mark::t
                                     _mark140735140741_)
                                    (let* ((_e140739140758_
                                            (unchecked-slot-ref
                                             _mark140735140741_
                                             'subst))
                                           (_subst140761_ _e140739140758_))
                                      (_K140738140755_ _subst140761_))
                                    (_E140737140745_))))))
                      (if (##pair? _key140714140722_)
                          (let ((_hd140719140766_ (##car _key140714140722_))
                                (_tl140720140768_ (##cdr _key140714140722_)))
                            (let* ((_id140771_ _hd140719140766_)
                                   (_mark140773_ _tl140720140768_))
                              (_K140718140763_ _mark140773_ _id140771_)))
                          (_else140716140730_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx140707_ _phi140706_)
           (_subst!140711_ _key140703_)
           _val140704_
           _update-binding140709_))))
    (define gx#core-bind!__0
      (lambda (_key140797_ _val140798_)
        (let* ((_rebind?140800_ false)
               (_phi140802_ (gx#current-expander-phi))
               (_ctx140804_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key140797_
           _val140798_
           _rebind?140800_
           _phi140802_
           _ctx140804_))))
    (define gx#core-bind!__1
      (lambda (_key140806_ _val140807_ _rebind?140808_)
        (let* ((_phi140810_ (gx#current-expander-phi))
               (_ctx140812_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key140806_
           _val140807_
           _rebind?140808_
           _phi140810_
           _ctx140812_))))
    (define gx#core-bind!__2
      (lambda (_key140814_ _val140815_ _rebind?140816_ _phi140817_)
        (let ((_ctx140819_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key140814_
           _val140815_
           _rebind?140816_
           _phi140817_
           _ctx140819_))))
    (define gx#core-bind!
      (lambda _g147700_
        (let ((_g147699_ (##length _g147700_)))
          (cond ((##fx= _g147699_ 2)
                 (apply (lambda (_key140797_ _val140798_)
                          (gx#core-bind!__0 _key140797_ _val140798_))
                        _g147700_))
                ((##fx= _g147699_ 3)
                 (apply (lambda (_key140806_ _val140807_ _rebind?140808_)
                          (gx#core-bind!__1
                           _key140806_
                           _val140807_
                           _rebind?140808_))
                        _g147700_))
                ((##fx= _g147699_ 4)
                 (apply (lambda (_key140814_
                                 _val140815_
                                 _rebind?140816_
                                 _phi140817_)
                          (gx#core-bind!__2
                           _key140814_
                           _val140815_
                           _rebind?140816_
                           _phi140817_))
                        _g147700_))
                ((##fx= _g147699_ 5)
                 (apply (lambda (_key140821_
                                 _val140822_
                                 _rebind?140823_
                                 _phi140824_
                                 _ctx140825_)
                          (gx#core-bind!__%
                           _key140821_
                           _val140822_
                           _rebind?140823_
                           _phi140824_
                           _ctx140825_))
                        _g147700_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g147700_))))))
    (define gx#core-identifier-key
      (lambda (_stx140637_)
        (if (symbol? _stx140637_)
            (let* ((_g140638140646_ (gx#current-expander-marks))
                   (_else140640140654_ (lambda () _stx140637_))
                   (_K140642140659_
                    (lambda (_hd140657_) (cons _stx140637_ _hd140657_))))
              (if (##pair? _g140638140646_)
                  (let* ((_hd140643140662_ (##car _g140638140646_))
                         (_hd140665_ _hd140643140662_))
                    (_K140642140659_ _hd140665_))
                  (_else140640140654_)))
            (if (gx#identifier? _stx140637_)
                (let* ((_id140667_ (gx#syntax-local-unwrap _stx140637_))
                       (_eid140669_ (gx#stx-e _id140667_))
                       (_marks140671_ (gx#stx-identifier-marks* _id140667_)))
                  (let* ((_marks140673140681_ _marks140671_)
                         (_else140675140689_ (lambda () _eid140669_))
                         (_K140677140694_
                          (lambda (_hd140692_) (cons _eid140669_ _hd140692_))))
                    (if (##pair? _marks140673140681_)
                        (let* ((_hd140678140697_ (##car _marks140673140681_))
                               (_hd140700_ _hd140678140697_))
                          (_K140677140694_ _hd140700_))
                        (_else140675140689_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx140637_)))))
    (define gx#core-context-shift
      (lambda (_ctx140582_ _phi140583_)
        (letrec ((_make-phi140585_
                  (lambda (_super140635_)
                    (let ((__obj147666
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj147666
                       (gensym 'phi)
                       _super140635_)
                      __obj147666)))
                 (_make-phi/up140586_
                  (lambda (_ctx140630_ _super140631_)
                    (let ((_ctx+1140633_ (_make-phi140585_ _super140631_)))
                      (unchecked-slot-set! _ctx140630_ 'up _ctx+1140633_)
                      (unchecked-slot-set! _ctx+1140633_ 'down _ctx140630_)
                      _ctx+1140633_)))
                 (_make-phi/down140587_
                  (lambda (_ctx140625_ _super140626_)
                    (let ((_ctx-1140628_ (_make-phi140585_ _super140626_)))
                      (unchecked-slot-set! _ctx-1140628_ 'up _ctx140625_)
                      (unchecked-slot-set! _ctx140625_ 'down _ctx-1140628_)
                      _ctx-1140628_)))
                 (_shift140588_
                  (lambda (_ctx140609_
                           _delta140610_
                           _make-delta-context140611_
                           _phi140612_
                           _K140613_)
                    (let ((_$e140615_ (unchecked-slot-ref _ctx140609_ 'super)))
                      (if _$e140615_
                          ((lambda (_super140618_)
                             (let* ((_super140620_
                                     (_K140613_ _super140618_ _delta140610_))
                                    (_ctx+d140622_
                                     (_make-delta-context140611_
                                      _ctx140609_
                                      _super140620_)))
                               (_K140613_
                                _ctx+d140622_
                                (fx- _phi140612_ _delta140610_))))
                           _$e140615_)
                          (error '"Bad context" _ctx140609_))))))
          (let _K140590_ ((_ctx140592_ _ctx140582_) (_phi140593_ _phi140583_))
            (if (fxzero? _phi140593_)
                _ctx140592_
                (if (fx> (##vector-length _ctx140592_) '3)
                    (if (fxpositive? _phi140593_)
                        (let ((_$e140595_
                               (unchecked-slot-ref _ctx140592_ 'up)))
                          (if _$e140595_
                              ((lambda (_g140597140599_)
                                 (_K140590_
                                  _g140597140599_
                                  (fx- _phi140593_ '1)))
                               _$e140595_)
                              (_shift140588_
                               _ctx140592_
                               '1
                               _make-phi/up140586_
                               _phi140593_
                               _K140590_)))
                        (let ((_$e140602_
                               (unchecked-slot-ref _ctx140592_ 'down)))
                          (if _$e140602_
                              ((lambda (_g140604140606_)
                                 (_K140590_
                                  _g140604140606_
                                  (fx+ _phi140593_ '1)))
                               _$e140602_)
                              (_shift140588_
                               _ctx140592_
                               '-1
                               _make-phi/down140587_
                               _phi140593_
                               _K140590_))))
                    _ctx140592_))))))
    (define gx#core-context-get
      (lambda (_ctx140579_ _key140580_)
        (table-ref (unchecked-slot-ref _ctx140579_ 'table) _key140580_ '#f)))
    (define gx#core-context-put!
      (lambda (_ctx140575_ _key140576_ _val140577_)
        (table-set!
         (unchecked-slot-ref _ctx140575_ 'table)
         _key140576_
         _val140577_)))
    (define gx#core-context-resolve
      (lambda (_ctx140562_ _key140563_)
        (let _lp140565_ ((_ctx140567_ _ctx140562_))
          (let ((_$e140569_ (gx#core-context-get _ctx140567_ _key140563_)))
            (if _$e140569_
                (values _$e140569_)
                (let ((_$e140572_
                       (if (fx> (##vector-length _ctx140567_) '3)
                           (unchecked-slot-ref _ctx140567_ 'super)
                           '#f)))
                  (if _$e140572_ (_lp140565_ _$e140572_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx140552_ _key140553_ _val140554_ _rebind140555_)
        (let ((_$e140557_ (gx#core-context-get _ctx140552_ _key140553_)))
          (if _$e140557_
              ((lambda (_xval140560_)
                 (gx#core-context-put!
                  _ctx140552_
                  _key140553_
                  (_rebind140555_ _xval140560_)))
               _$e140557_)
              (gx#core-context-put! _ctx140552_ _key140553_ _val140554_)))))
    (define gx#core-context-top__%
      (lambda (_ctx140530_ _stop?140531_)
        (let _lp140533_ ((_ctx140535_ _ctx140530_))
          (if (_stop?140531_ _ctx140535_)
              _ctx140535_
              (if (class-instance? gx#phi-context::t _ctx140535_)
                  (_lp140533_ (unchecked-slot-ref _ctx140535_ 'super))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx140541_ (gx#current-expander-context))
               (_stop?140543_ gx#top-context?))
          (gx#core-context-top__% _ctx140541_ _stop?140543_))))
    (define gx#core-context-top__1
      (lambda (_ctx140545_)
        (let ((_stop?140547_ gx#top-context?))
          (gx#core-context-top__% _ctx140545_ _stop?140547_))))
    (define gx#core-context-top
      (lambda _g147702_
        (let ((_g147701_ (##length _g147702_)))
          (cond ((##fx= _g147701_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g147702_))
                ((##fx= _g147701_ 1)
                 (apply (lambda (_ctx140545_)
                          (gx#core-context-top__1 _ctx140545_))
                        _g147702_))
                ((##fx= _g147701_ 2)
                 (apply (lambda (_ctx140549_ _stop?140550_)
                          (gx#core-context-top__% _ctx140549_ _stop?140550_))
                        _g147702_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g147702_))))))
    (define gx#core-context-root__%
      (lambda (_ctx140515_)
        (let _lp140517_ ((_ctx140519_ _ctx140515_))
          (if (class-instance? gx#phi-context::t _ctx140519_)
              (_lp140517_ (unchecked-slot-ref _ctx140519_ 'super))
              _ctx140519_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx140525_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx140525_))))
    (define gx#core-context-root
      (lambda _g147704_
        (let ((_g147703_ (##length _g147704_)))
          (cond ((##fx= _g147703_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g147704_))
                ((##fx= _g147703_ 1)
                 (apply (lambda (_ctx140527_)
                          (gx#core-context-root__% _ctx140527_))
                        _g147704_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g147704_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx140496_ . __140493140497_)
        (let ((_$e140500_ (gx#current-expander-allow-rebind?)))
          (if _$e140500_
              _$e140500_
              (if (class-instance? gx#top-context::t _ctx140496_)
                  (if (not (class-instance? gx#module-context::t _ctx140496_))
                      (not (class-instance? gx#prelude-context::t _ctx140496_))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx140507_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx140507_))))
    (define gx#core-context-rebind?
      (lambda _g147706_
        (let ((_g147705_ (##length _g147706_)))
          (cond ((##fx= _g147705_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g147706_))
                ((##fx= _g147705_ 1)
                 (apply (lambda (_ctx140509_)
                          (gx#core-context-rebind?__% _ctx140509_))
                        _g147706_))
                ((##fx>= _g147705_ 1)
                 (apply gx#core-context-rebind?__% _g147706_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g147706_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx140479_)
        (let ((_$e140481_ (gx#core-context-top__1 _ctx140479_)))
          (if _$e140481_
              ((lambda (_ctx140484_)
                 (if (class-instance? gx#module-context::t _ctx140484_)
                     (unchecked-slot-ref _ctx140484_ 'ns)
                     '#f))
               _$e140481_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx140490_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx140490_))))
    (define gx#core-context-namespace
      (lambda _g147708_
        (let ((_g147707_ (##length _g147708_)))
          (cond ((##fx= _g147707_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g147708_))
                ((##fx= _g147707_ 1)
                 (apply (lambda (_ctx140492_)
                          (gx#core-context-namespace__% _ctx140492_))
                        _g147708_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g147708_))))))
    (define gx#expander-binding?__%
      (lambda (_bind140465_ _is?140466_)
        (if (##structure-direct-instance-of?
             _bind140465_
             'gx#syntax-binding::t)
            (_is?140466_
             (##unchecked-structure-ref
              _bind140465_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind140471_)
        (let ((_is?140473_ gx#expander?))
          (gx#expander-binding?__% _bind140471_ _is?140473_))))
    (define gx#expander-binding?
      (lambda _g147710_
        (let ((_g147709_ (##length _g147710_)))
          (cond ((##fx= _g147709_ 1)
                 (apply (lambda (_bind140471_)
                          (gx#expander-binding?__0 _bind140471_))
                        _g147710_))
                ((##fx= _g147709_ 2)
                 (apply (lambda (_bind140475_ _is?140476_)
                          (gx#expander-binding?__% _bind140475_ _is?140476_))
                        _g147710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g147710_))))))
    (define gx#core-expander-binding?
      (lambda (_bind140462_)
        (gx#expander-binding?__% _bind140462_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind140460_)
        (gx#expander-binding?__% _bind140460_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind140454_)
        (letrec ((_direct-special-form?140456_
                  (lambda (_obj140458_)
                    (##structure-direct-instance-of?
                     _obj140458_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind140454_
           _direct-special-form?140456_))))
    (define gx#special-form-binding?
      (lambda (_bind140452_)
        (gx#expander-binding?__% _bind140452_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind140443_)
        (letrec ((_feature?140445_
                  (lambda (_e140447_)
                    (let ((_$e140449_
                           (class-instance? gx#feature-expander::t _e140447_)))
                      (if _$e140449_
                          _$e140449_
                          (class-instance? gx#module-context::t _e140447_))))))
          (gx#expander-binding?__% _bind140443_ _feature?140445_))))
    (define gx#private-feature-binding?
      (lambda (_bind140441_)
        (gx#expander-binding?__% _bind140441_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id140428_ _bound?140429_)
        (if (gx#identifier? _id140428_)
            (_bound?140429_ (gx#resolve-identifier__0 _id140428_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id140434_)
        (let ((_bound?140436_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id140434_ _bound?140436_))))
    (define gx#core-bound-identifier?
      (lambda _g147712_
        (let ((_g147711_ (##length _g147712_)))
          (cond ((##fx= _g147711_ 1)
                 (apply (lambda (_id140434_)
                          (gx#core-bound-identifier?__0 _id140434_))
                        _g147712_))
                ((##fx= _g147711_ 2)
                 (apply (lambda (_id140438_ _bound?140439_)
                          (gx#core-bound-identifier?__%
                           _id140438_
                           _bound?140439_))
                        _g147712_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g147712_))))))
    (define gx#core-identifier=?
      (lambda (_x140418_ _y140419_)
        (letrec ((_y=?140421_
                  (lambda (_xid140425_)
                    ((if (list? _y140419_) memq eq?) _xid140425_ _y140419_))))
          (let ((_bind140423_ (gx#resolve-identifier__0 _x140418_)))
            (if (class-instance? gx#binding::t _bind140423_)
                (_y=?140421_ (unchecked-slot-ref _bind140423_ 'id))
                (_y=?140421_ (gx#stx-e _x140418_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e140416_)
        (if (interned-symbol? _e140416_)
            (string-index (symbol->string _e140416_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx140371_ _src140372_ _ctx140373_ _marks140374_)
        (if (##structure? _stx140371_)
            (let ((_$e140376_ (gx#sealed-syntax-unwrap _stx140371_)))
              (if _$e140376_
                  (values _$e140376_)
                  (if (gx#identifier? _stx140371_)
                      (let* ((_id140379_
                              (gx#stx-unwrap__% _stx140371_ _marks140374_))
                             (__obj147667
                              (##structure
                               gx#syntax-quote::t
                               '#f
                               '#f
                               '#f
                               '#f)))
                        (class-instance-init!
                         __obj147667
                         (unchecked-slot-ref _id140379_ 'e)
                         (let ((_$e140381_
                                (unchecked-slot-ref _id140379_ 'source)))
                           (if _$e140381_ _$e140381_ _src140372_))
                         _ctx140373_
                         (##unchecked-structure-ref
                          _id140379_
                          '3
                          gx#identifier-wrap::t
                          '#f))
                        __obj147667)
                      (let ((__obj147668
                             (##structure gx#syntax-quote::t '#f '#f '#f '#f)))
                        (class-instance-init!
                         __obj147668
                         (gx#stx-e _stx140371_)
                         (let ((_$e140384_ (gx#stx-source _stx140371_)))
                           (if _$e140384_ _$e140384_ _src140372_))
                         _ctx140373_
                         (reverse _marks140374_))
                        __obj147668))))
            (let ((__obj147669
                   (##structure gx#syntax-quote::t '#f '#f '#f '#f)))
              (class-instance-init!
               __obj147669
               _stx140371_
               _src140372_
               _ctx140373_
               (reverse _marks140374_))
              __obj147669))))
    (define gx#core-quote-syntax__0
      (lambda (_stx140390_)
        (let* ((_src140392_ '#f)
               (_ctx140394_ (gx#current-expander-context))
               (_marks140396_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140390_
           _src140392_
           _ctx140394_
           _marks140396_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx140398_ _src140399_)
        (let* ((_ctx140401_ (gx#current-expander-context))
               (_marks140403_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140398_
           _src140399_
           _ctx140401_
           _marks140403_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx140405_ _src140406_ _ctx140407_)
        (let ((_marks140409_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx140405_
           _src140406_
           _ctx140407_
           _marks140409_))))
    (define gx#core-quote-syntax
      (lambda _g147714_
        (let ((_g147713_ (##length _g147714_)))
          (cond ((##fx= _g147713_ 1)
                 (apply (lambda (_stx140390_)
                          (gx#core-quote-syntax__0 _stx140390_))
                        _g147714_))
                ((##fx= _g147713_ 2)
                 (apply (lambda (_stx140398_ _src140399_)
                          (gx#core-quote-syntax__1 _stx140398_ _src140399_))
                        _g147714_))
                ((##fx= _g147713_ 3)
                 (apply (lambda (_stx140405_ _src140406_ _ctx140407_)
                          (gx#core-quote-syntax__2
                           _stx140405_
                           _src140406_
                           _ctx140407_))
                        _g147714_))
                ((##fx= _g147713_ 4)
                 (apply (lambda (_stx140411_
                                 _src140412_
                                 _ctx140413_
                                 _marks140414_)
                          (gx#core-quote-syntax__%
                           _stx140411_
                           _src140412_
                           _ctx140413_
                           _marks140414_))
                        _g147714_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g147714_))))))
    (define gx#core-cons
      (lambda (_hd140367_ _tl140368_)
        (cons (gx#core-quote-syntax__0 _hd140367_) _tl140368_)))
    (define gx#core-list
      (lambda (_hd140364_ . _rest140365_)
        (cons (gx#core-quote-syntax__0 _hd140364_) _rest140365_)))
    (define gx#core-cons*
      (lambda (_hd140361_ . _rest140362_)
        (apply cons* (gx#core-quote-syntax__0 _hd140361_) _rest140362_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path140335_ _rel140336_)
        (let ((_path140348_ (gx#stx-e _stx-path140335_))
              (_reldir140349_
               (let _lp140338_ ((_relsrc140340_
                                 (let ((_$e140345_
                                        (gx#stx-source _stx-path140335_)))
                                   (if _$e140345_ _$e140345_ _rel140336_))))
                 (if (class-instance? gx#AST::t _relsrc140340_)
                     (_lp140338_
                      (let ((_$e140342_ (gx#stx-source _relsrc140340_)))
                        (if _$e140342_ _$e140342_ (gx#stx-e _relsrc140340_))))
                     (if (source-location-path? _relsrc140340_)
                         (path-directory (source-location-path _relsrc140340_))
                         (if (string? _relsrc140340_)
                             (path-directory _relsrc140340_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path140348_ (path-normalize _reldir140349_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path140354_)
        (let ((_rel140356_ '#f))
          (gx#core-resolve-path__% _stx-path140354_ _rel140356_))))
    (define gx#core-resolve-path
      (lambda _g147716_
        (let ((_g147715_ (##length _g147716_)))
          (cond ((##fx= _g147715_ 1)
                 (apply (lambda (_stx-path140354_)
                          (gx#core-resolve-path__0 _stx-path140354_))
                        _g147716_))
                ((##fx= _g147715_ 2)
                 (apply (lambda (_stx-path140358_ _rel140359_)
                          (gx#core-resolve-path__%
                           _stx-path140358_
                           _rel140359_))
                        _g147716_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g147716_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr140291_ _ctx140292_)
        (let* ((_repr140293140300_ _repr140291_)
               (_E140295140304_
                (lambda () (error '"No clause matching" _repr140293140300_)))
               (_K140296140312_
                (lambda (_subs140307_ _phi140308_)
                  (let* ((_subst140310_
                          (if (not (null? _subs140307_))
                              (list->table _subs140307_ 'test: eq?)
                              '#f))
                         (__obj147670
                          (##structure gx#expander-mark::t '#f '#f '#f '#f)))
                    (class-instance-init!
                     __obj147670
                     _subst140310_
                     _ctx140292_
                     _phi140308_
                     '#f)
                    __obj147670))))
          (if (##pair? _repr140293140300_)
              (let ((_hd140297140315_ (##car _repr140293140300_))
                    (_tl140298140317_ (##cdr _repr140293140300_)))
                (let* ((_phi140320_ _hd140297140315_)
                       (_subs140322_ _tl140298140317_))
                  (_K140296140312_ _subs140322_ _phi140320_)))
              (_E140295140304_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr140327_)
        (let ((_ctx140329_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr140327_ _ctx140329_))))
    (define gx#core-deserialize-mark
      (lambda _g147718_
        (let ((_g147717_ (##length _g147718_)))
          (cond ((##fx= _g147717_ 1)
                 (apply (lambda (_repr140327_)
                          (gx#core-deserialize-mark__0 _repr140327_))
                        _g147718_))
                ((##fx= _g147717_ 2)
                 (apply (lambda (_repr140331_ _ctx140332_)
                          (gx#core-deserialize-mark__%
                           _repr140331_
                           _ctx140332_))
                        _g147718_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g147718_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx140288_)
        (gx#stx-rewrap _stx140288_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx140286_)
        (gx#stx-unwrap__% _stx140286_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx140256_)
        (let* ((_g140257140265_ (gx#current-expander-marks))
               (_else140259140273_ (lambda () _stx140256_))
               (_K140261140278_
                (lambda (_hd140276_)
                  (gx#stx-apply-mark _stx140256_ _hd140276_))))
          (if (##pair? _g140257140265_)
              (let* ((_hd140262140281_ (##car _g140257140265_))
                     (_hd140284_ _hd140262140281_))
                (_K140261140278_ _hd140284_))
              (_else140259140273_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx140241_ _E140242_)
        (let ((_bind140244_ (gx#resolve-identifier__0 _stx140241_)))
          (if (##structure-direct-instance-of?
               _bind140244_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind140244_
               '4
               gx#syntax-binding::t
               '#f)
              (_E140242_ _stx140241_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx140249_)
        (let ((_E140251_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx140249_ _E140251_))))
    (define gx#syntax-local-e
      (lambda _g147720_
        (let ((_g147719_ (##length _g147720_)))
          (cond ((##fx= _g147719_ 1)
                 (apply (lambda (_stx140249_)
                          (gx#syntax-local-e__0 _stx140249_))
                        _g147720_))
                ((##fx= _g147719_ 2)
                 (apply (lambda (_stx140253_ _E140254_)
                          (gx#syntax-local-e__% _stx140253_ _E140254_))
                        _g147720_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g147720_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx140225_ _E140226_)
        (let ((_e140228_ (gx#syntax-local-e__% _stx140225_ _E140226_)))
          (if (class-instance? gx#expander::t _e140228_)
              (let ((__obj147671 _e140228_))
                (if (##structure-direct-instance-of?
                     __obj147671
                     'gx#expander::t)
                    (##unchecked-structure-ref
                     __obj147671
                     '1
                     gx#expander::t
                     '#f)
                    (class-slot-ref gx#expander::t __obj147671 'e)))
              _e140228_))))
    (define gx#syntax-local-value__0
      (lambda (_stx140233_)
        (let ((_E140235_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx140233_ _E140235_))))
    (define gx#syntax-local-value
      (lambda _g147722_
        (let ((_g147721_ (##length _g147722_)))
          (cond ((##fx= _g147721_ 1)
                 (apply (lambda (_stx140233_)
                          (gx#syntax-local-value__0 _stx140233_))
                        _g147722_))
                ((##fx= _g147721_ 2)
                 (apply (lambda (_stx140237_ _E140238_)
                          (gx#syntax-local-value__% _stx140237_ _E140238_))
                        _g147722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g147722_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx140222_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx140222_)))))
