(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1707841979)
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
      (lambda _$args146185_
        (apply make-instance gx#expander-context::t _$args146185_)))
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
      (lambda _$args146182_
        (apply make-instance gx#root-context::t _$args146182_)))
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
      (lambda _$args146179_
        (apply make-instance gx#phi-context::t _$args146179_)))
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
      (lambda _$args146176_
        (apply make-instance gx#top-context::t _$args146176_)))
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
      (lambda _$args146173_
        (apply make-instance gx#module-context::t _$args146173_)))
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
      (lambda _$args146170_
        (apply make-instance gx#prelude-context::t _$args146170_)))
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
      (lambda _$args146167_
        (apply make-instance gx#local-context::t _$args146167_)))
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
      (lambda (_self146151_ _id146152_ _super146153_)
        (if (##fx< '3 (##structure-length _self146151_))
            (begin
              (##unchecked-structure-set!
               _self146151_
               _id146152_
               '1
               (##structure-type _self146151_)
               '#f)
              (##unchecked-structure-set!
               _self146151_
               (make-table 'test: eq?)
               '2
               (##structure-type _self146151_)
               '#f)
              (##unchecked-structure-set!
               _self146151_
               _super146153_
               '3
               (##structure-type _self146151_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self146151_
                   '3
                   (##vector-length _self146151_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self146158_ _id146159_)
        (let ((_super146161_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self146158_ _id146159_ _super146161_))))
    (define gx#phi-context:::init!
      (lambda _g150796_
        (let ((_g150795_ (##length _g150796_)))
          (cond ((##fx= _g150795_ 2)
                 (apply (lambda (_self146158_ _id146159_)
                          (gx#phi-context:::init!__0 _self146158_ _id146159_))
                        _g150796_))
                ((##fx= _g150795_ 3)
                 (apply (lambda (_self146163_ _id146164_ _super146165_)
                          (gx#phi-context:::init!__%
                           _self146163_
                           _id146164_
                           _super146165_))
                        _g150796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g150796_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self146015_ _super146016_)
        (if (##fx< '3 (##structure-length _self146015_))
            (begin
              (##unchecked-structure-set!
               _self146015_
               (gensym 'L)
               '1
               (##structure-type _self146015_)
               '#f)
              (##unchecked-structure-set!
               _self146015_
               (make-table 'test: eq?)
               '2
               (##structure-type _self146015_)
               '#f)
              (##unchecked-structure-set!
               _self146015_
               _super146016_
               '3
               (##structure-type _self146015_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self146015_
                   '3
                   (##vector-length _self146015_)))))
    (define gx#local-context:::init!__0
      (lambda (_self146021_)
        (let ((_super146023_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self146021_ _super146023_))))
    (define gx#local-context:::init!
      (lambda _g150798_
        (let ((_g150797_ (##length _g150798_)))
          (cond ((##fx= _g150797_ 1)
                 (apply (lambda (_self146021_)
                          (gx#local-context:::init!__0 _self146021_))
                        _g150798_))
                ((##fx= _g150797_ 2)
                 (apply (lambda (_self146025_ _super146026_)
                          (gx#local-context:::init!__%
                           _self146025_
                           _super146026_))
                        _g150798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g150798_))))))
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
      (lambda _$args145889_ (apply make-instance gx#binding::t _$args145889_)))
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
      (lambda _$args145886_
        (apply make-instance gx#runtime-binding::t _$args145886_)))
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
      (lambda _$args145883_
        (apply make-instance gx#local-binding::t _$args145883_)))
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
      (lambda _$args145880_
        (apply make-instance gx#top-binding::t _$args145880_)))
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
      (lambda _$args145877_
        (apply make-instance gx#module-binding::t _$args145877_)))
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
      (lambda _$args145874_
        (apply make-instance gx#extern-binding::t _$args145874_)))
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
      (lambda _$args145871_
        (apply make-instance gx#syntax-binding::t _$args145871_)))
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
      (lambda _$args145868_
        (apply make-instance gx#import-binding::t _$args145868_)))
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
      (lambda _$args145865_
        (apply make-instance gx#alias-binding::t _$args145865_)))
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
      (lambda _$args145862_
        (apply make-instance gx#expander::t _$args145862_)))
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
      (lambda _$args145859_
        (apply make-instance gx#core-expander::t _$args145859_)))
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
      (lambda _$args145856_
        (apply make-instance gx#expression-form::t _$args145856_)))
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
      (lambda _$args145853_
        (apply make-instance gx#special-form::t _$args145853_)))
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
      (lambda _$args145850_
        (apply make-instance gx#definition-form::t _$args145850_)))
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
      (lambda _$args145847_
        (apply make-instance gx#top-special-form::t _$args145847_)))
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
      (lambda _$args145844_
        (apply make-instance gx#module-special-form::t _$args145844_)))
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
      (lambda _$args145841_
        (apply make-instance gx#feature-expander::t _$args145841_)))
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
      (lambda _$args145838_
        (apply make-instance gx#private-feature-expander::t _$args145838_)))
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
      (lambda _$args145835_
        (apply make-instance gx#reserved-expander::t _$args145835_)))
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
      (lambda _$args145832_
        (apply make-instance gx#macro-expander::t _$args145832_)))
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
      (lambda _$args145829_
        (apply make-instance gx#rename-macro-expander::t _$args145829_)))
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
      (lambda _$args145826_
        (apply make-instance gx#user-expander::t _$args145826_)))
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
      (lambda _$args145823_
        (apply make-instance gx#expander-mark::t _$args145823_)))
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
      (lambda (_ctx145808_ _message145809_ _stx145810_ . _details145811_)
        (let ((_ctx145821_
               (let ((_$e145813_ _ctx145808_))
                 (if _$e145813_
                     _$e145813_
                     (let ((_$e145816_ (gx#core-context-top__0)))
                       (if _$e145816_
                           ((lambda (_ctx145819_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx145819_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e145816_)
                           '#f))))))
          (raise (make-syntax-error
                  _message145809_
                  (cons _stx145810_ _details145811_)
                  _ctx145821_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx145795_ _expression?145796_)
        (gx#eval-syntax* (gx#core-expand__% _stx145795_ _expression?145796_))))
    (define gx#eval-syntax__0
      (lambda (_stx145801_)
        (let ((_expression?145803_ '#f))
          (gx#eval-syntax__% _stx145801_ _expression?145803_))))
    (define gx#eval-syntax
      (lambda _g150800_
        (let ((_g150799_ (##length _g150800_)))
          (cond ((##fx= _g150799_ 1)
                 (apply (lambda (_stx145801_) (gx#eval-syntax__0 _stx145801_))
                        _g150800_))
                ((##fx= _g150799_ 2)
                 (apply (lambda (_stx145805_ _expression?145806_)
                          (gx#eval-syntax__% _stx145805_ _expression?145806_))
                        _g150800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g150800_))))))
    (define gx#eval-syntax*
      (lambda (_stx145792_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx145792_))))
    (define gx#core-expand__%
      (lambda (_stx145779_ _expression?145780_)
        (if _expression?145780_
            (gx#core-expand-expression _stx145779_)
            (gx#core-expand-top _stx145779_))))
    (define gx#core-expand__0
      (lambda (_stx145785_)
        (let ((_expression?145787_ '#f))
          (gx#core-expand__% _stx145785_ _expression?145787_))))
    (define gx#core-expand
      (lambda _g150802_
        (let ((_g150801_ (##length _g150802_)))
          (cond ((##fx= _g150801_ 1)
                 (apply (lambda (_stx145785_) (gx#core-expand__0 _stx145785_))
                        _g150802_))
                ((##fx= _g150801_ 2)
                 (apply (lambda (_stx145789_ _expression?145790_)
                          (gx#core-expand__% _stx145789_ _expression?145790_))
                        _g150802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g150802_))))))
    (define gx#core-expand-top
      (lambda (_stx145746_)
        (let* ((_stx145748_ (gx#core-expand*__0 _stx145746_))
               (_e145749145756_ _stx145748_)
               (_E145751145760_
                (lambda () (gx#core-expand-expression _stx145748_)))
               (_E145750145774_
                (lambda ()
                  (if (gx#stx-pair? _e145749145756_)
                      (let ((_e145752145764_ (gx#syntax-e _e145749145756_)))
                        (let ((_hd145753145767_ (##car _e145752145764_))
                              (_tl145754145769_ (##cdr _e145752145764_)))
                          (let ((_form145772_ _hd145753145767_))
                            (if (gx#core-bound-identifier?__0 _form145772_)
                                _stx145748_
                                (_E145751145760_)))))
                      (_E145751145760_)))))
          (_E145750145774_))))
    (define gx#core-expand-expression
      (lambda (_stx145693_)
        (letrec ((_sealed-expression?145695_
                  (lambda (_hd145716_)
                    (if (gx#sealed-syntax? _hd145716_)
                        (let* ((_e145717145724_ _hd145716_)
                               (_E145719145728_ (lambda () '#f))
                               (_E145718145742_
                                (lambda ()
                                  (if (gx#stx-pair? _e145717145724_)
                                      (let ((_e145720145732_
                                             (gx#syntax-e _e145717145724_)))
                                        (let ((_hd145721145735_
                                               (##car _e145720145732_))
                                              (_tl145722145737_
                                               (##cdr _e145720145732_)))
                                          (let ((_form145740_
                                                 _hd145721145735_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form145740_
                                                 gx#expression-form-binding?)
                                                (_E145719145728_)))))
                                      (_E145719145728_)))))
                          (_E145718145742_))
                        '#f)))
                 (_illegal-expression145696_
                  (lambda (_hd145714_ . _g150803_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx145693_
                     _hd145714_)))
                 (_expand-e145697_
                  (lambda (_form145709_ _hd145710_)
                    (let ((_bind145712_
                           (if (##structure-instance-of?
                                _form145709_
                                'gx#binding::t)
                               _form145709_
                               (gx#resolve-identifier__0 _form145709_))))
                      (if (gx#core-expander-binding? _bind145712_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind145712_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd145710_
                            (gx#stx-source _stx145693_)))
                          (if (##structure-direct-instance-of?
                               _bind145712_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind145712_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd145710_
                                 (gx#stx-source _stx145693_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx145693_
                               _form145709_)))))))
          (let ((_hd145699_ (gx#core-expand-head _stx145693_)))
            (if (_sealed-expression?145695_ _hd145699_)
                _hd145699_
                (if (gx#stx-pair? _hd145699_)
                    (let* ((_form145701_ (gx#stx-car _hd145699_))
                           (_bind145703_
                            (if (gx#identifier? _form145701_)
                                (gx#resolve-identifier__0 _form145701_)
                                '#f)))
                      (if (or (not _bind145703_)
                              (not (gx#core-expander-binding? _bind145703_)))
                          (_expand-e145697_ '%%app (cons '%%app _hd145699_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind145703_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd145699_
                               _illegal-expression145696_)
                              (if (gx#expression-form-binding? _bind145703_)
                                  (_expand-e145697_ _bind145703_ _hd145699_)
                                  (if (gx#direct-special-form-binding?
                                       _bind145703_)
                                      (gx#core-expand-expression
                                       (_expand-e145697_
                                        _bind145703_
                                        _hd145699_))
                                      (_illegal-expression145696_
                                       _hd145699_))))))
                    (if (gx#core-bound-identifier?__0 _hd145699_)
                        (_illegal-expression145696_ _hd145699_)
                        (if (gx#identifier? _hd145699_)
                            (_expand-e145697_
                             '%%ref
                             (cons '%%ref (cons _hd145699_ '())))
                            (if (gx#stx-datum? _hd145699_)
                                (_expand-e145697_
                                 '%#quote
                                 (cons '%#quote (cons _hd145699_ '())))
                                (_illegal-expression145696_
                                 _hd145699_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx145688_)
        (call-with-parameters
         (lambda ()
           (let ((_stx145691_ (gx#core-expand-expression _stx145688_)))
             (values _stx145691_ (gx#eval-syntax* _stx145691_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx145669_ _stop?145670_)
        (let _lp145672_ ((_stx145674_ _stx145669_))
          (if (_stop?145670_ _stx145674_)
              _stx145674_
              (let ((_rstx145676_ (gx#core-expand1 _stx145674_)))
                (if (eq? _stx145674_ _rstx145676_)
                    _stx145674_
                    (_lp145672_ _rstx145676_)))))))
    (define gx#core-expand*__0
      (lambda (_stx145681_)
        (let ((_stop?145683_ false))
          (gx#core-expand*__% _stx145681_ _stop?145683_))))
    (define gx#core-expand*
      (lambda _g150805_
        (let ((_g150804_ (##length _g150805_)))
          (cond ((##fx= _g150804_ 1)
                 (apply (lambda (_stx145681_) (gx#core-expand*__0 _stx145681_))
                        _g150805_))
                ((##fx= _g150804_ 2)
                 (apply (lambda (_stx145685_ _stop?145686_)
                          (gx#core-expand*__% _stx145685_ _stop?145686_))
                        _g150805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g150805_))))))
    (define gx#core-expand1
      (lambda (_stx145625_)
        (letrec ((_step145627_
                  (lambda (_hd145664_)
                    (let ((_bind145666_ (gx#resolve-identifier__0 _hd145664_)))
                      (if (##structure-instance-of?
                           _bind145666_
                           'gx#runtime-binding::t)
                          _stx145625_
                          (if (##structure-direct-instance-of?
                               _bind145666_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind145666_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx145625_)
                              (if (not _bind145666_)
                                  _stx145625_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx145625_))))))))
          (let* ((_e145628145636_ _stx145625_)
                 (_E145634145640_ (lambda () _stx145625_))
                 (_E145630145646_
                  (lambda ()
                    (let ((_hd145644_ _e145628145636_))
                      (if (gx#identifier? _hd145644_)
                          (_step145627_ _hd145644_)
                          (_E145634145640_)))))
                 (_E145629145660_
                  (lambda ()
                    (if (gx#stx-pair? _e145628145636_)
                        (let ((_e145631145650_ (gx#syntax-e _e145628145636_)))
                          (let ((_hd145632145653_ (##car _e145631145650_))
                                (_tl145633145655_ (##cdr _e145631145650_)))
                            (let ((_hd145658_ _hd145632145653_))
                              (if (gx#identifier? _hd145658_)
                                  (_step145627_ _hd145658_)
                                  (_E145630145646_)))))
                        (_E145630145646_)))))
            (_E145629145660_)))))
    (define gx#core-expand-head
      (lambda (_stx145591_)
        (letrec ((_stop?145593_
                  (lambda (_stx145595_)
                    (let* ((_e145596145603_ _stx145595_)
                           (_E145598145607_ (lambda () '#f))
                           (_E145597145621_
                            (lambda ()
                              (if (gx#stx-pair? _e145596145603_)
                                  (let ((_e145599145611_
                                         (gx#syntax-e _e145596145603_)))
                                    (let ((_hd145600145614_
                                           (##car _e145599145611_))
                                          (_tl145601145616_
                                           (##cdr _e145599145611_)))
                                      (let ((_hd145619_ _hd145600145614_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd145619_)
                                            (_E145598145607_)))))
                                  (_E145598145607_)))))
                      (_E145597145621_)))))
          (gx#core-expand*__% _stx145591_ _stop?145593_))))
    (define gx#core-expand-block__%
      (lambda (_stx145397_
               _expand-special145398_
               _begin-form145399_
               _expand-e145400_)
        (letrec ((_expand-splice145402_
                  (lambda (_hd145565_ _body145566_ _rest145567_ _r145568_)
                    (if (gx#stx-list? _body145566_)
                        (_K145406_
                         (gx#stx-foldr cons _rest145567_ _body145566_)
                         _r145568_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx145397_
                         _hd145565_))))
                 (_expand-cond-expand145403_
                  (lambda (_hd145561_ _rest145562_ _r145563_)
                    (_K145406_
                     (cons (gx#core-expand-cond-expand% _hd145561_)
                           _rest145562_)
                     _r145563_)))
                 (_expand-include145404_
                  (lambda (_hd145510_ _rest145511_ _r145512_)
                    (let* ((_e145513145523_ _hd145510_)
                           (_E145515145527_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e145513145523_)))
                           (_E145514145557_
                            (lambda ()
                              (if (gx#stx-pair? _e145513145523_)
                                  (let ((_e145516145531_
                                         (gx#syntax-e _e145513145523_)))
                                    (let ((_hd145517145534_
                                           (##car _e145516145531_))
                                          (_tl145518145536_
                                           (##cdr _e145516145531_)))
                                      (if (gx#stx-pair? _tl145518145536_)
                                          (let ((_e145519145539_
                                                 (gx#syntax-e
                                                  _tl145518145536_)))
                                            (let ((_hd145520145542_
                                                   (##car _e145519145539_))
                                                  (_tl145521145544_
                                                   (##cdr _e145519145539_)))
                                              (let ((_path145547_
                                                     _hd145520145542_))
                                                (if (gx#stx-null?
                                                     _tl145521145544_)
                                                    (if (gx#stx-string?
                                                         _path145547_)
                                                        (let* ((_rpath145549_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path145547_
                         (gx#stx-source _hd145510_)))
                       (_block145551_
                        (gx#core-expand-include%__% _hd145510_ _rpath145549_))
                       (_rbody145554_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block145551_
                            _expand-special145398_
                            '#f
                            _expand-e145400_))
                         gx#current-expander-path
                         (cons _rpath145549_ (gx#current-expander-path)))))
                  (_K145406_
                   _rest145511_
                   (foldr1 cons _r145512_ _rbody145554_)))
                (_E145515145527_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E145515145527_)))))
                                          (_E145515145527_))))
                                  (_E145515145527_)))))
                      (_E145514145557_))))
                 (_expand-expression145405_
                  (lambda (_hd145506_ _rest145507_ _r145508_)
                    (_K145406_
                     _rest145507_
                     (cons (_expand-e145400_ _hd145506_) _r145508_))))
                 (_K145406_
                  (lambda (_rest145436_ _r145437_)
                    (let* ((_e145438145445_ _rest145436_)
                           (_E145440145449_
                            (lambda ()
                              (if _begin-form145399_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form145399_
                                    (reverse _r145437_))
                                   (gx#stx-source _stx145397_))
                                  _r145437_)))
                           (_E145439145502_
                            (lambda ()
                              (if (gx#stx-pair? _e145438145445_)
                                  (let ((_e145441145453_
                                         (gx#syntax-e _e145438145445_)))
                                    (let ((_hd145442145456_
                                           (##car _e145441145453_))
                                          (_tl145443145458_
                                           (##cdr _e145441145453_)))
                                      (let* ((_hd145461_ _hd145442145456_)
                                             (_rest145463_ _tl145443145458_))
                                        (if '#t
                                            (let* ((_hd145465_
                                                    (gx#core-expand-head
                                                     _hd145461_))
                                                   (_e145466145473_ _hd145465_)
                                                   (_E145468145477_
                                                    (lambda ()
                                                      (_expand-expression145405_
                                                       _hd145465_
                                                       _rest145463_
                                                       _r145437_)))
                                                   (_E145467145498_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e145466145473_)
                                                          (let ((_e145469145481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e145466145473_)))
                    (let ((_hd145470145484_ (##car _e145469145481_))
                          (_tl145471145486_ (##cdr _e145469145481_)))
                      (let* ((_form145489_ _hd145470145484_)
                             (_body145491_ _tl145471145486_))
                        (if '#t
                            (let ((_bind145493_
                                   (if (gx#identifier? _form145489_)
                                       (gx#resolve-identifier__0 _form145489_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind145493_)
                                  (let ((_$e145495_
                                         (##unchecked-structure-ref
                                          _bind145493_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e145495_)
                                        (_expand-splice145402_
                                         _hd145465_
                                         _body145491_
                                         _rest145463_
                                         _r145437_)
                                        (if (eq? '%#cond-expand _$e145495_)
                                            (_expand-cond-expand145403_
                                             _hd145465_
                                             _rest145463_
                                             _r145437_)
                                            (if (eq? '%#include _$e145495_)
                                                (_expand-include145404_
                                                 _hd145465_
                                                 _rest145463_
                                                 _r145437_)
                                                (_expand-special145398_
                                                 _hd145465_
                                                 _K145406_
                                                 _rest145463_
                                                 _r145437_)))))
                                  (_expand-expression145405_
                                   _hd145465_
                                   _rest145463_
                                   _r145437_)))
                            (_E145468145477_)))))
                  (_E145468145477_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E145467145498_))
                                            (_E145440145449_)))))
                                  (_E145440145449_)))))
                      (_E145439145502_)))))
          (let* ((_e145407145414_ _stx145397_)
                 (_E145409145418_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145407145414_)))
                 (_E145408145432_
                  (lambda ()
                    (if (gx#stx-pair? _e145407145414_)
                        (let ((_e145410145422_ (gx#syntax-e _e145407145414_)))
                          (let ((_hd145411145425_ (##car _e145410145422_))
                                (_tl145412145427_ (##cdr _e145410145422_)))
                            (let ((_body145430_ _tl145412145427_))
                              (if (gx#stx-list? _body145430_)
                                  (_K145406_ _body145430_ '())
                                  (_E145409145418_)))))
                        (_E145409145418_)))))
            (_E145408145432_)))))
    (define gx#core-expand-block__0
      (lambda (_stx145573_ _expand-special145574_)
        (let* ((_begin-form145576_ '%#begin)
               (_expand-e145578_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx145573_
           _expand-special145574_
           _begin-form145576_
           _expand-e145578_))))
    (define gx#core-expand-block__1
      (lambda (_stx145580_ _expand-special145581_ _begin-form145582_)
        (let ((_expand-e145584_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx145580_
           _expand-special145581_
           _begin-form145582_
           _expand-e145584_))))
    (define gx#core-expand-block
      (lambda _g150807_
        (let ((_g150806_ (##length _g150807_)))
          (cond ((##fx= _g150806_ 2)
                 (apply (lambda (_stx145573_ _expand-special145574_)
                          (gx#core-expand-block__0
                           _stx145573_
                           _expand-special145574_))
                        _g150807_))
                ((##fx= _g150806_ 3)
                 (apply (lambda (_stx145580_
                                 _expand-special145581_
                                 _begin-form145582_)
                          (gx#core-expand-block__1
                           _stx145580_
                           _expand-special145581_
                           _begin-form145582_))
                        _g150807_))
                ((##fx= _g150806_ 4)
                 (apply (lambda (_stx145586_
                                 _expand-special145587_
                                 _begin-form145588_
                                 _expand-e145589_)
                          (gx#core-expand-block__%
                           _stx145586_
                           _expand-special145587_
                           _begin-form145588_
                           _expand-e145589_))
                        _g150807_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g150807_))))))
    (define gx#core-expand-block*
      (lambda (_stx145345_ _expand-special145346_)
        (let* ((_g145347145358_
                (gx#core-expand-block__1
                 _stx145345_
                 _expand-special145346_
                 '#f))
               (_E145351145362_
                (lambda () (error '"No clause matching" _g145347145358_))))
          (let ((_K145356145393_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx145345_)))
                (_K145353145379_ (lambda (_expr145377_) _expr145377_))
                (_K145352145368_
                 (lambda (_body145366_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body145366_))
                    (gx#stx-source _stx145345_)))))
            (let ((_try-match145349145389_
                   (lambda ()
                     (if (##pair? _g145347145358_)
                         (let ((_tl145355145384_ (##cdr _g145347145358_))
                               (_hd145354145382_ (##car _g145347145358_)))
                           (if (##null? _tl145355145384_)
                               (let ((_expr145387_ _hd145354145382_))
                                 (_K145353145379_ _expr145387_))
                               (let ((_body145371_ _g145347145358_))
                                 (_K145352145368_ _body145371_))))
                         (let ((_body145371_ _g145347145358_))
                           (_K145352145368_ _body145371_))))))
              (if (##null? _g145347145358_)
                  (_K145356145393_)
                  (_try-match145349145389_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx145173_)
        (letrec ((_satisfied?145175_
                  (lambda (_condition145273_)
                    (let* ((_e145274145289_ _condition145273_)
                           (_E145284145293_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e145274145289_)))
                           (_E145277145312_
                            (lambda ()
                              (if (gx#stx-pair? _e145274145289_)
                                  (let ((_e145285145297_
                                         (gx#syntax-e _e145274145289_)))
                                    (let ((_hd145286145300_
                                           (##car _e145285145297_))
                                          (_tl145287145302_
                                           (##cdr _e145285145297_)))
                                      (let* ((_combinator145305_
                                              _hd145286145300_)
                                             (_body145307_ _tl145287145302_))
                                        (if (gx#stx-list? _body145307_)
                                            (let ((_$e145309_
                                                   (gx#stx-e
                                                    _combinator145305_)))
                                              (if (eq? 'not _$e145309_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?145175_
                                                        _body145307_))
                                                  (if (eq? 'and _$e145309_)
                                                      (gx#stx-andmap
                                                       _satisfied?145175_
                                                       _body145307_)
                                                      (if (eq? 'or _$e145309_)
                                                          (gx#stx-ormap
                                                           _satisfied?145175_
                                                           _body145307_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e145309_)
                      (gx#stx-andmap gx#core-resolve-identifier _body145307_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx145173_
                       _combinator145305_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E145284145293_)))))
                                  (_E145284145293_))))
                           (_E145276145335_
                            (lambda ()
                              (if (gx#stx-pair? _e145274145289_)
                                  (let ((_e145278145316_
                                         (gx#syntax-e _e145274145289_)))
                                    (let ((_hd145279145319_
                                           (##car _e145278145316_))
                                          (_tl145280145321_
                                           (##cdr _e145278145316_)))
                                      (if (and (gx#identifier?
                                                _hd145279145319_)
                                               (gx#core-identifier=?
                                                _hd145279145319_
                                                'unquote))
                                          (if (gx#stx-pair? _tl145280145321_)
                                              (let ((_e145281145324_
                                                     (gx#syntax-e
                                                      _tl145280145321_)))
                                                (let ((_hd145282145327_
                                                       (##car _e145281145324_))
                                                      (_tl145283145329_
                                                       (##cdr _e145281145324_)))
                                                  (let ((_expr145332_
                                                         _hd145282145327_))
                                                    (if (gx#stx-null?
                                                         _tl145283145329_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr145332_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E145277145312_))
                (_E145277145312_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E145277145312_))
                                          (_E145277145312_))))
                                  (_E145277145312_))))
                           (_E145275145341_
                            (lambda ()
                              (let ((_id145339_ _e145274145289_))
                                (if (gx#identifier? _id145339_)
                                    (gx#core-bound-identifier?__%
                                     _id145339_
                                     gx#feature-binding?)
                                    (_E145276145335_))))))
                      (_E145275145341_))))
                 (_loop145176_
                  (lambda (_rest145206_)
                    (let* ((_e145207145215_ _rest145206_)
                           (_E145213145219_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e145207145215_)))
                           (_E145209145223_
                            (lambda ()
                              (if (gx#stx-null? _e145207145215_)
                                  (if '#t '() (_E145213145219_))
                                  (_E145213145219_))))
                           (_E145208145269_
                            (lambda ()
                              (if (gx#stx-pair? _e145207145215_)
                                  (let ((_e145210145227_
                                         (gx#syntax-e _e145207145215_)))
                                    (let ((_hd145211145230_
                                           (##car _e145210145227_))
                                          (_tl145212145232_
                                           (##cdr _e145210145227_)))
                                      (let* ((_hd145235_ _hd145211145230_)
                                             (_rest145237_ _tl145212145232_))
                                        (if '#t
                                            (let* ((_e145238145245_ _hd145235_)
                                                   (_E145240145249_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e145238145245_)))
                                                   (_E145239145265_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e145238145245_)
                                                          (let ((_e145241145253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e145238145245_)))
                    (let ((_hd145242145256_ (##car _e145241145253_))
                          (_tl145243145258_ (##cdr _e145241145253_)))
                      (let* ((_condition145261_ _hd145242145256_)
                             (_body145263_ _tl145243145258_))
                        (if '#t
                            (if (gx#stx-eq? _condition145261_ 'else)
                                (if (gx#stx-null? _rest145237_)
                                    _body145263_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx145173_
                                     _hd145235_))
                                (if (_satisfied?145175_ _condition145261_)
                                    _body145263_
                                    (_loop145176_ _rest145237_)))
                            (_E145240145249_)))))
                  (_E145240145249_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E145239145265_))
                                            (_E145209145223_)))))
                                  (_E145209145223_)))))
                      (_E145208145269_)))))
          (let* ((_e145177145184_ _stx145173_)
                 (_E145179145188_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145177145184_)))
                 (_E145178145202_
                  (lambda ()
                    (if (gx#stx-pair? _e145177145184_)
                        (let ((_e145180145192_ (gx#syntax-e _e145177145184_)))
                          (let ((_hd145181145195_ (##car _e145180145192_))
                                (_tl145182145197_ (##cdr _e145180145192_)))
                            (let ((_clauses145200_ _tl145182145197_))
                              (if (gx#stx-list? _clauses145200_)
                                  (gx#core-cons
                                   'begin
                                   (_loop145176_ _clauses145200_))
                                  (_E145179145188_)))))
                        (_E145179145188_)))))
            (_E145178145202_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx145116_ _rpath145117_)
        (let* ((_e145118145128_ _stx145116_)
               (_E145120145132_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145118145128_)))
               (_E145119145159_
                (lambda ()
                  (if (gx#stx-pair? _e145118145128_)
                      (let ((_e145121145136_ (gx#syntax-e _e145118145128_)))
                        (let ((_hd145122145139_ (##car _e145121145136_))
                              (_tl145123145141_ (##cdr _e145121145136_)))
                          (if (gx#stx-pair? _tl145123145141_)
                              (let ((_e145124145144_
                                     (gx#syntax-e _tl145123145141_)))
                                (let ((_hd145125145147_
                                       (##car _e145124145144_))
                                      (_tl145126145149_
                                       (##cdr _e145124145144_)))
                                  (let ((_path145152_ _hd145125145147_))
                                    (if (gx#stx-null? _tl145126145149_)
                                        (if (gx#stx-string? _path145152_)
                                            (let ((_rpath145157_
                                                   (let ((_$e145154_
                                                          _rpath145117_))
                                                     (if _$e145154_
                                                         _$e145154_
                                                         (gx#core-resolve-path__%
                                                          _path145152_
                                                          (gx#stx-source
                                                           _stx145116_))))))
                                              (if (member _rpath145157_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx145116_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath145157_))
                                                    (gx#stx-source
                                                     _stx145116_)))))
                                            (_E145120145132_))
                                        (_E145120145132_)))))
                              (_E145120145132_))))
                      (_E145120145132_)))))
          (_E145119145159_))))
    (define gx#core-expand-include%__0
      (lambda (_stx145166_)
        (let ((_rpath145168_ '#f))
          (gx#core-expand-include%__% _stx145166_ _rpath145168_))))
    (define gx#core-expand-include%
      (lambda _g150809_
        (let ((_g150808_ (##length _g150809_)))
          (cond ((##fx= _g150808_ 1)
                 (apply (lambda (_stx145166_)
                          (gx#core-expand-include%__0 _stx145166_))
                        _g150809_))
                ((##fx= _g150808_ 2)
                 (apply (lambda (_stx145170_ _rpath145171_)
                          (gx#core-expand-include%__%
                           _stx145170_
                           _rpath145171_))
                        _g150809_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g150809_))))))
    (define gx#core-apply-expander__%
      (lambda (_K145085_ _stx145086_ _method145087_)
        (if (procedure? _K145085_)
            (let ((_$e145089_ (gx#stx-source _stx145086_)))
              (if _$e145089_
                  ((lambda (_g145091145093_)
                     (gx#stx-wrap-source
                      (_K145085_ _stx145086_)
                      _g145091145093_))
                   _$e145089_)
                  (_K145085_ _stx145086_)))
            (let ((_$e145096_ (bound-method-ref _K145085_ _method145087_)))
              (if _$e145096_
                  ((lambda (_g145098145100_)
                     (gx#core-apply-expander__%
                      _g145098145100_
                      _stx145086_
                      _method145087_))
                   _$e145096_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx145086_
                   _method145087_))))))
    (define gx#core-apply-expander__0
      (lambda (_K145106_ _stx145107_)
        (let ((_method145109_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K145106_ _stx145107_ _method145109_))))
    (define gx#core-apply-expander
      (lambda _g150811_
        (let ((_g150810_ (##length _g150811_)))
          (cond ((##fx= _g150810_ 2)
                 (apply (lambda (_K145106_ _stx145107_)
                          (gx#core-apply-expander__0 _K145106_ _stx145107_))
                        _g150811_))
                ((##fx= _g150810_ 3)
                 (apply (lambda (_K145111_ _stx145112_ _method145113_)
                          (gx#core-apply-expander__%
                           _K145111_
                           _stx145112_
                           _method145113_))
                        _g150811_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g150811_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self145081_ _stx145082_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx145082_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self144934_ _stx144935_)
        (let* ((_self144936144942_ _self144934_)
               (_E144938144946_
                (lambda () (error '"No clause matching" _self144936144942_)))
               (_K144939144951_
                (lambda (_K144949_)
                  (gx#core-apply-expander__0 _K144949_ _stx144935_))))
          (if (##structure-instance-of? _self144936144942_ 'gx#core-macro::t)
              (let* ((_e144940144954_
                      (##unchecked-structure-ref
                       _self144936144942_
                       '1
                       gx#expander::t
                       '#f))
                     (_K144957_ _e144940144954_))
                (_K144939144951_ _K144957_))
              (_E144938144946_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self144787_ _stx144788_)
        (if (gx#sealed-syntax? _stx144788_)
            _stx144788_
            (let* ((_self144789144795_ _self144787_)
                   (_E144791144799_
                    (lambda ()
                      (error '"No clause matching" _self144789144795_)))
                   (_K144792144804_
                    (lambda (_K144802_)
                      (gx#core-apply-expander__0 _K144802_ _stx144788_))))
              (if (##structure-instance-of?
                   _self144789144795_
                   'gx#core-expander::t)
                  (let* ((_e144793144807_
                          (##unchecked-structure-ref
                           _self144789144795_
                           '1
                           gx#expander::t
                           '#f))
                         (_K144810_ _e144793144807_))
                    (_K144792144804_ _K144810_))
                  (_E144791144799_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self144649_ _stx144650_ _top?144651_)
        (if (_top?144651_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self144649_ _stx144650_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx144650_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self144656_ _stx144657_)
        (let ((_top?144659_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self144656_
           _stx144657_
           _top?144659_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g150813_
        (let ((_g150812_ (##length _g150813_)))
          (cond ((##fx= _g150812_ 2)
                 (apply (lambda (_self144656_ _stx144657_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self144656_
                           _stx144657_))
                        _g150813_))
                ((##fx= _g150812_ 3)
                 (apply (lambda (_self144661_ _stx144662_ _top?144663_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self144661_
                           _stx144662_
                           _top?144663_))
                        _g150813_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g150813_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self144523_ _stx144524_)
        (gx#top-special-form::apply-macro-expander__%
         _self144523_
         _stx144524_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self144348_ _stx144349_)
        (let* ((_self144350144356_ _self144348_)
               (_E144352144360_
                (lambda () (error '"No clause matching" _self144350144356_)))
               (_K144353144393_
                (lambda (_id144363_)
                  (let* ((_e144364144371_ _stx144349_)
                         (_E144366144375_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e144364144371_)))
                         (_E144365144389_
                          (lambda ()
                            (if (gx#stx-pair? _e144364144371_)
                                (let ((_e144367144379_
                                       (gx#syntax-e _e144364144371_)))
                                  (let ((_hd144368144382_
                                         (##car _e144367144379_))
                                        (_tl144369144384_
                                         (##cdr _e144367144379_)))
                                    (let ((_body144387_ _tl144369144384_))
                                      (if '#t
                                          (gx#core-cons
                                           _id144363_
                                           _body144387_)
                                          (_E144366144375_)))))
                                (_E144366144375_)))))
                    (_E144365144389_)))))
          (if (##structure-instance-of?
               _self144350144356_
               'gx#rename-macro-expander::t)
              (let* ((_e144354144396_
                      (##unchecked-structure-ref
                       _self144350144356_
                       '1
                       gx#expander::t
                       '#f))
                     (_id144399_ _e144354144396_))
                (_K144353144393_ _id144399_))
              (_E144352144360_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self144174_ _stx144175_ _method144176_)
        (let* ((_self144177144185_ _self144174_)
               (_E144179144189_
                (lambda () (error '"No clause matching" _self144177144185_)))
               (_K144180144196_
                (lambda (_phi144192_ _ctx144193_ _K144194_)
                  (gx#core-apply-user-macro
                   _K144194_
                   _stx144175_
                   _ctx144193_
                   _phi144192_
                   _method144176_))))
          (if (##structure-instance-of?
               _self144177144185_
               'gx#macro-expander::t)
              (let* ((_e144181144199_
                      (##unchecked-structure-ref
                       _self144177144185_
                       '1
                       gx#expander::t
                       '#f))
                     (_K144202_ _e144181144199_)
                     (_e144182144204_
                      (##unchecked-structure-ref
                       _self144177144185_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx144207_ _e144182144204_)
                     (_e144183144209_
                      (##unchecked-structure-ref
                       _self144177144185_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi144212_ _e144183144209_))
                (_K144180144196_ _phi144212_ _ctx144207_ _K144202_))
              (_E144179144189_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self144217_ _stx144218_)
        (let ((_method144220_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self144217_
           _stx144218_
           _method144220_))))
    (define gx#core-apply-user-expander
      (lambda _g150815_
        (let ((_g150814_ (##length _g150815_)))
          (cond ((##fx= _g150814_ 2)
                 (apply (lambda (_self144217_ _stx144218_)
                          (gx#core-apply-user-expander__0
                           _self144217_
                           _stx144218_))
                        _g150815_))
                ((##fx= _g150814_ 3)
                 (apply (lambda (_self144222_ _stx144223_ _method144224_)
                          (gx#core-apply-user-expander__%
                           _self144222_
                           _stx144223_
                           _method144224_))
                        _g150815_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g150815_))))))
    (define gx#core-apply-user-macro
      (lambda (_K144164_ _stx144165_ _ctx144166_ _phi144167_ _method144168_)
        (let ((_mark144170_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx144166_
                _phi144167_
                _stx144165_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K144164_
               (gx#stx-apply-mark _stx144165_ _mark144170_)
               _method144168_)
              _mark144170_))
           gx#current-expander-marks
           (cons _mark144170_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx144016_ _phi144017_ _ctx144018_)
        (let _lp144020_ ((_bind144022_
                          (gx#core-resolve-identifier__%
                           _stx144016_
                           _phi144017_
                           _ctx144018_)))
          (if (##structure-direct-instance-of?
               _bind144022_
               'gx#import-binding::t)
              (_lp144020_
               (##unchecked-structure-ref
                _bind144022_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind144022_
                   'gx#alias-binding::t)
                  (_lp144020_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind144022_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi144017_
                    _ctx144018_))
                  _bind144022_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx144027_)
        (let* ((_phi144029_ (gx#current-expander-phi))
               (_ctx144031_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx144027_ _phi144029_ _ctx144031_))))
    (define gx#resolve-identifier__1
      (lambda (_stx144033_ _phi144034_)
        (let ((_ctx144036_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx144033_ _phi144034_ _ctx144036_))))
    (define gx#resolve-identifier
      (lambda _g150817_
        (let ((_g150816_ (##length _g150817_)))
          (cond ((##fx= _g150816_ 1)
                 (apply (lambda (_stx144027_)
                          (gx#resolve-identifier__0 _stx144027_))
                        _g150817_))
                ((##fx= _g150816_ 2)
                 (apply (lambda (_stx144033_ _phi144034_)
                          (gx#resolve-identifier__1 _stx144033_ _phi144034_))
                        _g150817_))
                ((##fx= _g150816_ 3)
                 (apply (lambda (_stx144038_ _phi144039_ _ctx144040_)
                          (gx#resolve-identifier__%
                           _stx144038_
                           _phi144039_
                           _ctx144040_))
                        _g150817_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g150817_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx143974_ _val143975_ _rebind?143976_ _phi143977_ _ctx143978_)
        (let ((_rebind?143980_
               (if (not _rebind?143976_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?143976_) _rebind?143976_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx143974_)
           _val143975_
           _rebind?143980_
           _phi143977_
           _ctx143978_))))
    (define gx#bind-identifier!__0
      (lambda (_stx143985_ _val143986_)
        (let* ((_rebind?143988_ '#f)
               (_phi143990_ (gx#current-expander-phi))
               (_ctx143992_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx143985_
           _val143986_
           _rebind?143988_
           _phi143990_
           _ctx143992_))))
    (define gx#bind-identifier!__1
      (lambda (_stx143994_ _val143995_ _rebind?143996_)
        (let* ((_phi143998_ (gx#current-expander-phi))
               (_ctx144000_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx143994_
           _val143995_
           _rebind?143996_
           _phi143998_
           _ctx144000_))))
    (define gx#bind-identifier!__2
      (lambda (_stx144002_ _val144003_ _rebind?144004_ _phi144005_)
        (let ((_ctx144007_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx144002_
           _val144003_
           _rebind?144004_
           _phi144005_
           _ctx144007_))))
    (define gx#bind-identifier!
      (lambda _g150819_
        (let ((_g150818_ (##length _g150819_)))
          (cond ((##fx= _g150818_ 2)
                 (apply (lambda (_stx143985_ _val143986_)
                          (gx#bind-identifier!__0 _stx143985_ _val143986_))
                        _g150819_))
                ((##fx= _g150818_ 3)
                 (apply (lambda (_stx143994_ _val143995_ _rebind?143996_)
                          (gx#bind-identifier!__1
                           _stx143994_
                           _val143995_
                           _rebind?143996_))
                        _g150819_))
                ((##fx= _g150818_ 4)
                 (apply (lambda (_stx144002_
                                 _val144003_
                                 _rebind?144004_
                                 _phi144005_)
                          (gx#bind-identifier!__2
                           _stx144002_
                           _val144003_
                           _rebind?144004_
                           _phi144005_))
                        _g150819_))
                ((##fx= _g150818_ 5)
                 (apply (lambda (_stx144009_
                                 _val144010_
                                 _rebind?144011_
                                 _phi144012_
                                 _ctx144013_)
                          (gx#bind-identifier!__%
                           _stx144009_
                           _val144010_
                           _rebind?144011_
                           _phi144012_
                           _ctx144013_))
                        _g150819_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g150819_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx143946_ _phi143947_ _ctx143948_)
        (let _lp143950_ ((_e143952_ _stx143946_)
                         (_marks143953_ (gx#current-expander-marks)))
          (if (symbol? _e143952_)
              (gx#core-resolve-binding
               _e143952_
               _phi143947_
               _phi143947_
               _ctx143948_
               (reverse _marks143953_))
              (if (gx#identifier-quote? _e143952_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e143952_ '1 gx#AST::t '#f)
                   _phi143947_
                   '0
                   (##unchecked-structure-ref
                    _e143952_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e143952_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e143952_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e143952_ '1 gx#AST::t '#f)
                       _phi143947_
                       _phi143947_
                       _ctx143948_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e143952_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks143953_))
                      (if (##structure-direct-instance-of?
                           _e143952_
                           'gx#syntax-wrap::t)
                          (_lp143950_
                           (##unchecked-structure-ref
                            _e143952_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e143952_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks143953_))
                          (if (##structure-instance-of?
                               _e143952_
                               'gerbil#AST::t)
                              (_lp143950_
                               (##unchecked-structure-ref
                                _e143952_
                                '1
                                gx#AST::t
                                '#f)
                               _marks143953_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx143946_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx143958_)
        (let* ((_phi143960_ (gx#current-expander-phi))
               (_ctx143962_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx143958_
           _phi143960_
           _ctx143962_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx143964_ _phi143965_)
        (let ((_ctx143967_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx143964_
           _phi143965_
           _ctx143967_))))
    (define gx#core-resolve-identifier
      (lambda _g150821_
        (let ((_g150820_ (##length _g150821_)))
          (cond ((##fx= _g150820_ 1)
                 (apply (lambda (_stx143958_)
                          (gx#core-resolve-identifier__0 _stx143958_))
                        _g150821_))
                ((##fx= _g150820_ 2)
                 (apply (lambda (_stx143964_ _phi143965_)
                          (gx#core-resolve-identifier__1
                           _stx143964_
                           _phi143965_))
                        _g150821_))
                ((##fx= _g150820_ 3)
                 (apply (lambda (_stx143969_ _phi143970_ _ctx143971_)
                          (gx#core-resolve-identifier__%
                           _stx143969_
                           _phi143970_
                           _ctx143971_))
                        _g150821_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g150821_))))))
    (define gx#core-resolve-binding
      (lambda (_id143859_
               _phi143860_
               _src-phi143861_
               _ctx143862_
               _marks143863_)
        (letrec ((_resolve143865_
                  (lambda (_ctx143933_ _src-phi143934_ _key143935_)
                    (let _lp143937_ ((_ctx143939_
                                      (gx#core-context-shift
                                       _ctx143933_
                                       _phi143860_))
                                     (_dphi143940_
                                      (fx- _phi143860_ _src-phi143934_)))
                      (let ((_$e143942_
                             (gx#core-context-resolve
                              _ctx143939_
                              _key143935_)))
                        (if _$e143942_
                            (values _$e143942_)
                            (if (fxzero? _dphi143940_)
                                '#f
                                (if (fxpositive? _dphi143940_)
                                    (_lp143937_
                                     (gx#core-context-shift _ctx143939_ '-1)
                                     (fx- _dphi143940_ '1))
                                    (_lp143937_
                                     (gx#core-context-shift _ctx143939_ '1)
                                     (fx+ _dphi143940_ '1))))))))))
          (let _lp143867_ ((_ctx143869_ _ctx143862_)
                           (_src-phi143870_ _src-phi143861_)
                           (_rest143871_ _marks143863_))
            (let* ((_rest143872143880_ _rest143871_)
                   (_else143874143888_
                    (lambda ()
                      (_resolve143865_
                       _ctx143869_
                       _src-phi143870_
                       _id143859_)))
                   (_K143876143921_
                    (lambda (_rest143891_ _hd143892_)
                      (let* ((_hd143893143899_ _hd143892_)
                             (_E143895143903_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd143893143899_)))
                             (_K143896143913_
                              (lambda (_subst143906_)
                                (let ((_$e143910_
                                       (let ((_key143908_
                                              (if _subst143906_
                                                  (table-ref
                                                   _subst143906_
                                                   _id143859_
                                                   '#f)
                                                  '#f)))
                                         (if _key143908_
                                             (_resolve143865_
                                              _ctx143869_
                                              _src-phi143870_
                                              _key143908_)
                                             '#f))))
                                  (if _$e143910_
                                      _$e143910_
                                      (_lp143867_
                                       (##unchecked-structure-ref
                                        _hd143892_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd143892_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest143891_))))))
                        (if (##structure-instance-of?
                             _hd143893143899_
                             'gx#expander-mark::t)
                            (let* ((_e143897143916_
                                    (##unchecked-structure-ref
                                     _hd143893143899_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst143919_ _e143897143916_))
                              (_K143896143913_ _subst143919_))
                            (_E143895143903_))))))
              (if (##pair? _rest143872143880_)
                  (let ((_hd143877143924_ (##car _rest143872143880_))
                        (_tl143878143926_ (##cdr _rest143872143880_)))
                    (let* ((_hd143929_ _hd143877143924_)
                           (_rest143931_ _tl143878143926_))
                      (_K143876143921_ _rest143931_ _hd143929_)))
                  (_else143874143888_)))))))
    (define gx#core-bind!__%
      (lambda (_key143735_ _val143736_ _rebind?143737_ _phi143738_ _ctx143739_)
        (letrec ((_update-binding143741_
                  (lambda (_xval143812_)
                    (if (or (_rebind?143737_
                             _ctx143739_
                             _xval143812_
                             _val143736_)
                            (and (##structure-direct-instance-of?
                                  _xval143812_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval143812_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val143736_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val143736_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval143812_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val143736_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val143736_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval143812_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val143736_
                        (if (and (##structure-direct-instance-of?
                                  _val143736_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val143736_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval143812_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val143736_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval143812_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval143812_
                            (if (and (##structure-direct-instance-of?
                                      _val143736_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval143812_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key143735_
                                 (cons (##unchecked-structure-ref
                                        _val143736_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val143736_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval143812_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval143812_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval143812_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval143812_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key143735_
                                 _val143736_
                                 _xval143812_))))))
                 (_gensubst143742_
                  (lambda (_subst143807_ _id143808_)
                    (let ((_eid143810_
                           (gensym (if (uninterned-symbol? _id143808_)
                                       '%
                                       _id143808_))))
                      (table-set! _subst143807_ _id143808_ _eid143810_)
                      _eid143810_)))
                 (_subst!143743_
                  (lambda (_key143745_)
                    (let* ((_key143746143754_ _key143745_)
                           (_else143748143762_ (lambda () _key143745_))
                           (_K143750143795_
                            (lambda (_mark143765_ _id143766_)
                              (let* ((_mark143767143773_ _mark143765_)
                                     (_E143769143777_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark143767143773_)))
                                     (_K143770143787_
                                      (lambda (_subst143780_)
                                        (if (not _subst143780_)
                                            (let ((_subst143782_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark143765_
                                               _subst143782_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst143742_
                                               _subst143782_
                                               _id143766_))
                                            (let ((_$e143784_
                                                   (table-ref
                                                    _subst143780_
                                                    _id143766_
                                                    '#f)))
                                              (if _$e143784_
                                                  (values _$e143784_)
                                                  (_gensubst143742_
                                                   _subst143780_
                                                   _id143766_)))))))
                                (if (##structure-instance-of?
                                     _mark143767143773_
                                     'gx#expander-mark::t)
                                    (let* ((_e143771143790_
                                            (##unchecked-structure-ref
                                             _mark143767143773_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst143793_ _e143771143790_))
                                      (_K143770143787_ _subst143793_))
                                    (_E143769143777_))))))
                      (if (##pair? _key143746143754_)
                          (let ((_hd143751143798_ (##car _key143746143754_))
                                (_tl143752143800_ (##cdr _key143746143754_)))
                            (let* ((_id143803_ _hd143751143798_)
                                   (_mark143805_ _tl143752143800_))
                              (_K143750143795_ _mark143805_ _id143803_)))
                          (_else143748143762_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx143739_ _phi143738_)
           (_subst!143743_ _key143735_)
           _val143736_
           _update-binding143741_))))
    (define gx#core-bind!__0
      (lambda (_key143829_ _val143830_)
        (let* ((_rebind?143832_ false)
               (_phi143834_ (gx#current-expander-phi))
               (_ctx143836_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key143829_
           _val143830_
           _rebind?143832_
           _phi143834_
           _ctx143836_))))
    (define gx#core-bind!__1
      (lambda (_key143838_ _val143839_ _rebind?143840_)
        (let* ((_phi143842_ (gx#current-expander-phi))
               (_ctx143844_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key143838_
           _val143839_
           _rebind?143840_
           _phi143842_
           _ctx143844_))))
    (define gx#core-bind!__2
      (lambda (_key143846_ _val143847_ _rebind?143848_ _phi143849_)
        (let ((_ctx143851_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key143846_
           _val143847_
           _rebind?143848_
           _phi143849_
           _ctx143851_))))
    (define gx#core-bind!
      (lambda _g150823_
        (let ((_g150822_ (##length _g150823_)))
          (cond ((##fx= _g150822_ 2)
                 (apply (lambda (_key143829_ _val143830_)
                          (gx#core-bind!__0 _key143829_ _val143830_))
                        _g150823_))
                ((##fx= _g150822_ 3)
                 (apply (lambda (_key143838_ _val143839_ _rebind?143840_)
                          (gx#core-bind!__1
                           _key143838_
                           _val143839_
                           _rebind?143840_))
                        _g150823_))
                ((##fx= _g150822_ 4)
                 (apply (lambda (_key143846_
                                 _val143847_
                                 _rebind?143848_
                                 _phi143849_)
                          (gx#core-bind!__2
                           _key143846_
                           _val143847_
                           _rebind?143848_
                           _phi143849_))
                        _g150823_))
                ((##fx= _g150822_ 5)
                 (apply (lambda (_key143853_
                                 _val143854_
                                 _rebind?143855_
                                 _phi143856_
                                 _ctx143857_)
                          (gx#core-bind!__%
                           _key143853_
                           _val143854_
                           _rebind?143855_
                           _phi143856_
                           _ctx143857_))
                        _g150823_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g150823_))))))
    (define gx#core-identifier-key
      (lambda (_stx143669_)
        (if (symbol? _stx143669_)
            (let* ((_g143670143678_ (gx#current-expander-marks))
                   (_else143672143686_ (lambda () _stx143669_))
                   (_K143674143691_
                    (lambda (_hd143689_) (cons _stx143669_ _hd143689_))))
              (if (##pair? _g143670143678_)
                  (let* ((_hd143675143694_ (##car _g143670143678_))
                         (_hd143697_ _hd143675143694_))
                    (_K143674143691_ _hd143697_))
                  (_else143672143686_)))
            (if (gx#identifier? _stx143669_)
                (let* ((_id143699_ (gx#syntax-local-unwrap _stx143669_))
                       (_eid143701_ (gx#stx-e _id143699_))
                       (_marks143703_ (gx#stx-identifier-marks* _id143699_)))
                  (let* ((_marks143705143713_ _marks143703_)
                         (_else143707143721_ (lambda () _eid143701_))
                         (_K143709143726_
                          (lambda (_hd143724_) (cons _eid143701_ _hd143724_))))
                    (if (##pair? _marks143705143713_)
                        (let* ((_hd143710143729_ (##car _marks143705143713_))
                               (_hd143732_ _hd143710143729_))
                          (_K143709143726_ _hd143732_))
                        (_else143707143721_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx143669_)))))
    (define gx#core-context-shift
      (lambda (_ctx143614_ _phi143615_)
        (letrec ((_make-phi143617_
                  (lambda (_super143667_)
                    (let ((__obj150794
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj150794
                       (gensym 'phi)
                       _super143667_)
                      __obj150794)))
                 (_make-phi/up143618_
                  (lambda (_ctx143662_ _super143663_)
                    (let ((_ctx+1143665_ (_make-phi143617_ _super143663_)))
                      (##unchecked-structure-set!
                       _ctx143662_
                       _ctx+1143665_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1143665_
                       _ctx143662_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1143665_)))
                 (_make-phi/down143619_
                  (lambda (_ctx143657_ _super143658_)
                    (let ((_ctx-1143660_ (_make-phi143617_ _super143658_)))
                      (##unchecked-structure-set!
                       _ctx-1143660_
                       _ctx143657_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx143657_
                       _ctx-1143660_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1143660_)))
                 (_shift143620_
                  (lambda (_ctx143641_
                           _delta143642_
                           _make-delta-context143643_
                           _phi143644_
                           _K143645_)
                    (let ((_$e143647_
                           (##unchecked-structure-ref
                            _ctx143641_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e143647_
                          ((lambda (_super143650_)
                             (let* ((_super143652_
                                     (_K143645_ _super143650_ _delta143642_))
                                    (_ctx+d143654_
                                     (_make-delta-context143643_
                                      _ctx143641_
                                      _super143652_)))
                               (_K143645_
                                _ctx+d143654_
                                (fx- _phi143644_ _delta143642_))))
                           _$e143647_)
                          (error '"Bad context" _ctx143641_))))))
          (let _K143622_ ((_ctx143624_ _ctx143614_) (_phi143625_ _phi143615_))
            (if (fxzero? _phi143625_)
                _ctx143624_
                (if (fx> (##vector-length _ctx143624_) '3)
                    (if (fxpositive? _phi143625_)
                        (let ((_$e143627_
                               (##unchecked-structure-ref
                                _ctx143624_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e143627_
                              ((lambda (_g143629143631_)
                                 (_K143622_
                                  _g143629143631_
                                  (fx- _phi143625_ '1)))
                               _$e143627_)
                              (_shift143620_
                               _ctx143624_
                               '1
                               _make-phi/up143618_
                               _phi143625_
                               _K143622_)))
                        (let ((_$e143634_
                               (##unchecked-structure-ref
                                _ctx143624_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e143634_
                              ((lambda (_g143636143638_)
                                 (_K143622_
                                  _g143636143638_
                                  (fx+ _phi143625_ '1)))
                               _$e143634_)
                              (_shift143620_
                               _ctx143624_
                               '-1
                               _make-phi/down143619_
                               _phi143625_
                               _K143622_))))
                    _ctx143624_))))))
    (define gx#core-context-get
      (lambda (_ctx143611_ _key143612_)
        (table-ref
         (##unchecked-structure-ref _ctx143611_ '2 gx#expander-context::t '#f)
         _key143612_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx143607_ _key143608_ _val143609_)
        (table-set!
         (##unchecked-structure-ref _ctx143607_ '2 gx#expander-context::t '#f)
         _key143608_
         _val143609_)))
    (define gx#core-context-resolve
      (lambda (_ctx143594_ _key143595_)
        (let _lp143597_ ((_ctx143599_ _ctx143594_))
          (let ((_$e143601_ (gx#core-context-get _ctx143599_ _key143595_)))
            (if _$e143601_
                (values _$e143601_)
                (let ((_$e143604_
                       (if (fx> (##vector-length _ctx143599_) '3)
                           (##unchecked-structure-ref
                            _ctx143599_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e143604_ (_lp143597_ _$e143604_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx143584_ _key143585_ _val143586_ _rebind143587_)
        (let ((_$e143589_ (gx#core-context-get _ctx143584_ _key143585_)))
          (if _$e143589_
              ((lambda (_xval143592_)
                 (gx#core-context-put!
                  _ctx143584_
                  _key143585_
                  (_rebind143587_ _xval143592_)))
               _$e143589_)
              (gx#core-context-put! _ctx143584_ _key143585_ _val143586_)))))
    (define gx#core-context-top__%
      (lambda (_ctx143562_ _stop?143563_)
        (let _lp143565_ ((_ctx143567_ _ctx143562_))
          (if (_stop?143563_ _ctx143567_)
              _ctx143567_
              (if (##structure-instance-of? _ctx143567_ 'gx#context-phi::t)
                  (_lp143565_
                   (##unchecked-structure-ref
                    _ctx143567_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx143573_ (gx#current-expander-context))
               (_stop?143575_ gx#top-context?))
          (gx#core-context-top__% _ctx143573_ _stop?143575_))))
    (define gx#core-context-top__1
      (lambda (_ctx143577_)
        (let ((_stop?143579_ gx#top-context?))
          (gx#core-context-top__% _ctx143577_ _stop?143579_))))
    (define gx#core-context-top
      (lambda _g150825_
        (let ((_g150824_ (##length _g150825_)))
          (cond ((##fx= _g150824_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g150825_))
                ((##fx= _g150824_ 1)
                 (apply (lambda (_ctx143577_)
                          (gx#core-context-top__1 _ctx143577_))
                        _g150825_))
                ((##fx= _g150824_ 2)
                 (apply (lambda (_ctx143581_ _stop?143582_)
                          (gx#core-context-top__% _ctx143581_ _stop?143582_))
                        _g150825_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g150825_))))))
    (define gx#core-context-root__%
      (lambda (_ctx143547_)
        (let _lp143549_ ((_ctx143551_ _ctx143547_))
          (if (##structure-instance-of? _ctx143551_ 'gx#context-phi::t)
              (_lp143549_
               (##unchecked-structure-ref
                _ctx143551_
                '3
                gx#phi-context::t
                '#f))
              _ctx143551_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx143557_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx143557_))))
    (define gx#core-context-root
      (lambda _g150827_
        (let ((_g150826_ (##length _g150827_)))
          (cond ((##fx= _g150826_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g150827_))
                ((##fx= _g150826_ 1)
                 (apply (lambda (_ctx143559_)
                          (gx#core-context-root__% _ctx143559_))
                        _g150827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g150827_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx143528_ . __143525143529_)
        (let ((_$e143532_ (gx#current-expander-allow-rebind?)))
          (if _$e143532_
              _$e143532_
              (if (##structure-instance-of? _ctx143528_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx143528_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx143528_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx143539_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx143539_))))
    (define gx#core-context-rebind?
      (lambda _g150829_
        (let ((_g150828_ (##length _g150829_)))
          (cond ((##fx= _g150828_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g150829_))
                ((##fx= _g150828_ 1)
                 (apply (lambda (_ctx143541_)
                          (gx#core-context-rebind?__% _ctx143541_))
                        _g150829_))
                ((##fx>= _g150828_ 1)
                 (apply gx#core-context-rebind?__% _g150829_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g150829_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx143511_)
        (let ((_$e143513_ (gx#core-context-top__1 _ctx143511_)))
          (if _$e143513_
              ((lambda (_ctx143516_)
                 (if (##structure-instance-of?
                      _ctx143516_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx143516_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e143513_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx143522_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx143522_))))
    (define gx#core-context-namespace
      (lambda _g150831_
        (let ((_g150830_ (##length _g150831_)))
          (cond ((##fx= _g150830_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g150831_))
                ((##fx= _g150830_ 1)
                 (apply (lambda (_ctx143524_)
                          (gx#core-context-namespace__% _ctx143524_))
                        _g150831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g150831_))))))
    (define gx#expander-binding?__%
      (lambda (_bind143497_ _is?143498_)
        (if (##structure-direct-instance-of?
             _bind143497_
             'gx#syntax-binding::t)
            (_is?143498_
             (##unchecked-structure-ref
              _bind143497_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind143503_)
        (let ((_is?143505_ gx#expander?))
          (gx#expander-binding?__% _bind143503_ _is?143505_))))
    (define gx#expander-binding?
      (lambda _g150833_
        (let ((_g150832_ (##length _g150833_)))
          (cond ((##fx= _g150832_ 1)
                 (apply (lambda (_bind143503_)
                          (gx#expander-binding?__0 _bind143503_))
                        _g150833_))
                ((##fx= _g150832_ 2)
                 (apply (lambda (_bind143507_ _is?143508_)
                          (gx#expander-binding?__% _bind143507_ _is?143508_))
                        _g150833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g150833_))))))
    (define gx#core-expander-binding?
      (lambda (_bind143494_)
        (gx#expander-binding?__% _bind143494_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind143492_)
        (gx#expander-binding?__% _bind143492_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind143486_)
        (letrec ((_direct-special-form?143488_
                  (lambda (_obj143490_)
                    (##structure-direct-instance-of?
                     _obj143490_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind143486_
           _direct-special-form?143488_))))
    (define gx#special-form-binding?
      (lambda (_bind143484_)
        (gx#expander-binding?__% _bind143484_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind143475_)
        (letrec ((_feature?143477_
                  (lambda (_e143479_)
                    (let ((_$e143481_
                           (##structure-instance-of?
                            _e143479_
                            'gx#feature-expander::t)))
                      (if _$e143481_
                          _$e143481_
                          (##structure-instance-of?
                           _e143479_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind143475_ _feature?143477_))))
    (define gx#private-feature-binding?
      (lambda (_bind143473_)
        (gx#expander-binding?__% _bind143473_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id143460_ _bound?143461_)
        (if (gx#identifier? _id143460_)
            (_bound?143461_ (gx#resolve-identifier__0 _id143460_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id143466_)
        (let ((_bound?143468_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id143466_ _bound?143468_))))
    (define gx#core-bound-identifier?
      (lambda _g150835_
        (let ((_g150834_ (##length _g150835_)))
          (cond ((##fx= _g150834_ 1)
                 (apply (lambda (_id143466_)
                          (gx#core-bound-identifier?__0 _id143466_))
                        _g150835_))
                ((##fx= _g150834_ 2)
                 (apply (lambda (_id143470_ _bound?143471_)
                          (gx#core-bound-identifier?__%
                           _id143470_
                           _bound?143471_))
                        _g150835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g150835_))))))
    (define gx#core-identifier=?
      (lambda (_x143450_ _y143451_)
        (letrec ((_y=?143453_
                  (lambda (_xid143457_)
                    ((if (list? _y143451_) memq eq?) _xid143457_ _y143451_))))
          (let ((_bind143455_ (gx#resolve-identifier__0 _x143450_)))
            (if (##structure-instance-of? _bind143455_ 'gx#binding::t)
                (_y=?143453_
                 (##unchecked-structure-ref _bind143455_ '1 gx#binding::t '#f))
                (_y=?143453_ (gx#stx-e _x143450_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e143448_)
        (if (interned-symbol? _e143448_)
            (string-index (symbol->string _e143448_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx143403_ _src143404_ _ctx143405_ _marks143406_)
        (if (##structure? _stx143403_)
            (let ((_$e143408_ (gx#sealed-syntax-unwrap _stx143403_)))
              (if _$e143408_
                  (values _$e143408_)
                  (if (gx#identifier? _stx143403_)
                      (let ((_id143411_
                             (gx#stx-unwrap__% _stx143403_ _marks143406_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id143411_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e143413_
                                (##unchecked-structure-ref
                                 _id143411_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e143413_ _$e143413_ _src143404_))
                         _ctx143405_
                         (##unchecked-structure-ref
                          _id143411_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx143403_)
                       (let ((_$e143416_ (gx#stx-source _stx143403_)))
                         (if _$e143416_ _$e143416_ _src143404_))
                       _ctx143405_
                       (reverse _marks143406_)))))
            (##structure
             gx#syntax-quote::t
             _stx143403_
             _src143404_
             _ctx143405_
             (reverse _marks143406_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx143422_)
        (let* ((_src143424_ '#f)
               (_ctx143426_ (gx#current-expander-context))
               (_marks143428_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx143422_
           _src143424_
           _ctx143426_
           _marks143428_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx143430_ _src143431_)
        (let* ((_ctx143433_ (gx#current-expander-context))
               (_marks143435_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx143430_
           _src143431_
           _ctx143433_
           _marks143435_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx143437_ _src143438_ _ctx143439_)
        (let ((_marks143441_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx143437_
           _src143438_
           _ctx143439_
           _marks143441_))))
    (define gx#core-quote-syntax
      (lambda _g150837_
        (let ((_g150836_ (##length _g150837_)))
          (cond ((##fx= _g150836_ 1)
                 (apply (lambda (_stx143422_)
                          (gx#core-quote-syntax__0 _stx143422_))
                        _g150837_))
                ((##fx= _g150836_ 2)
                 (apply (lambda (_stx143430_ _src143431_)
                          (gx#core-quote-syntax__1 _stx143430_ _src143431_))
                        _g150837_))
                ((##fx= _g150836_ 3)
                 (apply (lambda (_stx143437_ _src143438_ _ctx143439_)
                          (gx#core-quote-syntax__2
                           _stx143437_
                           _src143438_
                           _ctx143439_))
                        _g150837_))
                ((##fx= _g150836_ 4)
                 (apply (lambda (_stx143443_
                                 _src143444_
                                 _ctx143445_
                                 _marks143446_)
                          (gx#core-quote-syntax__%
                           _stx143443_
                           _src143444_
                           _ctx143445_
                           _marks143446_))
                        _g150837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g150837_))))))
    (define gx#core-cons
      (lambda (_hd143399_ _tl143400_)
        (cons (gx#core-quote-syntax__0 _hd143399_) _tl143400_)))
    (define gx#core-list
      (lambda (_hd143396_ . _rest143397_)
        (cons (gx#core-quote-syntax__0 _hd143396_) _rest143397_)))
    (define gx#core-cons*
      (lambda (_hd143393_ . _rest143394_)
        (apply cons* (gx#core-quote-syntax__0 _hd143393_) _rest143394_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path143367_ _rel143368_)
        (let ((_path143380_ (gx#stx-e _stx-path143367_))
              (_reldir143381_
               (let _lp143370_ ((_relsrc143372_
                                 (let ((_$e143377_
                                        (gx#stx-source _stx-path143367_)))
                                   (if _$e143377_ _$e143377_ _rel143368_))))
                 (if (##structure-instance-of? _relsrc143372_ 'gerbil#AST::t)
                     (_lp143370_
                      (let ((_$e143374_ (gx#stx-source _relsrc143372_)))
                        (if _$e143374_ _$e143374_ (gx#stx-e _relsrc143372_))))
                     (if (source-location-path? _relsrc143372_)
                         (path-directory (source-location-path _relsrc143372_))
                         (if (string? _relsrc143372_)
                             (path-directory _relsrc143372_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path143380_ (path-normalize _reldir143381_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path143386_)
        (let ((_rel143388_ '#f))
          (gx#core-resolve-path__% _stx-path143386_ _rel143388_))))
    (define gx#core-resolve-path
      (lambda _g150839_
        (let ((_g150838_ (##length _g150839_)))
          (cond ((##fx= _g150838_ 1)
                 (apply (lambda (_stx-path143386_)
                          (gx#core-resolve-path__0 _stx-path143386_))
                        _g150839_))
                ((##fx= _g150838_ 2)
                 (apply (lambda (_stx-path143390_ _rel143391_)
                          (gx#core-resolve-path__%
                           _stx-path143390_
                           _rel143391_))
                        _g150839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g150839_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr143323_ _ctx143324_)
        (let* ((_repr143325143332_ _repr143323_)
               (_E143327143336_
                (lambda () (error '"No clause matching" _repr143325143332_)))
               (_K143328143344_
                (lambda (_subs143339_ _phi143340_)
                  (let ((_subst143342_
                         (if (not (null? _subs143339_))
                             (list->table _subs143339_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst143342_
                     _ctx143324_
                     _phi143340_
                     '#f)))))
          (if (##pair? _repr143325143332_)
              (let ((_hd143329143347_ (##car _repr143325143332_))
                    (_tl143330143349_ (##cdr _repr143325143332_)))
                (let* ((_phi143352_ _hd143329143347_)
                       (_subs143354_ _tl143330143349_))
                  (_K143328143344_ _subs143354_ _phi143352_)))
              (_E143327143336_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr143359_)
        (let ((_ctx143361_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr143359_ _ctx143361_))))
    (define gx#core-deserialize-mark
      (lambda _g150841_
        (let ((_g150840_ (##length _g150841_)))
          (cond ((##fx= _g150840_ 1)
                 (apply (lambda (_repr143359_)
                          (gx#core-deserialize-mark__0 _repr143359_))
                        _g150841_))
                ((##fx= _g150840_ 2)
                 (apply (lambda (_repr143363_ _ctx143364_)
                          (gx#core-deserialize-mark__%
                           _repr143363_
                           _ctx143364_))
                        _g150841_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g150841_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx143320_)
        (gx#stx-rewrap _stx143320_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx143318_)
        (gx#stx-unwrap__% _stx143318_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx143288_)
        (let* ((_g143289143297_ (gx#current-expander-marks))
               (_else143291143305_ (lambda () _stx143288_))
               (_K143293143310_
                (lambda (_hd143308_)
                  (gx#stx-apply-mark _stx143288_ _hd143308_))))
          (if (##pair? _g143289143297_)
              (let* ((_hd143294143313_ (##car _g143289143297_))
                     (_hd143316_ _hd143294143313_))
                (_K143293143310_ _hd143316_))
              (_else143291143305_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx143273_ _E143274_)
        (let ((_bind143276_ (gx#resolve-identifier__0 _stx143273_)))
          (if (##structure-direct-instance-of?
               _bind143276_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind143276_
               '4
               gx#syntax-binding::t
               '#f)
              (_E143274_ _stx143273_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx143281_)
        (let ((_E143283_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx143281_ _E143283_))))
    (define gx#syntax-local-e
      (lambda _g150843_
        (let ((_g150842_ (##length _g150843_)))
          (cond ((##fx= _g150842_ 1)
                 (apply (lambda (_stx143281_)
                          (gx#syntax-local-e__0 _stx143281_))
                        _g150843_))
                ((##fx= _g150842_ 2)
                 (apply (lambda (_stx143285_ _E143286_)
                          (gx#syntax-local-e__% _stx143285_ _E143286_))
                        _g150843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g150843_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx143257_ _E143258_)
        (let ((_e143260_ (gx#syntax-local-e__% _stx143257_ _E143258_)))
          (if (##structure-instance-of? _e143260_ 'gx#expander::t)
              (##structure-ref _e143260_ '1 gx#expander::t '#f)
              _e143260_))))
    (define gx#syntax-local-value__0
      (lambda (_stx143265_)
        (let ((_E143267_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx143265_ _E143267_))))
    (define gx#syntax-local-value
      (lambda _g150845_
        (let ((_g150844_ (##length _g150845_)))
          (cond ((##fx= _g150844_ 1)
                 (apply (lambda (_stx143265_)
                          (gx#syntax-local-value__0 _stx143265_))
                        _g150845_))
                ((##fx= _g150844_ 2)
                 (apply (lambda (_stx143269_ _E143270_)
                          (gx#syntax-local-value__% _stx143269_ _E143270_))
                        _g150845_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g150845_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx143254_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx143254_)))))
