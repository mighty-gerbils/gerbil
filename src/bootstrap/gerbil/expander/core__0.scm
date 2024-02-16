(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1708102802)
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
      (lambda _$args146190_
        (apply make-instance gx#expander-context::t _$args146190_)))
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
      (lambda _$args146187_
        (apply make-instance gx#root-context::t _$args146187_)))
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
      (lambda _$args146184_
        (apply make-instance gx#phi-context::t _$args146184_)))
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
      (lambda _$args146181_
        (apply make-instance gx#top-context::t _$args146181_)))
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
      (lambda _$args146178_
        (apply make-instance gx#module-context::t _$args146178_)))
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
      (lambda _$args146175_
        (apply make-instance gx#prelude-context::t _$args146175_)))
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
      (lambda _$args146172_
        (apply make-instance gx#local-context::t _$args146172_)))
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
      (lambda (_self146156_ _id146157_ _super146158_)
        (if (##fx< '3 (##structure-length _self146156_))
            (begin
              (##unchecked-structure-set!
               _self146156_
               _id146157_
               '1
               (##structure-type _self146156_)
               '#f)
              (##unchecked-structure-set!
               _self146156_
               (make-table 'test: eq?)
               '2
               (##structure-type _self146156_)
               '#f)
              (##unchecked-structure-set!
               _self146156_
               _super146158_
               '3
               (##structure-type _self146156_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self146156_
                   '3
                   (##vector-length _self146156_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self146163_ _id146164_)
        (let ((_super146166_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self146163_ _id146164_ _super146166_))))
    (define gx#phi-context:::init!
      (lambda _g150801_
        (let ((_g150800_ (##length _g150801_)))
          (cond ((##fx= _g150800_ 2)
                 (apply (lambda (_self146163_ _id146164_)
                          (gx#phi-context:::init!__0 _self146163_ _id146164_))
                        _g150801_))
                ((##fx= _g150800_ 3)
                 (apply (lambda (_self146168_ _id146169_ _super146170_)
                          (gx#phi-context:::init!__%
                           _self146168_
                           _id146169_
                           _super146170_))
                        _g150801_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g150801_))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self146020_ _super146021_)
        (if (##fx< '3 (##structure-length _self146020_))
            (begin
              (##unchecked-structure-set!
               _self146020_
               (gensym 'L)
               '1
               (##structure-type _self146020_)
               '#f)
              (##unchecked-structure-set!
               _self146020_
               (make-table 'test: eq?)
               '2
               (##structure-type _self146020_)
               '#f)
              (##unchecked-structure-set!
               _self146020_
               _super146021_
               '3
               (##structure-type _self146020_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self146020_
                   '3
                   (##vector-length _self146020_)))))
    (define gx#local-context:::init!__0
      (lambda (_self146026_)
        (let ((_super146028_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self146026_ _super146028_))))
    (define gx#local-context:::init!
      (lambda _g150803_
        (let ((_g150802_ (##length _g150803_)))
          (cond ((##fx= _g150802_ 1)
                 (apply (lambda (_self146026_)
                          (gx#local-context:::init!__0 _self146026_))
                        _g150803_))
                ((##fx= _g150802_ 2)
                 (apply (lambda (_self146030_ _super146031_)
                          (gx#local-context:::init!__%
                           _self146030_
                           _super146031_))
                        _g150803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g150803_))))))
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
      (lambda _$args145894_ (apply make-instance gx#binding::t _$args145894_)))
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
      (lambda _$args145891_
        (apply make-instance gx#runtime-binding::t _$args145891_)))
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
      (lambda _$args145888_
        (apply make-instance gx#local-binding::t _$args145888_)))
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
      (lambda _$args145885_
        (apply make-instance gx#top-binding::t _$args145885_)))
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
      (lambda _$args145882_
        (apply make-instance gx#module-binding::t _$args145882_)))
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
      (lambda _$args145879_
        (apply make-instance gx#extern-binding::t _$args145879_)))
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
      (lambda _$args145876_
        (apply make-instance gx#syntax-binding::t _$args145876_)))
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
      (lambda _$args145873_
        (apply make-instance gx#import-binding::t _$args145873_)))
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
      (lambda _$args145870_
        (apply make-instance gx#alias-binding::t _$args145870_)))
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
      (lambda _$args145867_
        (apply make-instance gx#expander::t _$args145867_)))
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
      (lambda _$args145864_
        (apply make-instance gx#core-expander::t _$args145864_)))
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
      (lambda _$args145861_
        (apply make-instance gx#expression-form::t _$args145861_)))
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
      (lambda _$args145858_
        (apply make-instance gx#special-form::t _$args145858_)))
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
      (lambda _$args145855_
        (apply make-instance gx#definition-form::t _$args145855_)))
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
      (lambda _$args145852_
        (apply make-instance gx#top-special-form::t _$args145852_)))
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
      (lambda _$args145849_
        (apply make-instance gx#module-special-form::t _$args145849_)))
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
      (lambda _$args145846_
        (apply make-instance gx#feature-expander::t _$args145846_)))
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
      (lambda _$args145843_
        (apply make-instance gx#private-feature-expander::t _$args145843_)))
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
      (lambda _$args145840_
        (apply make-instance gx#reserved-expander::t _$args145840_)))
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
      (lambda _$args145837_
        (apply make-instance gx#macro-expander::t _$args145837_)))
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
      (lambda _$args145834_
        (apply make-instance gx#rename-macro-expander::t _$args145834_)))
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
      (lambda _$args145831_
        (apply make-instance gx#user-expander::t _$args145831_)))
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
      (lambda _$args145828_
        (apply make-instance gx#expander-mark::t _$args145828_)))
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
      (lambda (_ctx145813_ _message145814_ _stx145815_ . _details145816_)
        (let ((_ctx145826_
               (let ((_$e145818_ _ctx145813_))
                 (if _$e145818_
                     _$e145818_
                     (let ((_$e145821_ (gx#core-context-top__0)))
                       (if _$e145821_
                           ((lambda (_ctx145824_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx145824_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e145821_)
                           '#f))))))
          (raise (make-syntax-error
                  _message145814_
                  (cons _stx145815_ _details145816_)
                  _ctx145826_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx145800_ _expression?145801_)
        (gx#eval-syntax* (gx#core-expand__% _stx145800_ _expression?145801_))))
    (define gx#eval-syntax__0
      (lambda (_stx145806_)
        (let ((_expression?145808_ '#f))
          (gx#eval-syntax__% _stx145806_ _expression?145808_))))
    (define gx#eval-syntax
      (lambda _g150805_
        (let ((_g150804_ (##length _g150805_)))
          (cond ((##fx= _g150804_ 1)
                 (apply (lambda (_stx145806_) (gx#eval-syntax__0 _stx145806_))
                        _g150805_))
                ((##fx= _g150804_ 2)
                 (apply (lambda (_stx145810_ _expression?145811_)
                          (gx#eval-syntax__% _stx145810_ _expression?145811_))
                        _g150805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g150805_))))))
    (define gx#eval-syntax*
      (lambda (_stx145797_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx145797_))))
    (define gx#core-expand__%
      (lambda (_stx145784_ _expression?145785_)
        (if _expression?145785_
            (gx#core-expand-expression _stx145784_)
            (gx#core-expand-top _stx145784_))))
    (define gx#core-expand__0
      (lambda (_stx145790_)
        (let ((_expression?145792_ '#f))
          (gx#core-expand__% _stx145790_ _expression?145792_))))
    (define gx#core-expand
      (lambda _g150807_
        (let ((_g150806_ (##length _g150807_)))
          (cond ((##fx= _g150806_ 1)
                 (apply (lambda (_stx145790_) (gx#core-expand__0 _stx145790_))
                        _g150807_))
                ((##fx= _g150806_ 2)
                 (apply (lambda (_stx145794_ _expression?145795_)
                          (gx#core-expand__% _stx145794_ _expression?145795_))
                        _g150807_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g150807_))))))
    (define gx#core-expand-top
      (lambda (_stx145751_)
        (let* ((_stx145753_ (gx#core-expand*__0 _stx145751_))
               (_e145754145761_ _stx145753_)
               (_E145756145765_
                (lambda () (gx#core-expand-expression _stx145753_)))
               (_E145755145779_
                (lambda ()
                  (if (gx#stx-pair? _e145754145761_)
                      (let ((_e145757145769_ (gx#syntax-e _e145754145761_)))
                        (let ((_hd145758145772_ (##car _e145757145769_))
                              (_tl145759145774_ (##cdr _e145757145769_)))
                          (let ((_form145777_ _hd145758145772_))
                            (if (gx#core-bound-identifier?__0 _form145777_)
                                _stx145753_
                                (_E145756145765_)))))
                      (_E145756145765_)))))
          (_E145755145779_))))
    (define gx#core-expand-expression
      (lambda (_stx145698_)
        (letrec ((_sealed-expression?145700_
                  (lambda (_hd145721_)
                    (if (gx#sealed-syntax? _hd145721_)
                        (let* ((_e145722145729_ _hd145721_)
                               (_E145724145733_ (lambda () '#f))
                               (_E145723145747_
                                (lambda ()
                                  (if (gx#stx-pair? _e145722145729_)
                                      (let ((_e145725145737_
                                             (gx#syntax-e _e145722145729_)))
                                        (let ((_hd145726145740_
                                               (##car _e145725145737_))
                                              (_tl145727145742_
                                               (##cdr _e145725145737_)))
                                          (let ((_form145745_
                                                 _hd145726145740_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form145745_
                                                 gx#expression-form-binding?)
                                                (_E145724145733_)))))
                                      (_E145724145733_)))))
                          (_E145723145747_))
                        '#f)))
                 (_illegal-expression145701_
                  (lambda (_hd145719_ . _g150808_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx145698_
                     _hd145719_)))
                 (_expand-e145702_
                  (lambda (_form145714_ _hd145715_)
                    (let ((_bind145717_
                           (if (##structure-instance-of?
                                _form145714_
                                'gx#binding::t)
                               _form145714_
                               (gx#resolve-identifier__0 _form145714_))))
                      (if (gx#core-expander-binding? _bind145717_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind145717_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd145715_
                            (gx#stx-source _stx145698_)))
                          (if (##structure-direct-instance-of?
                               _bind145717_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind145717_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd145715_
                                 (gx#stx-source _stx145698_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx145698_
                               _form145714_)))))))
          (let ((_hd145704_ (gx#core-expand-head _stx145698_)))
            (if (_sealed-expression?145700_ _hd145704_)
                _hd145704_
                (if (gx#stx-pair? _hd145704_)
                    (let* ((_form145706_ (gx#stx-car _hd145704_))
                           (_bind145708_
                            (if (gx#identifier? _form145706_)
                                (gx#resolve-identifier__0 _form145706_)
                                '#f)))
                      (if (or (not _bind145708_)
                              (not (gx#core-expander-binding? _bind145708_)))
                          (_expand-e145702_ '%%app (cons '%%app _hd145704_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind145708_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd145704_
                               _illegal-expression145701_)
                              (if (gx#expression-form-binding? _bind145708_)
                                  (_expand-e145702_ _bind145708_ _hd145704_)
                                  (if (gx#direct-special-form-binding?
                                       _bind145708_)
                                      (gx#core-expand-expression
                                       (_expand-e145702_
                                        _bind145708_
                                        _hd145704_))
                                      (_illegal-expression145701_
                                       _hd145704_))))))
                    (if (gx#core-bound-identifier?__0 _hd145704_)
                        (_illegal-expression145701_ _hd145704_)
                        (if (gx#identifier? _hd145704_)
                            (_expand-e145702_
                             '%%ref
                             (cons '%%ref (cons _hd145704_ '())))
                            (if (gx#stx-datum? _hd145704_)
                                (_expand-e145702_
                                 '%#quote
                                 (cons '%#quote (cons _hd145704_ '())))
                                (_illegal-expression145701_
                                 _hd145704_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx145693_)
        (call-with-parameters
         (lambda ()
           (let ((_stx145696_ (gx#core-expand-expression _stx145693_)))
             (values _stx145696_ (gx#eval-syntax* _stx145696_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx145674_ _stop?145675_)
        (let _lp145677_ ((_stx145679_ _stx145674_))
          (if (_stop?145675_ _stx145679_)
              _stx145679_
              (let ((_rstx145681_ (gx#core-expand1 _stx145679_)))
                (if (eq? _stx145679_ _rstx145681_)
                    _stx145679_
                    (_lp145677_ _rstx145681_)))))))
    (define gx#core-expand*__0
      (lambda (_stx145686_)
        (let ((_stop?145688_ false))
          (gx#core-expand*__% _stx145686_ _stop?145688_))))
    (define gx#core-expand*
      (lambda _g150810_
        (let ((_g150809_ (##length _g150810_)))
          (cond ((##fx= _g150809_ 1)
                 (apply (lambda (_stx145686_) (gx#core-expand*__0 _stx145686_))
                        _g150810_))
                ((##fx= _g150809_ 2)
                 (apply (lambda (_stx145690_ _stop?145691_)
                          (gx#core-expand*__% _stx145690_ _stop?145691_))
                        _g150810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g150810_))))))
    (define gx#core-expand1
      (lambda (_stx145630_)
        (letrec ((_step145632_
                  (lambda (_hd145669_)
                    (let ((_bind145671_ (gx#resolve-identifier__0 _hd145669_)))
                      (if (##structure-instance-of?
                           _bind145671_
                           'gx#runtime-binding::t)
                          _stx145630_
                          (if (##structure-direct-instance-of?
                               _bind145671_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind145671_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx145630_)
                              (if (not _bind145671_)
                                  _stx145630_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx145630_))))))))
          (let* ((_e145633145641_ _stx145630_)
                 (_E145639145645_ (lambda () _stx145630_))
                 (_E145635145651_
                  (lambda ()
                    (let ((_hd145649_ _e145633145641_))
                      (if (gx#identifier? _hd145649_)
                          (_step145632_ _hd145649_)
                          (_E145639145645_)))))
                 (_E145634145665_
                  (lambda ()
                    (if (gx#stx-pair? _e145633145641_)
                        (let ((_e145636145655_ (gx#syntax-e _e145633145641_)))
                          (let ((_hd145637145658_ (##car _e145636145655_))
                                (_tl145638145660_ (##cdr _e145636145655_)))
                            (let ((_hd145663_ _hd145637145658_))
                              (if (gx#identifier? _hd145663_)
                                  (_step145632_ _hd145663_)
                                  (_E145635145651_)))))
                        (_E145635145651_)))))
            (_E145634145665_)))))
    (define gx#core-expand-head
      (lambda (_stx145596_)
        (letrec ((_stop?145598_
                  (lambda (_stx145600_)
                    (let* ((_e145601145608_ _stx145600_)
                           (_E145603145612_ (lambda () '#f))
                           (_E145602145626_
                            (lambda ()
                              (if (gx#stx-pair? _e145601145608_)
                                  (let ((_e145604145616_
                                         (gx#syntax-e _e145601145608_)))
                                    (let ((_hd145605145619_
                                           (##car _e145604145616_))
                                          (_tl145606145621_
                                           (##cdr _e145604145616_)))
                                      (let ((_hd145624_ _hd145605145619_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd145624_)
                                            (_E145603145612_)))))
                                  (_E145603145612_)))))
                      (_E145602145626_)))))
          (gx#core-expand*__% _stx145596_ _stop?145598_))))
    (define gx#core-expand-block__%
      (lambda (_stx145402_
               _expand-special145403_
               _begin-form145404_
               _expand-e145405_)
        (letrec ((_expand-splice145407_
                  (lambda (_hd145570_ _body145571_ _rest145572_ _r145573_)
                    (if (gx#stx-list? _body145571_)
                        (_K145411_
                         (gx#stx-foldr cons _rest145572_ _body145571_)
                         _r145573_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx145402_
                         _hd145570_))))
                 (_expand-cond-expand145408_
                  (lambda (_hd145566_ _rest145567_ _r145568_)
                    (_K145411_
                     (cons (gx#core-expand-cond-expand% _hd145566_)
                           _rest145567_)
                     _r145568_)))
                 (_expand-include145409_
                  (lambda (_hd145515_ _rest145516_ _r145517_)
                    (let* ((_e145518145528_ _hd145515_)
                           (_E145520145532_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e145518145528_)))
                           (_E145519145562_
                            (lambda ()
                              (if (gx#stx-pair? _e145518145528_)
                                  (let ((_e145521145536_
                                         (gx#syntax-e _e145518145528_)))
                                    (let ((_hd145522145539_
                                           (##car _e145521145536_))
                                          (_tl145523145541_
                                           (##cdr _e145521145536_)))
                                      (if (gx#stx-pair? _tl145523145541_)
                                          (let ((_e145524145544_
                                                 (gx#syntax-e
                                                  _tl145523145541_)))
                                            (let ((_hd145525145547_
                                                   (##car _e145524145544_))
                                                  (_tl145526145549_
                                                   (##cdr _e145524145544_)))
                                              (let ((_path145552_
                                                     _hd145525145547_))
                                                (if (gx#stx-null?
                                                     _tl145526145549_)
                                                    (if (gx#stx-string?
                                                         _path145552_)
                                                        (let* ((_rpath145554_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path145552_
                         (gx#stx-source _hd145515_)))
                       (_block145556_
                        (gx#core-expand-include%__% _hd145515_ _rpath145554_))
                       (_rbody145559_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block145556_
                            _expand-special145403_
                            '#f
                            _expand-e145405_))
                         gx#current-expander-path
                         (cons _rpath145554_ (gx#current-expander-path)))))
                  (_K145411_
                   _rest145516_
                   (foldr1 cons _r145517_ _rbody145559_)))
                (_E145520145532_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E145520145532_)))))
                                          (_E145520145532_))))
                                  (_E145520145532_)))))
                      (_E145519145562_))))
                 (_expand-expression145410_
                  (lambda (_hd145511_ _rest145512_ _r145513_)
                    (_K145411_
                     _rest145512_
                     (cons (_expand-e145405_ _hd145511_) _r145513_))))
                 (_K145411_
                  (lambda (_rest145441_ _r145442_)
                    (let* ((_e145443145450_ _rest145441_)
                           (_E145445145454_
                            (lambda ()
                              (if _begin-form145404_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form145404_
                                    (reverse _r145442_))
                                   (gx#stx-source _stx145402_))
                                  _r145442_)))
                           (_E145444145507_
                            (lambda ()
                              (if (gx#stx-pair? _e145443145450_)
                                  (let ((_e145446145458_
                                         (gx#syntax-e _e145443145450_)))
                                    (let ((_hd145447145461_
                                           (##car _e145446145458_))
                                          (_tl145448145463_
                                           (##cdr _e145446145458_)))
                                      (let* ((_hd145466_ _hd145447145461_)
                                             (_rest145468_ _tl145448145463_))
                                        (if '#t
                                            (let* ((_hd145470_
                                                    (gx#core-expand-head
                                                     _hd145466_))
                                                   (_e145471145478_ _hd145470_)
                                                   (_E145473145482_
                                                    (lambda ()
                                                      (_expand-expression145410_
                                                       _hd145470_
                                                       _rest145468_
                                                       _r145442_)))
                                                   (_E145472145503_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e145471145478_)
                                                          (let ((_e145474145486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e145471145478_)))
                    (let ((_hd145475145489_ (##car _e145474145486_))
                          (_tl145476145491_ (##cdr _e145474145486_)))
                      (let* ((_form145494_ _hd145475145489_)
                             (_body145496_ _tl145476145491_))
                        (if '#t
                            (let ((_bind145498_
                                   (if (gx#identifier? _form145494_)
                                       (gx#resolve-identifier__0 _form145494_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind145498_)
                                  (let ((_$e145500_
                                         (##unchecked-structure-ref
                                          _bind145498_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e145500_)
                                        (_expand-splice145407_
                                         _hd145470_
                                         _body145496_
                                         _rest145468_
                                         _r145442_)
                                        (if (eq? '%#cond-expand _$e145500_)
                                            (_expand-cond-expand145408_
                                             _hd145470_
                                             _rest145468_
                                             _r145442_)
                                            (if (eq? '%#include _$e145500_)
                                                (_expand-include145409_
                                                 _hd145470_
                                                 _rest145468_
                                                 _r145442_)
                                                (_expand-special145403_
                                                 _hd145470_
                                                 _K145411_
                                                 _rest145468_
                                                 _r145442_)))))
                                  (_expand-expression145410_
                                   _hd145470_
                                   _rest145468_
                                   _r145442_)))
                            (_E145473145482_)))))
                  (_E145473145482_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E145472145503_))
                                            (_E145445145454_)))))
                                  (_E145445145454_)))))
                      (_E145444145507_)))))
          (let* ((_e145412145419_ _stx145402_)
                 (_E145414145423_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145412145419_)))
                 (_E145413145437_
                  (lambda ()
                    (if (gx#stx-pair? _e145412145419_)
                        (let ((_e145415145427_ (gx#syntax-e _e145412145419_)))
                          (let ((_hd145416145430_ (##car _e145415145427_))
                                (_tl145417145432_ (##cdr _e145415145427_)))
                            (let ((_body145435_ _tl145417145432_))
                              (if (gx#stx-list? _body145435_)
                                  (_K145411_ _body145435_ '())
                                  (_E145414145423_)))))
                        (_E145414145423_)))))
            (_E145413145437_)))))
    (define gx#core-expand-block__0
      (lambda (_stx145578_ _expand-special145579_)
        (let* ((_begin-form145581_ '%#begin)
               (_expand-e145583_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx145578_
           _expand-special145579_
           _begin-form145581_
           _expand-e145583_))))
    (define gx#core-expand-block__1
      (lambda (_stx145585_ _expand-special145586_ _begin-form145587_)
        (let ((_expand-e145589_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx145585_
           _expand-special145586_
           _begin-form145587_
           _expand-e145589_))))
    (define gx#core-expand-block
      (lambda _g150812_
        (let ((_g150811_ (##length _g150812_)))
          (cond ((##fx= _g150811_ 2)
                 (apply (lambda (_stx145578_ _expand-special145579_)
                          (gx#core-expand-block__0
                           _stx145578_
                           _expand-special145579_))
                        _g150812_))
                ((##fx= _g150811_ 3)
                 (apply (lambda (_stx145585_
                                 _expand-special145586_
                                 _begin-form145587_)
                          (gx#core-expand-block__1
                           _stx145585_
                           _expand-special145586_
                           _begin-form145587_))
                        _g150812_))
                ((##fx= _g150811_ 4)
                 (apply (lambda (_stx145591_
                                 _expand-special145592_
                                 _begin-form145593_
                                 _expand-e145594_)
                          (gx#core-expand-block__%
                           _stx145591_
                           _expand-special145592_
                           _begin-form145593_
                           _expand-e145594_))
                        _g150812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g150812_))))))
    (define gx#core-expand-block*
      (lambda (_stx145350_ _expand-special145351_)
        (let* ((_g145352145363_
                (gx#core-expand-block__1
                 _stx145350_
                 _expand-special145351_
                 '#f))
               (_E145356145367_
                (lambda () (error '"No clause matching" _g145352145363_))))
          (let ((_K145361145398_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx145350_)))
                (_K145358145384_ (lambda (_expr145382_) _expr145382_))
                (_K145357145373_
                 (lambda (_body145371_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body145371_))
                    (gx#stx-source _stx145350_)))))
            (let ((_try-match145354145394_
                   (lambda ()
                     (if (##pair? _g145352145363_)
                         (let ((_tl145360145389_ (##cdr _g145352145363_))
                               (_hd145359145387_ (##car _g145352145363_)))
                           (if (##null? _tl145360145389_)
                               (let ((_expr145392_ _hd145359145387_))
                                 (_K145358145384_ _expr145392_))
                               (let ((_body145376_ _g145352145363_))
                                 (_K145357145373_ _body145376_))))
                         (let ((_body145376_ _g145352145363_))
                           (_K145357145373_ _body145376_))))))
              (if (##null? _g145352145363_)
                  (_K145361145398_)
                  (_try-match145354145394_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx145178_)
        (letrec ((_satisfied?145180_
                  (lambda (_condition145278_)
                    (let* ((_e145279145294_ _condition145278_)
                           (_E145289145298_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e145279145294_)))
                           (_E145282145317_
                            (lambda ()
                              (if (gx#stx-pair? _e145279145294_)
                                  (let ((_e145290145302_
                                         (gx#syntax-e _e145279145294_)))
                                    (let ((_hd145291145305_
                                           (##car _e145290145302_))
                                          (_tl145292145307_
                                           (##cdr _e145290145302_)))
                                      (let* ((_combinator145310_
                                              _hd145291145305_)
                                             (_body145312_ _tl145292145307_))
                                        (if (gx#stx-list? _body145312_)
                                            (let ((_$e145314_
                                                   (gx#stx-e
                                                    _combinator145310_)))
                                              (if (eq? 'not _$e145314_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?145180_
                                                        _body145312_))
                                                  (if (eq? 'and _$e145314_)
                                                      (gx#stx-andmap
                                                       _satisfied?145180_
                                                       _body145312_)
                                                      (if (eq? 'or _$e145314_)
                                                          (gx#stx-ormap
                                                           _satisfied?145180_
                                                           _body145312_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e145314_)
                      (gx#stx-andmap gx#core-resolve-identifier _body145312_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx145178_
                       _combinator145310_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E145289145298_)))))
                                  (_E145289145298_))))
                           (_E145281145340_
                            (lambda ()
                              (if (gx#stx-pair? _e145279145294_)
                                  (let ((_e145283145321_
                                         (gx#syntax-e _e145279145294_)))
                                    (let ((_hd145284145324_
                                           (##car _e145283145321_))
                                          (_tl145285145326_
                                           (##cdr _e145283145321_)))
                                      (if (and (gx#identifier?
                                                _hd145284145324_)
                                               (gx#core-identifier=?
                                                _hd145284145324_
                                                'unquote))
                                          (if (gx#stx-pair? _tl145285145326_)
                                              (let ((_e145286145329_
                                                     (gx#syntax-e
                                                      _tl145285145326_)))
                                                (let ((_hd145287145332_
                                                       (##car _e145286145329_))
                                                      (_tl145288145334_
                                                       (##cdr _e145286145329_)))
                                                  (let ((_expr145337_
                                                         _hd145287145332_))
                                                    (if (gx#stx-null?
                                                         _tl145288145334_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr145337_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E145282145317_))
                (_E145282145317_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E145282145317_))
                                          (_E145282145317_))))
                                  (_E145282145317_))))
                           (_E145280145346_
                            (lambda ()
                              (let ((_id145344_ _e145279145294_))
                                (if (gx#identifier? _id145344_)
                                    (gx#core-bound-identifier?__%
                                     _id145344_
                                     gx#feature-binding?)
                                    (_E145281145340_))))))
                      (_E145280145346_))))
                 (_loop145181_
                  (lambda (_rest145211_)
                    (let* ((_e145212145220_ _rest145211_)
                           (_E145218145224_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e145212145220_)))
                           (_E145214145228_
                            (lambda ()
                              (if (gx#stx-null? _e145212145220_)
                                  (if '#t '() (_E145218145224_))
                                  (_E145218145224_))))
                           (_E145213145274_
                            (lambda ()
                              (if (gx#stx-pair? _e145212145220_)
                                  (let ((_e145215145232_
                                         (gx#syntax-e _e145212145220_)))
                                    (let ((_hd145216145235_
                                           (##car _e145215145232_))
                                          (_tl145217145237_
                                           (##cdr _e145215145232_)))
                                      (let* ((_hd145240_ _hd145216145235_)
                                             (_rest145242_ _tl145217145237_))
                                        (if '#t
                                            (let* ((_e145243145250_ _hd145240_)
                                                   (_E145245145254_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e145243145250_)))
                                                   (_E145244145270_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e145243145250_)
                                                          (let ((_e145246145258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e145243145250_)))
                    (let ((_hd145247145261_ (##car _e145246145258_))
                          (_tl145248145263_ (##cdr _e145246145258_)))
                      (let* ((_condition145266_ _hd145247145261_)
                             (_body145268_ _tl145248145263_))
                        (if '#t
                            (if (gx#stx-eq? _condition145266_ 'else)
                                (if (gx#stx-null? _rest145242_)
                                    _body145268_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx145178_
                                     _hd145240_))
                                (if (_satisfied?145180_ _condition145266_)
                                    _body145268_
                                    (_loop145181_ _rest145242_)))
                            (_E145245145254_)))))
                  (_E145245145254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E145244145270_))
                                            (_E145214145228_)))))
                                  (_E145214145228_)))))
                      (_E145213145274_)))))
          (let* ((_e145182145189_ _stx145178_)
                 (_E145184145193_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145182145189_)))
                 (_E145183145207_
                  (lambda ()
                    (if (gx#stx-pair? _e145182145189_)
                        (let ((_e145185145197_ (gx#syntax-e _e145182145189_)))
                          (let ((_hd145186145200_ (##car _e145185145197_))
                                (_tl145187145202_ (##cdr _e145185145197_)))
                            (let ((_clauses145205_ _tl145187145202_))
                              (if (gx#stx-list? _clauses145205_)
                                  (gx#core-cons
                                   'begin
                                   (_loop145181_ _clauses145205_))
                                  (_E145184145193_)))))
                        (_E145184145193_)))))
            (_E145183145207_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx145121_ _rpath145122_)
        (let* ((_e145123145133_ _stx145121_)
               (_E145125145137_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145123145133_)))
               (_E145124145164_
                (lambda ()
                  (if (gx#stx-pair? _e145123145133_)
                      (let ((_e145126145141_ (gx#syntax-e _e145123145133_)))
                        (let ((_hd145127145144_ (##car _e145126145141_))
                              (_tl145128145146_ (##cdr _e145126145141_)))
                          (if (gx#stx-pair? _tl145128145146_)
                              (let ((_e145129145149_
                                     (gx#syntax-e _tl145128145146_)))
                                (let ((_hd145130145152_
                                       (##car _e145129145149_))
                                      (_tl145131145154_
                                       (##cdr _e145129145149_)))
                                  (let ((_path145157_ _hd145130145152_))
                                    (if (gx#stx-null? _tl145131145154_)
                                        (if (gx#stx-string? _path145157_)
                                            (let ((_rpath145162_
                                                   (let ((_$e145159_
                                                          _rpath145122_))
                                                     (if _$e145159_
                                                         _$e145159_
                                                         (gx#core-resolve-path__%
                                                          _path145157_
                                                          (gx#stx-source
                                                           _stx145121_))))))
                                              (if (member _rpath145162_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx145121_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath145162_))
                                                    (gx#stx-source
                                                     _stx145121_)))))
                                            (_E145125145137_))
                                        (_E145125145137_)))))
                              (_E145125145137_))))
                      (_E145125145137_)))))
          (_E145124145164_))))
    (define gx#core-expand-include%__0
      (lambda (_stx145171_)
        (let ((_rpath145173_ '#f))
          (gx#core-expand-include%__% _stx145171_ _rpath145173_))))
    (define gx#core-expand-include%
      (lambda _g150814_
        (let ((_g150813_ (##length _g150814_)))
          (cond ((##fx= _g150813_ 1)
                 (apply (lambda (_stx145171_)
                          (gx#core-expand-include%__0 _stx145171_))
                        _g150814_))
                ((##fx= _g150813_ 2)
                 (apply (lambda (_stx145175_ _rpath145176_)
                          (gx#core-expand-include%__%
                           _stx145175_
                           _rpath145176_))
                        _g150814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g150814_))))))
    (define gx#core-apply-expander__%
      (lambda (_K145090_ _stx145091_ _method145092_)
        (if (procedure? _K145090_)
            (let ((_$e145094_ (gx#stx-source _stx145091_)))
              (if _$e145094_
                  ((lambda (_g145096145098_)
                     (gx#stx-wrap-source
                      (_K145090_ _stx145091_)
                      _g145096145098_))
                   _$e145094_)
                  (_K145090_ _stx145091_)))
            (let ((_$e145101_ (bound-method-ref _K145090_ _method145092_)))
              (if _$e145101_
                  ((lambda (_g145103145105_)
                     (gx#core-apply-expander__%
                      _g145103145105_
                      _stx145091_
                      _method145092_))
                   _$e145101_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx145091_
                   _method145092_))))))
    (define gx#core-apply-expander__0
      (lambda (_K145111_ _stx145112_)
        (let ((_method145114_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K145111_ _stx145112_ _method145114_))))
    (define gx#core-apply-expander
      (lambda _g150816_
        (let ((_g150815_ (##length _g150816_)))
          (cond ((##fx= _g150815_ 2)
                 (apply (lambda (_K145111_ _stx145112_)
                          (gx#core-apply-expander__0 _K145111_ _stx145112_))
                        _g150816_))
                ((##fx= _g150815_ 3)
                 (apply (lambda (_K145116_ _stx145117_ _method145118_)
                          (gx#core-apply-expander__%
                           _K145116_
                           _stx145117_
                           _method145118_))
                        _g150816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g150816_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self145086_ _stx145087_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx145087_)))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self144939_ _stx144940_)
        (let* ((_self144941144947_ _self144939_)
               (_E144943144951_
                (lambda () (error '"No clause matching" _self144941144947_)))
               (_K144944144956_
                (lambda (_K144954_)
                  (gx#core-apply-expander__0 _K144954_ _stx144940_))))
          (if (##structure-instance-of? _self144941144947_ 'gx#core-macro::t)
              (let* ((_e144945144959_
                      (##unchecked-structure-ref
                       _self144941144947_
                       '1
                       gx#expander::t
                       '#f))
                     (_K144962_ _e144945144959_))
                (_K144944144956_ _K144962_))
              (_E144943144951_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self144792_ _stx144793_)
        (if (gx#sealed-syntax? _stx144793_)
            _stx144793_
            (let* ((_self144794144800_ _self144792_)
                   (_E144796144804_
                    (lambda ()
                      (error '"No clause matching" _self144794144800_)))
                   (_K144797144809_
                    (lambda (_K144807_)
                      (gx#core-apply-expander__0 _K144807_ _stx144793_))))
              (if (##structure-instance-of?
                   _self144794144800_
                   'gx#core-expander::t)
                  (let* ((_e144798144812_
                          (##unchecked-structure-ref
                           _self144794144800_
                           '1
                           gx#expander::t
                           '#f))
                         (_K144815_ _e144798144812_))
                    (_K144797144809_ _K144815_))
                  (_E144796144804_))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self144654_ _stx144655_ _top?144656_)
        (if (_top?144656_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self144654_ _stx144655_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx144655_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self144661_ _stx144662_)
        (let ((_top?144664_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self144661_
           _stx144662_
           _top?144664_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g150818_
        (let ((_g150817_ (##length _g150818_)))
          (cond ((##fx= _g150817_ 2)
                 (apply (lambda (_self144661_ _stx144662_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self144661_
                           _stx144662_))
                        _g150818_))
                ((##fx= _g150817_ 3)
                 (apply (lambda (_self144666_ _stx144667_ _top?144668_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self144666_
                           _stx144667_
                           _top?144668_))
                        _g150818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g150818_))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self144528_ _stx144529_)
        (gx#top-special-form::apply-macro-expander__%
         _self144528_
         _stx144529_
         gx#module-context?)))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self144353_ _stx144354_)
        (let* ((_self144355144361_ _self144353_)
               (_E144357144365_
                (lambda () (error '"No clause matching" _self144355144361_)))
               (_K144358144398_
                (lambda (_id144368_)
                  (let* ((_e144369144376_ _stx144354_)
                         (_E144371144380_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e144369144376_)))
                         (_E144370144394_
                          (lambda ()
                            (if (gx#stx-pair? _e144369144376_)
                                (let ((_e144372144384_
                                       (gx#syntax-e _e144369144376_)))
                                  (let ((_hd144373144387_
                                         (##car _e144372144384_))
                                        (_tl144374144389_
                                         (##cdr _e144372144384_)))
                                    (let ((_body144392_ _tl144374144389_))
                                      (if '#t
                                          (gx#core-cons
                                           _id144368_
                                           _body144392_)
                                          (_E144371144380_)))))
                                (_E144371144380_)))))
                    (_E144370144394_)))))
          (if (##structure-instance-of?
               _self144355144361_
               'gx#rename-macro-expander::t)
              (let* ((_e144359144401_
                      (##unchecked-structure-ref
                       _self144355144361_
                       '1
                       gx#expander::t
                       '#f))
                     (_id144404_ _e144359144401_))
                (_K144358144398_ _id144404_))
              (_E144357144365_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self144179_ _stx144180_ _method144181_)
        (let* ((_self144182144190_ _self144179_)
               (_E144184144194_
                (lambda () (error '"No clause matching" _self144182144190_)))
               (_K144185144201_
                (lambda (_phi144197_ _ctx144198_ _K144199_)
                  (gx#core-apply-user-macro
                   _K144199_
                   _stx144180_
                   _ctx144198_
                   _phi144197_
                   _method144181_))))
          (if (##structure-instance-of?
               _self144182144190_
               'gx#macro-expander::t)
              (let* ((_e144186144204_
                      (##unchecked-structure-ref
                       _self144182144190_
                       '1
                       gx#expander::t
                       '#f))
                     (_K144207_ _e144186144204_)
                     (_e144187144209_
                      (##unchecked-structure-ref
                       _self144182144190_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx144212_ _e144187144209_)
                     (_e144188144214_
                      (##unchecked-structure-ref
                       _self144182144190_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi144217_ _e144188144214_))
                (_K144185144201_ _phi144217_ _ctx144212_ _K144207_))
              (_E144184144194_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self144222_ _stx144223_)
        (let ((_method144225_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self144222_
           _stx144223_
           _method144225_))))
    (define gx#core-apply-user-expander
      (lambda _g150820_
        (let ((_g150819_ (##length _g150820_)))
          (cond ((##fx= _g150819_ 2)
                 (apply (lambda (_self144222_ _stx144223_)
                          (gx#core-apply-user-expander__0
                           _self144222_
                           _stx144223_))
                        _g150820_))
                ((##fx= _g150819_ 3)
                 (apply (lambda (_self144227_ _stx144228_ _method144229_)
                          (gx#core-apply-user-expander__%
                           _self144227_
                           _stx144228_
                           _method144229_))
                        _g150820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g150820_))))))
    (define gx#core-apply-user-macro
      (lambda (_K144169_ _stx144170_ _ctx144171_ _phi144172_ _method144173_)
        (let ((_mark144175_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx144171_
                _phi144172_
                _stx144170_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K144169_
               (gx#stx-apply-mark _stx144170_ _mark144175_)
               _method144173_)
              _mark144175_))
           gx#current-expander-marks
           (cons _mark144175_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx144021_ _phi144022_ _ctx144023_)
        (let _lp144025_ ((_bind144027_
                          (gx#core-resolve-identifier__%
                           _stx144021_
                           _phi144022_
                           _ctx144023_)))
          (if (##structure-direct-instance-of?
               _bind144027_
               'gx#import-binding::t)
              (_lp144025_
               (##unchecked-structure-ref
                _bind144027_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind144027_
                   'gx#alias-binding::t)
                  (_lp144025_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind144027_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi144022_
                    _ctx144023_))
                  _bind144027_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx144032_)
        (let* ((_phi144034_ (gx#current-expander-phi))
               (_ctx144036_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx144032_ _phi144034_ _ctx144036_))))
    (define gx#resolve-identifier__1
      (lambda (_stx144038_ _phi144039_)
        (let ((_ctx144041_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx144038_ _phi144039_ _ctx144041_))))
    (define gx#resolve-identifier
      (lambda _g150822_
        (let ((_g150821_ (##length _g150822_)))
          (cond ((##fx= _g150821_ 1)
                 (apply (lambda (_stx144032_)
                          (gx#resolve-identifier__0 _stx144032_))
                        _g150822_))
                ((##fx= _g150821_ 2)
                 (apply (lambda (_stx144038_ _phi144039_)
                          (gx#resolve-identifier__1 _stx144038_ _phi144039_))
                        _g150822_))
                ((##fx= _g150821_ 3)
                 (apply (lambda (_stx144043_ _phi144044_ _ctx144045_)
                          (gx#resolve-identifier__%
                           _stx144043_
                           _phi144044_
                           _ctx144045_))
                        _g150822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g150822_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx143979_ _val143980_ _rebind?143981_ _phi143982_ _ctx143983_)
        (let ((_rebind?143985_
               (if (not _rebind?143981_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?143981_) _rebind?143981_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx143979_)
           _val143980_
           _rebind?143985_
           _phi143982_
           _ctx143983_))))
    (define gx#bind-identifier!__0
      (lambda (_stx143990_ _val143991_)
        (let* ((_rebind?143993_ '#f)
               (_phi143995_ (gx#current-expander-phi))
               (_ctx143997_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx143990_
           _val143991_
           _rebind?143993_
           _phi143995_
           _ctx143997_))))
    (define gx#bind-identifier!__1
      (lambda (_stx143999_ _val144000_ _rebind?144001_)
        (let* ((_phi144003_ (gx#current-expander-phi))
               (_ctx144005_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx143999_
           _val144000_
           _rebind?144001_
           _phi144003_
           _ctx144005_))))
    (define gx#bind-identifier!__2
      (lambda (_stx144007_ _val144008_ _rebind?144009_ _phi144010_)
        (let ((_ctx144012_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx144007_
           _val144008_
           _rebind?144009_
           _phi144010_
           _ctx144012_))))
    (define gx#bind-identifier!
      (lambda _g150824_
        (let ((_g150823_ (##length _g150824_)))
          (cond ((##fx= _g150823_ 2)
                 (apply (lambda (_stx143990_ _val143991_)
                          (gx#bind-identifier!__0 _stx143990_ _val143991_))
                        _g150824_))
                ((##fx= _g150823_ 3)
                 (apply (lambda (_stx143999_ _val144000_ _rebind?144001_)
                          (gx#bind-identifier!__1
                           _stx143999_
                           _val144000_
                           _rebind?144001_))
                        _g150824_))
                ((##fx= _g150823_ 4)
                 (apply (lambda (_stx144007_
                                 _val144008_
                                 _rebind?144009_
                                 _phi144010_)
                          (gx#bind-identifier!__2
                           _stx144007_
                           _val144008_
                           _rebind?144009_
                           _phi144010_))
                        _g150824_))
                ((##fx= _g150823_ 5)
                 (apply (lambda (_stx144014_
                                 _val144015_
                                 _rebind?144016_
                                 _phi144017_
                                 _ctx144018_)
                          (gx#bind-identifier!__%
                           _stx144014_
                           _val144015_
                           _rebind?144016_
                           _phi144017_
                           _ctx144018_))
                        _g150824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g150824_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx143951_ _phi143952_ _ctx143953_)
        (let _lp143955_ ((_e143957_ _stx143951_)
                         (_marks143958_ (gx#current-expander-marks)))
          (if (symbol? _e143957_)
              (gx#core-resolve-binding
               _e143957_
               _phi143952_
               _phi143952_
               _ctx143953_
               (reverse _marks143958_))
              (if (gx#identifier-quote? _e143957_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e143957_ '1 gx#AST::t '#f)
                   _phi143952_
                   '0
                   (##unchecked-structure-ref
                    _e143957_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e143957_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e143957_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e143957_ '1 gx#AST::t '#f)
                       _phi143952_
                       _phi143952_
                       _ctx143953_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e143957_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks143958_))
                      (if (##structure-direct-instance-of?
                           _e143957_
                           'gx#syntax-wrap::t)
                          (_lp143955_
                           (##unchecked-structure-ref
                            _e143957_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e143957_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks143958_))
                          (if (##structure-instance-of?
                               _e143957_
                               'gerbil#AST::t)
                              (_lp143955_
                               (##unchecked-structure-ref
                                _e143957_
                                '1
                                gx#AST::t
                                '#f)
                               _marks143958_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx143951_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx143963_)
        (let* ((_phi143965_ (gx#current-expander-phi))
               (_ctx143967_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx143963_
           _phi143965_
           _ctx143967_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx143969_ _phi143970_)
        (let ((_ctx143972_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _stx143969_
           _phi143970_
           _ctx143972_))))
    (define gx#core-resolve-identifier
      (lambda _g150826_
        (let ((_g150825_ (##length _g150826_)))
          (cond ((##fx= _g150825_ 1)
                 (apply (lambda (_stx143963_)
                          (gx#core-resolve-identifier__0 _stx143963_))
                        _g150826_))
                ((##fx= _g150825_ 2)
                 (apply (lambda (_stx143969_ _phi143970_)
                          (gx#core-resolve-identifier__1
                           _stx143969_
                           _phi143970_))
                        _g150826_))
                ((##fx= _g150825_ 3)
                 (apply (lambda (_stx143974_ _phi143975_ _ctx143976_)
                          (gx#core-resolve-identifier__%
                           _stx143974_
                           _phi143975_
                           _ctx143976_))
                        _g150826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g150826_))))))
    (define gx#core-resolve-binding
      (lambda (_id143864_
               _phi143865_
               _src-phi143866_
               _ctx143867_
               _marks143868_)
        (letrec ((_resolve143870_
                  (lambda (_ctx143938_ _src-phi143939_ _key143940_)
                    (let _lp143942_ ((_ctx143944_
                                      (gx#core-context-shift
                                       _ctx143938_
                                       _phi143865_))
                                     (_dphi143945_
                                      (fx- _phi143865_ _src-phi143939_)))
                      (let ((_$e143947_
                             (gx#core-context-resolve
                              _ctx143944_
                              _key143940_)))
                        (if _$e143947_
                            (values _$e143947_)
                            (if (fxzero? _dphi143945_)
                                '#f
                                (if (fxpositive? _dphi143945_)
                                    (_lp143942_
                                     (gx#core-context-shift _ctx143944_ '-1)
                                     (fx- _dphi143945_ '1))
                                    (_lp143942_
                                     (gx#core-context-shift _ctx143944_ '1)
                                     (fx+ _dphi143945_ '1))))))))))
          (let _lp143872_ ((_ctx143874_ _ctx143867_)
                           (_src-phi143875_ _src-phi143866_)
                           (_rest143876_ _marks143868_))
            (let* ((_rest143877143885_ _rest143876_)
                   (_else143879143893_
                    (lambda ()
                      (_resolve143870_
                       _ctx143874_
                       _src-phi143875_
                       _id143864_)))
                   (_K143881143926_
                    (lambda (_rest143896_ _hd143897_)
                      (let* ((_hd143898143904_ _hd143897_)
                             (_E143900143908_
                              (lambda ()
                                (error '"No clause matching"
                                       _hd143898143904_)))
                             (_K143901143918_
                              (lambda (_subst143911_)
                                (let ((_$e143915_
                                       (let ((_key143913_
                                              (if _subst143911_
                                                  (table-ref
                                                   _subst143911_
                                                   _id143864_
                                                   '#f)
                                                  '#f)))
                                         (if _key143913_
                                             (_resolve143870_
                                              _ctx143874_
                                              _src-phi143875_
                                              _key143913_)
                                             '#f))))
                                  (if _$e143915_
                                      _$e143915_
                                      (_lp143872_
                                       (##unchecked-structure-ref
                                        _hd143897_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd143897_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest143896_))))))
                        (if (##structure-instance-of?
                             _hd143898143904_
                             'gx#expander-mark::t)
                            (let* ((_e143902143921_
                                    (##unchecked-structure-ref
                                     _hd143898143904_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst143924_ _e143902143921_))
                              (_K143901143918_ _subst143924_))
                            (_E143900143908_))))))
              (if (##pair? _rest143877143885_)
                  (let ((_hd143882143929_ (##car _rest143877143885_))
                        (_tl143883143931_ (##cdr _rest143877143885_)))
                    (let* ((_hd143934_ _hd143882143929_)
                           (_rest143936_ _tl143883143931_))
                      (_K143881143926_ _rest143936_ _hd143934_)))
                  (_else143879143893_)))))))
    (define gx#core-bind!__%
      (lambda (_key143740_ _val143741_ _rebind?143742_ _phi143743_ _ctx143744_)
        (letrec ((_update-binding143746_
                  (lambda (_xval143817_)
                    (if (or (_rebind?143742_
                             _ctx143744_
                             _xval143817_
                             _val143741_)
                            (and (##structure-direct-instance-of?
                                  _xval143817_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval143817_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val143741_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val143741_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval143817_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val143741_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val143741_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval143817_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val143741_
                        (if (and (##structure-direct-instance-of?
                                  _val143741_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val143741_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval143817_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val143741_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval143817_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval143817_
                            (if (and (##structure-direct-instance-of?
                                      _val143741_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval143817_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key143740_
                                 (cons (##unchecked-structure-ref
                                        _val143741_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val143741_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval143817_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval143817_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval143817_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval143817_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key143740_
                                 _val143741_
                                 _xval143817_))))))
                 (_gensubst143747_
                  (lambda (_subst143812_ _id143813_)
                    (let ((_eid143815_
                           (gensym (if (uninterned-symbol? _id143813_)
                                       '%
                                       _id143813_))))
                      (table-set! _subst143812_ _id143813_ _eid143815_)
                      _eid143815_)))
                 (_subst!143748_
                  (lambda (_key143750_)
                    (let* ((_key143751143759_ _key143750_)
                           (_else143753143767_ (lambda () _key143750_))
                           (_K143755143800_
                            (lambda (_mark143770_ _id143771_)
                              (let* ((_mark143772143778_ _mark143770_)
                                     (_E143774143782_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark143772143778_)))
                                     (_K143775143792_
                                      (lambda (_subst143785_)
                                        (if (not _subst143785_)
                                            (let ((_subst143787_
                                                   (make-table 'test: eq?)))
                                              (##unchecked-structure-set!
                                               _mark143770_
                                               _subst143787_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst143747_
                                               _subst143787_
                                               _id143771_))
                                            (let ((_$e143789_
                                                   (table-ref
                                                    _subst143785_
                                                    _id143771_
                                                    '#f)))
                                              (if _$e143789_
                                                  (values _$e143789_)
                                                  (_gensubst143747_
                                                   _subst143785_
                                                   _id143771_)))))))
                                (if (##structure-instance-of?
                                     _mark143772143778_
                                     'gx#expander-mark::t)
                                    (let* ((_e143776143795_
                                            (##unchecked-structure-ref
                                             _mark143772143778_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst143798_ _e143776143795_))
                                      (_K143775143792_ _subst143798_))
                                    (_E143774143782_))))))
                      (if (##pair? _key143751143759_)
                          (let ((_hd143756143803_ (##car _key143751143759_))
                                (_tl143757143805_ (##cdr _key143751143759_)))
                            (let* ((_id143808_ _hd143756143803_)
                                   (_mark143810_ _tl143757143805_))
                              (_K143755143800_ _mark143810_ _id143808_)))
                          (_else143753143767_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx143744_ _phi143743_)
           (_subst!143748_ _key143740_)
           _val143741_
           _update-binding143746_))))
    (define gx#core-bind!__0
      (lambda (_key143834_ _val143835_)
        (let* ((_rebind?143837_ false)
               (_phi143839_ (gx#current-expander-phi))
               (_ctx143841_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key143834_
           _val143835_
           _rebind?143837_
           _phi143839_
           _ctx143841_))))
    (define gx#core-bind!__1
      (lambda (_key143843_ _val143844_ _rebind?143845_)
        (let* ((_phi143847_ (gx#current-expander-phi))
               (_ctx143849_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key143843_
           _val143844_
           _rebind?143845_
           _phi143847_
           _ctx143849_))))
    (define gx#core-bind!__2
      (lambda (_key143851_ _val143852_ _rebind?143853_ _phi143854_)
        (let ((_ctx143856_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key143851_
           _val143852_
           _rebind?143853_
           _phi143854_
           _ctx143856_))))
    (define gx#core-bind!
      (lambda _g150828_
        (let ((_g150827_ (##length _g150828_)))
          (cond ((##fx= _g150827_ 2)
                 (apply (lambda (_key143834_ _val143835_)
                          (gx#core-bind!__0 _key143834_ _val143835_))
                        _g150828_))
                ((##fx= _g150827_ 3)
                 (apply (lambda (_key143843_ _val143844_ _rebind?143845_)
                          (gx#core-bind!__1
                           _key143843_
                           _val143844_
                           _rebind?143845_))
                        _g150828_))
                ((##fx= _g150827_ 4)
                 (apply (lambda (_key143851_
                                 _val143852_
                                 _rebind?143853_
                                 _phi143854_)
                          (gx#core-bind!__2
                           _key143851_
                           _val143852_
                           _rebind?143853_
                           _phi143854_))
                        _g150828_))
                ((##fx= _g150827_ 5)
                 (apply (lambda (_key143858_
                                 _val143859_
                                 _rebind?143860_
                                 _phi143861_
                                 _ctx143862_)
                          (gx#core-bind!__%
                           _key143858_
                           _val143859_
                           _rebind?143860_
                           _phi143861_
                           _ctx143862_))
                        _g150828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g150828_))))))
    (define gx#core-identifier-key
      (lambda (_stx143674_)
        (if (symbol? _stx143674_)
            (let* ((_g143675143683_ (gx#current-expander-marks))
                   (_else143677143691_ (lambda () _stx143674_))
                   (_K143679143696_
                    (lambda (_hd143694_) (cons _stx143674_ _hd143694_))))
              (if (##pair? _g143675143683_)
                  (let* ((_hd143680143699_ (##car _g143675143683_))
                         (_hd143702_ _hd143680143699_))
                    (_K143679143696_ _hd143702_))
                  (_else143677143691_)))
            (if (gx#identifier? _stx143674_)
                (let* ((_id143704_ (gx#syntax-local-unwrap _stx143674_))
                       (_eid143706_ (gx#stx-e _id143704_))
                       (_marks143708_ (gx#stx-identifier-marks* _id143704_)))
                  (let* ((_marks143710143718_ _marks143708_)
                         (_else143712143726_ (lambda () _eid143706_))
                         (_K143714143731_
                          (lambda (_hd143729_) (cons _eid143706_ _hd143729_))))
                    (if (##pair? _marks143710143718_)
                        (let* ((_hd143715143734_ (##car _marks143710143718_))
                               (_hd143737_ _hd143715143734_))
                          (_K143714143731_ _hd143737_))
                        (_else143712143726_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx143674_)))))
    (define gx#core-context-shift
      (lambda (_ctx143619_ _phi143620_)
        (letrec ((_make-phi143622_
                  (lambda (_super143672_)
                    (let ((__obj150799
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj150799
                       (gensym 'phi)
                       _super143672_)
                      __obj150799)))
                 (_make-phi/up143623_
                  (lambda (_ctx143667_ _super143668_)
                    (let ((_ctx+1143670_ (_make-phi143622_ _super143668_)))
                      (##unchecked-structure-set!
                       _ctx143667_
                       _ctx+1143670_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+1143670_
                       _ctx143667_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+1143670_)))
                 (_make-phi/down143624_
                  (lambda (_ctx143662_ _super143663_)
                    (let ((_ctx-1143665_ (_make-phi143622_ _super143663_)))
                      (##unchecked-structure-set!
                       _ctx-1143665_
                       _ctx143662_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx143662_
                       _ctx-1143665_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-1143665_)))
                 (_shift143625_
                  (lambda (_ctx143646_
                           _delta143647_
                           _make-delta-context143648_
                           _phi143649_
                           _K143650_)
                    (let ((_$e143652_
                           (##unchecked-structure-ref
                            _ctx143646_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e143652_
                          ((lambda (_super143655_)
                             (let* ((_super143657_
                                     (_K143650_ _super143655_ _delta143647_))
                                    (_ctx+d143659_
                                     (_make-delta-context143648_
                                      _ctx143646_
                                      _super143657_)))
                               (_K143650_
                                _ctx+d143659_
                                (fx- _phi143649_ _delta143647_))))
                           _$e143652_)
                          (error '"Bad context" _ctx143646_))))))
          (let _K143627_ ((_ctx143629_ _ctx143619_) (_phi143630_ _phi143620_))
            (if (fxzero? _phi143630_)
                _ctx143629_
                (if (fx> (##vector-length _ctx143629_) '3)
                    (if (fxpositive? _phi143630_)
                        (let ((_$e143632_
                               (##unchecked-structure-ref
                                _ctx143629_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e143632_
                              ((lambda (_g143634143636_)
                                 (_K143627_
                                  _g143634143636_
                                  (fx- _phi143630_ '1)))
                               _$e143632_)
                              (_shift143625_
                               _ctx143629_
                               '1
                               _make-phi/up143623_
                               _phi143630_
                               _K143627_)))
                        (let ((_$e143639_
                               (##unchecked-structure-ref
                                _ctx143629_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e143639_
                              ((lambda (_g143641143643_)
                                 (_K143627_
                                  _g143641143643_
                                  (fx+ _phi143630_ '1)))
                               _$e143639_)
                              (_shift143625_
                               _ctx143629_
                               '-1
                               _make-phi/down143624_
                               _phi143630_
                               _K143627_))))
                    _ctx143629_))))))
    (define gx#core-context-get
      (lambda (_ctx143616_ _key143617_)
        (table-ref
         (##unchecked-structure-ref _ctx143616_ '2 gx#expander-context::t '#f)
         _key143617_
         '#f)))
    (define gx#core-context-put!
      (lambda (_ctx143612_ _key143613_ _val143614_)
        (table-set!
         (##unchecked-structure-ref _ctx143612_ '2 gx#expander-context::t '#f)
         _key143613_
         _val143614_)))
    (define gx#core-context-resolve
      (lambda (_ctx143599_ _key143600_)
        (let _lp143602_ ((_ctx143604_ _ctx143599_))
          (let ((_$e143606_ (gx#core-context-get _ctx143604_ _key143600_)))
            (if _$e143606_
                (values _$e143606_)
                (let ((_$e143609_
                       (if (fx> (##vector-length _ctx143604_) '3)
                           (##unchecked-structure-ref
                            _ctx143604_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e143609_ (_lp143602_ _$e143609_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx143589_ _key143590_ _val143591_ _rebind143592_)
        (let ((_$e143594_ (gx#core-context-get _ctx143589_ _key143590_)))
          (if _$e143594_
              ((lambda (_xval143597_)
                 (gx#core-context-put!
                  _ctx143589_
                  _key143590_
                  (_rebind143592_ _xval143597_)))
               _$e143594_)
              (gx#core-context-put! _ctx143589_ _key143590_ _val143591_)))))
    (define gx#core-context-top__%
      (lambda (_ctx143567_ _stop?143568_)
        (let _lp143570_ ((_ctx143572_ _ctx143567_))
          (if (_stop?143568_ _ctx143572_)
              _ctx143572_
              (if (##structure-instance-of? _ctx143572_ 'gx#context-phi::t)
                  (_lp143570_
                   (##unchecked-structure-ref
                    _ctx143572_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx143578_ (gx#current-expander-context))
               (_stop?143580_ gx#top-context?))
          (gx#core-context-top__% _ctx143578_ _stop?143580_))))
    (define gx#core-context-top__1
      (lambda (_ctx143582_)
        (let ((_stop?143584_ gx#top-context?))
          (gx#core-context-top__% _ctx143582_ _stop?143584_))))
    (define gx#core-context-top
      (lambda _g150830_
        (let ((_g150829_ (##length _g150830_)))
          (cond ((##fx= _g150829_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g150830_))
                ((##fx= _g150829_ 1)
                 (apply (lambda (_ctx143582_)
                          (gx#core-context-top__1 _ctx143582_))
                        _g150830_))
                ((##fx= _g150829_ 2)
                 (apply (lambda (_ctx143586_ _stop?143587_)
                          (gx#core-context-top__% _ctx143586_ _stop?143587_))
                        _g150830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g150830_))))))
    (define gx#core-context-root__%
      (lambda (_ctx143552_)
        (let _lp143554_ ((_ctx143556_ _ctx143552_))
          (if (##structure-instance-of? _ctx143556_ 'gx#context-phi::t)
              (_lp143554_
               (##unchecked-structure-ref
                _ctx143556_
                '3
                gx#phi-context::t
                '#f))
              _ctx143556_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx143562_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx143562_))))
    (define gx#core-context-root
      (lambda _g150832_
        (let ((_g150831_ (##length _g150832_)))
          (cond ((##fx= _g150831_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g150832_))
                ((##fx= _g150831_ 1)
                 (apply (lambda (_ctx143564_)
                          (gx#core-context-root__% _ctx143564_))
                        _g150832_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g150832_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx143533_ . __143530143534_)
        (let ((_$e143537_ (gx#current-expander-allow-rebind?)))
          (if _$e143537_
              _$e143537_
              (if (##structure-instance-of? _ctx143533_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx143533_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx143533_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx143544_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx143544_))))
    (define gx#core-context-rebind?
      (lambda _g150834_
        (let ((_g150833_ (##length _g150834_)))
          (cond ((##fx= _g150833_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g150834_))
                ((##fx= _g150833_ 1)
                 (apply (lambda (_ctx143546_)
                          (gx#core-context-rebind?__% _ctx143546_))
                        _g150834_))
                ((##fx>= _g150833_ 1)
                 (apply gx#core-context-rebind?__% _g150834_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g150834_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx143516_)
        (let ((_$e143518_ (gx#core-context-top__1 _ctx143516_)))
          (if _$e143518_
              ((lambda (_ctx143521_)
                 (if (##structure-instance-of?
                      _ctx143521_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx143521_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e143518_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx143527_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx143527_))))
    (define gx#core-context-namespace
      (lambda _g150836_
        (let ((_g150835_ (##length _g150836_)))
          (cond ((##fx= _g150835_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g150836_))
                ((##fx= _g150835_ 1)
                 (apply (lambda (_ctx143529_)
                          (gx#core-context-namespace__% _ctx143529_))
                        _g150836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g150836_))))))
    (define gx#expander-binding?__%
      (lambda (_bind143502_ _is?143503_)
        (if (##structure-direct-instance-of?
             _bind143502_
             'gx#syntax-binding::t)
            (_is?143503_
             (##unchecked-structure-ref
              _bind143502_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind143508_)
        (let ((_is?143510_ gx#expander?))
          (gx#expander-binding?__% _bind143508_ _is?143510_))))
    (define gx#expander-binding?
      (lambda _g150838_
        (let ((_g150837_ (##length _g150838_)))
          (cond ((##fx= _g150837_ 1)
                 (apply (lambda (_bind143508_)
                          (gx#expander-binding?__0 _bind143508_))
                        _g150838_))
                ((##fx= _g150837_ 2)
                 (apply (lambda (_bind143512_ _is?143513_)
                          (gx#expander-binding?__% _bind143512_ _is?143513_))
                        _g150838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g150838_))))))
    (define gx#core-expander-binding?
      (lambda (_bind143499_)
        (gx#expander-binding?__% _bind143499_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind143497_)
        (gx#expander-binding?__% _bind143497_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind143491_)
        (letrec ((_direct-special-form?143493_
                  (lambda (_obj143495_)
                    (##structure-direct-instance-of?
                     _obj143495_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _bind143491_
           _direct-special-form?143493_))))
    (define gx#special-form-binding?
      (lambda (_bind143489_)
        (gx#expander-binding?__% _bind143489_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind143480_)
        (letrec ((_feature?143482_
                  (lambda (_e143484_)
                    (let ((_$e143486_
                           (##structure-instance-of?
                            _e143484_
                            'gx#feature-expander::t)))
                      (if _$e143486_
                          _$e143486_
                          (##structure-instance-of?
                           _e143484_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind143480_ _feature?143482_))))
    (define gx#private-feature-binding?
      (lambda (_bind143478_)
        (gx#expander-binding?__% _bind143478_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id143465_ _bound?143466_)
        (if (gx#identifier? _id143465_)
            (_bound?143466_ (gx#resolve-identifier__0 _id143465_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id143471_)
        (let ((_bound?143473_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id143471_ _bound?143473_))))
    (define gx#core-bound-identifier?
      (lambda _g150840_
        (let ((_g150839_ (##length _g150840_)))
          (cond ((##fx= _g150839_ 1)
                 (apply (lambda (_id143471_)
                          (gx#core-bound-identifier?__0 _id143471_))
                        _g150840_))
                ((##fx= _g150839_ 2)
                 (apply (lambda (_id143475_ _bound?143476_)
                          (gx#core-bound-identifier?__%
                           _id143475_
                           _bound?143476_))
                        _g150840_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g150840_))))))
    (define gx#core-identifier=?
      (lambda (_x143455_ _y143456_)
        (letrec ((_y=?143458_
                  (lambda (_xid143462_)
                    ((if (list? _y143456_) memq eq?) _xid143462_ _y143456_))))
          (let ((_bind143460_ (gx#resolve-identifier__0 _x143455_)))
            (if (##structure-instance-of? _bind143460_ 'gx#binding::t)
                (_y=?143458_
                 (##unchecked-structure-ref _bind143460_ '1 gx#binding::t '#f))
                (_y=?143458_ (gx#stx-e _x143455_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e143453_)
        (if (interned-symbol? _e143453_)
            (string-index (symbol->string _e143453_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx143408_ _src143409_ _ctx143410_ _marks143411_)
        (if (##structure? _stx143408_)
            (let ((_$e143413_ (gx#sealed-syntax-unwrap _stx143408_)))
              (if _$e143413_
                  (values _$e143413_)
                  (if (gx#identifier? _stx143408_)
                      (let ((_id143416_
                             (gx#stx-unwrap__% _stx143408_ _marks143411_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref
                          _id143416_
                          '1
                          gx#AST::t
                          '#f)
                         (let ((_$e143418_
                                (##unchecked-structure-ref
                                 _id143416_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e143418_ _$e143418_ _src143409_))
                         _ctx143410_
                         (##unchecked-structure-ref
                          _id143416_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx143408_)
                       (let ((_$e143421_ (gx#stx-source _stx143408_)))
                         (if _$e143421_ _$e143421_ _src143409_))
                       _ctx143410_
                       (reverse _marks143411_)))))
            (##structure
             gx#syntax-quote::t
             _stx143408_
             _src143409_
             _ctx143410_
             (reverse _marks143411_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx143427_)
        (let* ((_src143429_ '#f)
               (_ctx143431_ (gx#current-expander-context))
               (_marks143433_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx143427_
           _src143429_
           _ctx143431_
           _marks143433_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx143435_ _src143436_)
        (let* ((_ctx143438_ (gx#current-expander-context))
               (_marks143440_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx143435_
           _src143436_
           _ctx143438_
           _marks143440_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx143442_ _src143443_ _ctx143444_)
        (let ((_marks143446_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx143442_
           _src143443_
           _ctx143444_
           _marks143446_))))
    (define gx#core-quote-syntax
      (lambda _g150842_
        (let ((_g150841_ (##length _g150842_)))
          (cond ((##fx= _g150841_ 1)
                 (apply (lambda (_stx143427_)
                          (gx#core-quote-syntax__0 _stx143427_))
                        _g150842_))
                ((##fx= _g150841_ 2)
                 (apply (lambda (_stx143435_ _src143436_)
                          (gx#core-quote-syntax__1 _stx143435_ _src143436_))
                        _g150842_))
                ((##fx= _g150841_ 3)
                 (apply (lambda (_stx143442_ _src143443_ _ctx143444_)
                          (gx#core-quote-syntax__2
                           _stx143442_
                           _src143443_
                           _ctx143444_))
                        _g150842_))
                ((##fx= _g150841_ 4)
                 (apply (lambda (_stx143448_
                                 _src143449_
                                 _ctx143450_
                                 _marks143451_)
                          (gx#core-quote-syntax__%
                           _stx143448_
                           _src143449_
                           _ctx143450_
                           _marks143451_))
                        _g150842_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g150842_))))))
    (define gx#core-cons
      (lambda (_hd143404_ _tl143405_)
        (cons (gx#core-quote-syntax__0 _hd143404_) _tl143405_)))
    (define gx#core-list
      (lambda (_hd143401_ . _rest143402_)
        (cons (gx#core-quote-syntax__0 _hd143401_) _rest143402_)))
    (define gx#core-cons*
      (lambda (_hd143398_ . _rest143399_)
        (apply cons* (gx#core-quote-syntax__0 _hd143398_) _rest143399_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path143372_ _rel143373_)
        (let ((_path143385_ (gx#stx-e _stx-path143372_))
              (_reldir143386_
               (let _lp143375_ ((_relsrc143377_
                                 (let ((_$e143382_
                                        (gx#stx-source _stx-path143372_)))
                                   (if _$e143382_ _$e143382_ _rel143373_))))
                 (if (##structure-instance-of? _relsrc143377_ 'gerbil#AST::t)
                     (_lp143375_
                      (let ((_$e143379_ (gx#stx-source _relsrc143377_)))
                        (if _$e143379_ _$e143379_ (gx#stx-e _relsrc143377_))))
                     (if (source-location-path? _relsrc143377_)
                         (path-directory (source-location-path _relsrc143377_))
                         (if (string? _relsrc143377_)
                             (path-directory _relsrc143377_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path143385_ (path-normalize _reldir143386_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path143391_)
        (let ((_rel143393_ '#f))
          (gx#core-resolve-path__% _stx-path143391_ _rel143393_))))
    (define gx#core-resolve-path
      (lambda _g150844_
        (let ((_g150843_ (##length _g150844_)))
          (cond ((##fx= _g150843_ 1)
                 (apply (lambda (_stx-path143391_)
                          (gx#core-resolve-path__0 _stx-path143391_))
                        _g150844_))
                ((##fx= _g150843_ 2)
                 (apply (lambda (_stx-path143395_ _rel143396_)
                          (gx#core-resolve-path__%
                           _stx-path143395_
                           _rel143396_))
                        _g150844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g150844_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr143328_ _ctx143329_)
        (let* ((_repr143330143337_ _repr143328_)
               (_E143332143341_
                (lambda () (error '"No clause matching" _repr143330143337_)))
               (_K143333143349_
                (lambda (_subs143344_ _phi143345_)
                  (let ((_subst143347_
                         (if (not (null? _subs143344_))
                             (list->table _subs143344_ 'test: eq?)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst143347_
                     _ctx143329_
                     _phi143345_
                     '#f)))))
          (if (##pair? _repr143330143337_)
              (let ((_hd143334143352_ (##car _repr143330143337_))
                    (_tl143335143354_ (##cdr _repr143330143337_)))
                (let* ((_phi143357_ _hd143334143352_)
                       (_subs143359_ _tl143335143354_))
                  (_K143333143349_ _subs143359_ _phi143357_)))
              (_E143332143341_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr143364_)
        (let ((_ctx143366_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr143364_ _ctx143366_))))
    (define gx#core-deserialize-mark
      (lambda _g150846_
        (let ((_g150845_ (##length _g150846_)))
          (cond ((##fx= _g150845_ 1)
                 (apply (lambda (_repr143364_)
                          (gx#core-deserialize-mark__0 _repr143364_))
                        _g150846_))
                ((##fx= _g150845_ 2)
                 (apply (lambda (_repr143368_ _ctx143369_)
                          (gx#core-deserialize-mark__%
                           _repr143368_
                           _ctx143369_))
                        _g150846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g150846_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx143325_)
        (gx#stx-rewrap _stx143325_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx143323_)
        (gx#stx-unwrap__% _stx143323_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx143293_)
        (let* ((_g143294143302_ (gx#current-expander-marks))
               (_else143296143310_ (lambda () _stx143293_))
               (_K143298143315_
                (lambda (_hd143313_)
                  (gx#stx-apply-mark _stx143293_ _hd143313_))))
          (if (##pair? _g143294143302_)
              (let* ((_hd143299143318_ (##car _g143294143302_))
                     (_hd143321_ _hd143299143318_))
                (_K143298143315_ _hd143321_))
              (_else143296143310_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx143278_ _E143279_)
        (let ((_bind143281_ (gx#resolve-identifier__0 _stx143278_)))
          (if (##structure-direct-instance-of?
               _bind143281_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind143281_
               '4
               gx#syntax-binding::t
               '#f)
              (_E143279_ _stx143278_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx143286_)
        (let ((_E143288_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx143286_ _E143288_))))
    (define gx#syntax-local-e
      (lambda _g150848_
        (let ((_g150847_ (##length _g150848_)))
          (cond ((##fx= _g150847_ 1)
                 (apply (lambda (_stx143286_)
                          (gx#syntax-local-e__0 _stx143286_))
                        _g150848_))
                ((##fx= _g150847_ 2)
                 (apply (lambda (_stx143290_ _E143291_)
                          (gx#syntax-local-e__% _stx143290_ _E143291_))
                        _g150848_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g150848_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx143262_ _E143263_)
        (let ((_e143265_ (gx#syntax-local-e__% _stx143262_ _E143263_)))
          (if (##structure-instance-of? _e143265_ 'gx#expander::t)
              (##structure-ref _e143265_ '1 gx#expander::t '#f)
              _e143265_))))
    (define gx#syntax-local-value__0
      (lambda (_stx143270_)
        (let ((_E143272_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx143270_ _E143272_))))
    (define gx#syntax-local-value
      (lambda _g150850_
        (let ((_g150849_ (##length _g150850_)))
          (cond ((##fx= _g150849_ 1)
                 (apply (lambda (_stx143270_)
                          (gx#syntax-local-value__0 _stx143270_))
                        _g150850_))
                ((##fx= _g150849_ 2)
                 (apply (lambda (_stx143274_ _E143275_)
                          (gx#syntax-local-value__% _stx143274_ _E143275_))
                        _g150850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g150850_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx143259_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx143259_)))))
