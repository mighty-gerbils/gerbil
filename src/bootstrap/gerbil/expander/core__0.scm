(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1708418154)
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
      (lambda _$args83754_
        (apply make-instance gx#expander-context::t _$args83754_)))
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
      (lambda _$args83751_
        (apply make-instance gx#root-context::t _$args83751_)))
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
      (lambda _$args83748_
        (apply make-instance gx#phi-context::t _$args83748_)))
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
      (lambda _$args83745_
        (apply make-instance gx#top-context::t _$args83745_)))
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
      (lambda _$args83742_
        (apply make-instance gx#module-context::t _$args83742_)))
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
      (lambda _$args83739_
        (apply make-instance gx#prelude-context::t _$args83739_)))
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
      (lambda _$args83736_
        (apply make-instance gx#local-context::t _$args83736_)))
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
      (lambda (_self83720_ _id83721_ _super83722_)
        (if (##fx< '3 (##structure-length _self83720_))
            (begin
              (##unchecked-structure-set!
               _self83720_
               _id83721_
               '1
               (##structure-type _self83720_)
               '#f)
              (##unchecked-structure-set!
               _self83720_
               (make-hash-table-eq)
               '2
               (##structure-type _self83720_)
               '#f)
              (##unchecked-structure-set!
               _self83720_
               _super83722_
               '3
               (##structure-type _self83720_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self83720_
                   '3
                   (##vector-length _self83720_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self83727_ _id83728_)
        (let ((_super83730_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self83727_ _id83728_ _super83730_))))
    (define gx#phi-context:::init!
      (lambda _g83797_
        (let ((_g83796_ (##length _g83797_)))
          (cond ((##fx= _g83796_ 2)
                 (apply (lambda (_self83727_ _id83728_)
                          (gx#phi-context:::init!__0 _self83727_ _id83728_))
                        _g83797_))
                ((##fx= _g83796_ 3)
                 (apply (lambda (_self83732_ _id83733_ _super83734_)
                          (gx#phi-context:::init!__%
                           _self83732_
                           _id83733_
                           _super83734_))
                        _g83797_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g83797_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self83584_ _super83585_)
        (if (##fx< '3 (##structure-length _self83584_))
            (begin
              (##unchecked-structure-set!
               _self83584_
               (gensym 'L)
               '1
               (##structure-type _self83584_)
               '#f)
              (##unchecked-structure-set!
               _self83584_
               (make-hash-table-eq)
               '2
               (##structure-type _self83584_)
               '#f)
              (##unchecked-structure-set!
               _self83584_
               _super83585_
               '3
               (##structure-type _self83584_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self83584_
                   '3
                   (##vector-length _self83584_)))))
    (define gx#local-context:::init!__0
      (lambda (_self83590_)
        (let ((_super83592_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self83590_ _super83592_))))
    (define gx#local-context:::init!
      (lambda _g83799_
        (let ((_g83798_ (##length _g83799_)))
          (cond ((##fx= _g83798_ 1)
                 (apply (lambda (_self83590_)
                          (gx#local-context:::init!__0 _self83590_))
                        _g83799_))
                ((##fx= _g83798_ 2)
                 (apply (lambda (_self83594_ _super83595_)
                          (gx#local-context:::init!__%
                           _self83594_
                           _super83595_))
                        _g83799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g83799_))))))
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
      (lambda _$args83458_ (apply make-instance gx#binding::t _$args83458_)))
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
      (lambda _$args83455_
        (apply make-instance gx#runtime-binding::t _$args83455_)))
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
      (lambda _$args83452_
        (apply make-instance gx#local-binding::t _$args83452_)))
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
      (lambda _$args83449_
        (apply make-instance gx#top-binding::t _$args83449_)))
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
      (lambda _$args83446_
        (apply make-instance gx#module-binding::t _$args83446_)))
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
      (lambda _$args83443_
        (apply make-instance gx#extern-binding::t _$args83443_)))
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
      (lambda _$args83440_
        (apply make-instance gx#syntax-binding::t _$args83440_)))
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
      (lambda _$args83437_
        (apply make-instance gx#import-binding::t _$args83437_)))
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
      (lambda _$args83434_
        (apply make-instance gx#alias-binding::t _$args83434_)))
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
      (lambda _$args83431_ (apply make-instance gx#expander::t _$args83431_)))
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
      (lambda _$args83428_
        (apply make-instance gx#core-expander::t _$args83428_)))
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
      (lambda _$args83425_
        (apply make-instance gx#expression-form::t _$args83425_)))
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
      (lambda _$args83422_
        (apply make-instance gx#special-form::t _$args83422_)))
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
      (lambda _$args83419_
        (apply make-instance gx#definition-form::t _$args83419_)))
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
      (lambda _$args83416_
        (apply make-instance gx#top-special-form::t _$args83416_)))
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
      (lambda _$args83413_
        (apply make-instance gx#module-special-form::t _$args83413_)))
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
      (lambda _$args83410_
        (apply make-instance gx#feature-expander::t _$args83410_)))
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
      (lambda _$args83407_
        (apply make-instance gx#private-feature-expander::t _$args83407_)))
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
      (lambda _$args83404_
        (apply make-instance gx#reserved-expander::t _$args83404_)))
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
      (lambda _$args83401_
        (apply make-instance gx#macro-expander::t _$args83401_)))
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
      (lambda _$args83398_
        (apply make-instance gx#rename-macro-expander::t _$args83398_)))
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
      (lambda _$args83395_
        (apply make-instance gx#user-expander::t _$args83395_)))
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
      (lambda _$args83392_
        (apply make-instance gx#expander-mark::t _$args83392_)))
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
      (lambda (_ctx83377_ _message83378_ _stx83379_ . _details83380_)
        (let ((_ctx83390_
               (let ((_$e83382_ _ctx83377_))
                 (if _$e83382_
                     _$e83382_
                     (let ((_$e83385_ (gx#core-context-top__0)))
                       (if _$e83385_
                           ((lambda (_ctx83388_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx83388_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e83385_)
                           '#f))))))
          (raise (make-syntax-error
                  _message83378_
                  (cons _stx83379_ _details83380_)
                  _ctx83390_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx83364_ _expression?83365_)
        (gx#eval-syntax* (gx#core-expand__% _stx83364_ _expression?83365_))))
    (define gx#eval-syntax__0
      (lambda (_stx83370_)
        (let ((_expression?83372_ '#f))
          (gx#eval-syntax__% _stx83370_ _expression?83372_))))
    (define gx#eval-syntax
      (lambda _g83801_
        (let ((_g83800_ (##length _g83801_)))
          (cond ((##fx= _g83800_ 1)
                 (apply (lambda (_stx83370_) (gx#eval-syntax__0 _stx83370_))
                        _g83801_))
                ((##fx= _g83800_ 2)
                 (apply (lambda (_stx83374_ _expression?83375_)
                          (gx#eval-syntax__% _stx83374_ _expression?83375_))
                        _g83801_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g83801_))))))
    (define gx#eval-syntax*
      (lambda (_stx83361_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx83361_))))
    (define gx#core-expand__%
      (lambda (_stx83348_ _expression?83349_)
        (if _expression?83349_
            (gx#core-expand-expression _stx83348_)
            (gx#core-expand-top _stx83348_))))
    (define gx#core-expand__0
      (lambda (_stx83354_)
        (let ((_expression?83356_ '#f))
          (gx#core-expand__% _stx83354_ _expression?83356_))))
    (define gx#core-expand
      (lambda _g83803_
        (let ((_g83802_ (##length _g83803_)))
          (cond ((##fx= _g83802_ 1)
                 (apply (lambda (_stx83354_) (gx#core-expand__0 _stx83354_))
                        _g83803_))
                ((##fx= _g83802_ 2)
                 (apply (lambda (_stx83358_ _expression?83359_)
                          (gx#core-expand__% _stx83358_ _expression?83359_))
                        _g83803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g83803_))))))
    (define gx#core-expand-top
      (lambda (_stx83315_)
        (let* ((_stx83317_ (gx#core-expand*__0 _stx83315_))
               (_e8331883325_ _stx83317_)
               (_E8332083329_
                (lambda () (gx#core-expand-expression _stx83317_)))
               (_E8331983343_
                (lambda ()
                  (if (gx#stx-pair? _e8331883325_)
                      (let ((_e8332183333_ (gx#syntax-e _e8331883325_)))
                        (let ((_hd8332283336_ (##car _e8332183333_))
                              (_tl8332383338_ (##cdr _e8332183333_)))
                          (let ((_form83341_ _hd8332283336_))
                            (if (gx#core-bound-identifier?__0 _form83341_)
                                _stx83317_
                                (_E8332083329_)))))
                      (_E8332083329_)))))
          (_E8331983343_))))
    (define gx#core-expand-expression
      (lambda (_stx83262_)
        (letrec ((_sealed-expression?83264_
                  (lambda (_hd83285_)
                    (if (gx#sealed-syntax? _hd83285_)
                        (let* ((_e8328683293_ _hd83285_)
                               (_E8328883297_ (lambda () '#f))
                               (_E8328783311_
                                (lambda ()
                                  (if (gx#stx-pair? _e8328683293_)
                                      (let ((_e8328983301_
                                             (gx#syntax-e _e8328683293_)))
                                        (let ((_hd8329083304_
                                               (##car _e8328983301_))
                                              (_tl8329183306_
                                               (##cdr _e8328983301_)))
                                          (let ((_form83309_ _hd8329083304_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form83309_
                                                 gx#expression-form-binding?)
                                                (_E8328883297_)))))
                                      (_E8328883297_)))))
                          (_E8328783311_))
                        '#f)))
                 (_illegal-expression83265_
                  (lambda (_hd83283_ . _g83804_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx83262_
                     _hd83283_)))
                 (_expand-e83266_
                  (lambda (_form83278_ _hd83279_)
                    (let ((_bind83281_
                           (if (##structure-instance-of?
                                _form83278_
                                'gx#binding::t)
                               _form83278_
                               (gx#resolve-identifier__0 _form83278_))))
                      (if (gx#core-expander-binding? _bind83281_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind83281_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd83279_
                            (gx#stx-source _stx83262_)))
                          (if (##structure-direct-instance-of?
                               _bind83281_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind83281_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd83279_
                                 (gx#stx-source _stx83262_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx83262_
                               _form83278_)))))))
          (let ((_hd83268_ (gx#core-expand-head _stx83262_)))
            (if (_sealed-expression?83264_ _hd83268_)
                _hd83268_
                (if (gx#stx-pair? _hd83268_)
                    (let* ((_form83270_ (gx#stx-car _hd83268_))
                           (_bind83272_
                            (if (gx#identifier? _form83270_)
                                (gx#resolve-identifier__0 _form83270_)
                                '#f)))
                      (if (or (not _bind83272_)
                              (not (gx#core-expander-binding? _bind83272_)))
                          (_expand-e83266_ '%%app (cons '%%app _hd83268_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind83272_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd83268_
                               _illegal-expression83265_)
                              (if (gx#expression-form-binding? _bind83272_)
                                  (_expand-e83266_ _bind83272_ _hd83268_)
                                  (if (gx#direct-special-form-binding?
                                       _bind83272_)
                                      (gx#core-expand-expression
                                       (_expand-e83266_ _bind83272_ _hd83268_))
                                      (_illegal-expression83265_
                                       _hd83268_))))))
                    (if (gx#core-bound-identifier?__0 _hd83268_)
                        (_illegal-expression83265_ _hd83268_)
                        (if (gx#identifier? _hd83268_)
                            (_expand-e83266_
                             '%%ref
                             (cons '%%ref (cons _hd83268_ '())))
                            (if (gx#stx-datum? _hd83268_)
                                (_expand-e83266_
                                 '%#quote
                                 (cons '%#quote (cons _hd83268_ '())))
                                (_illegal-expression83265_ _hd83268_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx83257_)
        (call-with-parameters
         (lambda ()
           (let ((_stx83260_ (gx#core-expand-expression _stx83257_)))
             (values _stx83260_ (gx#eval-syntax* _stx83260_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx83238_ _stop?83239_)
        (let _lp83241_ ((_stx83243_ _stx83238_))
          (if (_stop?83239_ _stx83243_)
              _stx83243_
              (let ((_rstx83245_ (gx#core-expand1 _stx83243_)))
                (if (eq? _stx83243_ _rstx83245_)
                    _stx83243_
                    (_lp83241_ _rstx83245_)))))))
    (define gx#core-expand*__0
      (lambda (_stx83250_)
        (let ((_stop?83252_ false))
          (gx#core-expand*__% _stx83250_ _stop?83252_))))
    (define gx#core-expand*
      (lambda _g83806_
        (let ((_g83805_ (##length _g83806_)))
          (cond ((##fx= _g83805_ 1)
                 (apply (lambda (_stx83250_) (gx#core-expand*__0 _stx83250_))
                        _g83806_))
                ((##fx= _g83805_ 2)
                 (apply (lambda (_stx83254_ _stop?83255_)
                          (gx#core-expand*__% _stx83254_ _stop?83255_))
                        _g83806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g83806_))))))
    (define gx#core-expand1
      (lambda (_stx83194_)
        (letrec ((_step83196_
                  (lambda (_hd83233_)
                    (let ((_bind83235_ (gx#resolve-identifier__0 _hd83233_)))
                      (if (##structure-instance-of?
                           _bind83235_
                           'gx#runtime-binding::t)
                          _stx83194_
                          (if (##structure-direct-instance-of?
                               _bind83235_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind83235_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx83194_)
                              (if (not _bind83235_)
                                  _stx83194_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx83194_))))))))
          (let* ((_e8319783205_ _stx83194_)
                 (_E8320383209_ (lambda () _stx83194_))
                 (_E8319983215_
                  (lambda ()
                    (let ((_hd83213_ _e8319783205_))
                      (if (gx#identifier? _hd83213_)
                          (_step83196_ _hd83213_)
                          (_E8320383209_)))))
                 (_E8319883229_
                  (lambda ()
                    (if (gx#stx-pair? _e8319783205_)
                        (let ((_e8320083219_ (gx#syntax-e _e8319783205_)))
                          (let ((_hd8320183222_ (##car _e8320083219_))
                                (_tl8320283224_ (##cdr _e8320083219_)))
                            (let ((_hd83227_ _hd8320183222_))
                              (if (gx#identifier? _hd83227_)
                                  (_step83196_ _hd83227_)
                                  (_E8319983215_)))))
                        (_E8319983215_)))))
            (_E8319883229_)))))
    (define gx#core-expand-head
      (lambda (_stx83160_)
        (letrec ((_stop?83162_
                  (lambda (_stx83164_)
                    (let* ((_e8316583172_ _stx83164_)
                           (_E8316783176_ (lambda () '#f))
                           (_E8316683190_
                            (lambda ()
                              (if (gx#stx-pair? _e8316583172_)
                                  (let ((_e8316883180_
                                         (gx#syntax-e _e8316583172_)))
                                    (let ((_hd8316983183_
                                           (##car _e8316883180_))
                                          (_tl8317083185_
                                           (##cdr _e8316883180_)))
                                      (let ((_hd83188_ _hd8316983183_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd83188_)
                                            (_E8316783176_)))))
                                  (_E8316783176_)))))
                      (_E8316683190_)))))
          (gx#core-expand*__% _stx83160_ _stop?83162_))))
    (define gx#core-expand-block__%
      (lambda (_stx82966_
               _expand-special82967_
               _begin-form82968_
               _expand-e82969_)
        (letrec ((_expand-splice82971_
                  (lambda (_hd83134_ _body83135_ _rest83136_ _r83137_)
                    (if (gx#stx-list? _body83135_)
                        (_K82975_
                         (gx#stx-foldr cons _rest83136_ _body83135_)
                         _r83137_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx82966_
                         _hd83134_))))
                 (_expand-cond-expand82972_
                  (lambda (_hd83130_ _rest83131_ _r83132_)
                    (_K82975_
                     (cons (gx#core-expand-cond-expand% _hd83130_) _rest83131_)
                     _r83132_)))
                 (_expand-include82973_
                  (lambda (_hd83079_ _rest83080_ _r83081_)
                    (let* ((_e8308283092_ _hd83079_)
                           (_E8308483096_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8308283092_)))
                           (_E8308383126_
                            (lambda ()
                              (if (gx#stx-pair? _e8308283092_)
                                  (let ((_e8308583100_
                                         (gx#syntax-e _e8308283092_)))
                                    (let ((_hd8308683103_
                                           (##car _e8308583100_))
                                          (_tl8308783105_
                                           (##cdr _e8308583100_)))
                                      (if (gx#stx-pair? _tl8308783105_)
                                          (let ((_e8308883108_
                                                 (gx#syntax-e _tl8308783105_)))
                                            (let ((_hd8308983111_
                                                   (##car _e8308883108_))
                                                  (_tl8309083113_
                                                   (##cdr _e8308883108_)))
                                              (let ((_path83116_
                                                     _hd8308983111_))
                                                (if (gx#stx-null?
                                                     _tl8309083113_)
                                                    (if (gx#stx-string?
                                                         _path83116_)
                                                        (let* ((_rpath83118_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path83116_
                         (gx#stx-source _hd83079_)))
                       (_block83120_
                        (gx#core-expand-include%__% _hd83079_ _rpath83118_))
                       (_rbody83123_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block83120_
                            _expand-special82967_
                            '#f
                            _expand-e82969_))
                         gx#current-expander-path
                         (cons _rpath83118_ (gx#current-expander-path)))))
                  (_K82975_ _rest83080_ (foldr1 cons _r83081_ _rbody83123_)))
                (_E8308483096_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8308483096_)))))
                                          (_E8308483096_))))
                                  (_E8308483096_)))))
                      (_E8308383126_))))
                 (_expand-expression82974_
                  (lambda (_hd83075_ _rest83076_ _r83077_)
                    (_K82975_
                     _rest83076_
                     (cons (_expand-e82969_ _hd83075_) _r83077_))))
                 (_K82975_
                  (lambda (_rest83005_ _r83006_)
                    (let* ((_e8300783014_ _rest83005_)
                           (_E8300983018_
                            (lambda ()
                              (if _begin-form82968_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form82968_
                                    (reverse _r83006_))
                                   (gx#stx-source _stx82966_))
                                  _r83006_)))
                           (_E8300883071_
                            (lambda ()
                              (if (gx#stx-pair? _e8300783014_)
                                  (let ((_e8301083022_
                                         (gx#syntax-e _e8300783014_)))
                                    (let ((_hd8301183025_
                                           (##car _e8301083022_))
                                          (_tl8301283027_
                                           (##cdr _e8301083022_)))
                                      (let* ((_hd83030_ _hd8301183025_)
                                             (_rest83032_ _tl8301283027_))
                                        (if '#t
                                            (let* ((_hd83034_
                                                    (gx#core-expand-head
                                                     _hd83030_))
                                                   (_e8303583042_ _hd83034_)
                                                   (_E8303783046_
                                                    (lambda ()
                                                      (_expand-expression82974_
                                                       _hd83034_
                                                       _rest83032_
                                                       _r83006_)))
                                                   (_E8303683067_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8303583042_)
                                                          (let ((_e8303883050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8303583042_)))
                    (let ((_hd8303983053_ (##car _e8303883050_))
                          (_tl8304083055_ (##cdr _e8303883050_)))
                      (let* ((_form83058_ _hd8303983053_)
                             (_body83060_ _tl8304083055_))
                        (if '#t
                            (let ((_bind83062_
                                   (if (gx#identifier? _form83058_)
                                       (gx#resolve-identifier__0 _form83058_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind83062_)
                                  (let ((_$e83064_
                                         (##unchecked-structure-ref
                                          _bind83062_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e83064_)
                                        (_expand-splice82971_
                                         _hd83034_
                                         _body83060_
                                         _rest83032_
                                         _r83006_)
                                        (if (eq? '%#cond-expand _$e83064_)
                                            (_expand-cond-expand82972_
                                             _hd83034_
                                             _rest83032_
                                             _r83006_)
                                            (if (eq? '%#include _$e83064_)
                                                (_expand-include82973_
                                                 _hd83034_
                                                 _rest83032_
                                                 _r83006_)
                                                (_expand-special82967_
                                                 _hd83034_
                                                 _K82975_
                                                 _rest83032_
                                                 _r83006_)))))
                                  (_expand-expression82974_
                                   _hd83034_
                                   _rest83032_
                                   _r83006_)))
                            (_E8303783046_)))))
                  (_E8303783046_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8303683067_))
                                            (_E8300983018_)))))
                                  (_E8300983018_)))))
                      (_E8300883071_)))))
          (let* ((_e8297682983_ _stx82966_)
                 (_E8297882987_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8297682983_)))
                 (_E8297783001_
                  (lambda ()
                    (if (gx#stx-pair? _e8297682983_)
                        (let ((_e8297982991_ (gx#syntax-e _e8297682983_)))
                          (let ((_hd8298082994_ (##car _e8297982991_))
                                (_tl8298182996_ (##cdr _e8297982991_)))
                            (let ((_body82999_ _tl8298182996_))
                              (if (gx#stx-list? _body82999_)
                                  (_K82975_ _body82999_ '())
                                  (_E8297882987_)))))
                        (_E8297882987_)))))
            (_E8297783001_)))))
    (define gx#core-expand-block__0
      (lambda (_stx83142_ _expand-special83143_)
        (let* ((_begin-form83145_ '%#begin)
               (_expand-e83147_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx83142_
           _expand-special83143_
           _begin-form83145_
           _expand-e83147_))))
    (define gx#core-expand-block__1
      (lambda (_stx83149_ _expand-special83150_ _begin-form83151_)
        (let ((_expand-e83153_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx83149_
           _expand-special83150_
           _begin-form83151_
           _expand-e83153_))))
    (define gx#core-expand-block
      (lambda _g83808_
        (let ((_g83807_ (##length _g83808_)))
          (cond ((##fx= _g83807_ 2)
                 (apply (lambda (_stx83142_ _expand-special83143_)
                          (gx#core-expand-block__0
                           _stx83142_
                           _expand-special83143_))
                        _g83808_))
                ((##fx= _g83807_ 3)
                 (apply (lambda (_stx83149_
                                 _expand-special83150_
                                 _begin-form83151_)
                          (gx#core-expand-block__1
                           _stx83149_
                           _expand-special83150_
                           _begin-form83151_))
                        _g83808_))
                ((##fx= _g83807_ 4)
                 (apply (lambda (_stx83155_
                                 _expand-special83156_
                                 _begin-form83157_
                                 _expand-e83158_)
                          (gx#core-expand-block__%
                           _stx83155_
                           _expand-special83156_
                           _begin-form83157_
                           _expand-e83158_))
                        _g83808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g83808_))))))
    (define gx#core-expand-block*
      (lambda (_stx82914_ _expand-special82915_)
        (let* ((_g8291682927_
                (gx#core-expand-block__1 _stx82914_ _expand-special82915_ '#f))
               (_E8292082931_
                (lambda () (error '"No clause matching" _g8291682927_))))
          (let ((_K8292582962_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx82914_)))
                (_K8292282948_ (lambda (_expr82946_) _expr82946_))
                (_K8292182937_
                 (lambda (_body82935_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body82935_))
                    (gx#stx-source _stx82914_)))))
            (let ((_try-match8291882958_
                   (lambda ()
                     (if (##pair? _g8291682927_)
                         (let ((_tl8292482953_ (##cdr _g8291682927_))
                               (_hd8292382951_ (##car _g8291682927_)))
                           (if (##null? _tl8292482953_)
                               (let ((_expr82956_ _hd8292382951_))
                                 (_K8292282948_ _expr82956_))
                               (let ((_body82940_ _g8291682927_))
                                 (_K8292182937_ _body82940_))))
                         (let ((_body82940_ _g8291682927_))
                           (_K8292182937_ _body82940_))))))
              (if (##null? _g8291682927_)
                  (_K8292582962_)
                  (_try-match8291882958_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx82742_)
        (letrec ((_satisfied?82744_
                  (lambda (_condition82842_)
                    (let* ((_e8284382858_ _condition82842_)
                           (_E8285382862_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8284382858_)))
                           (_E8284682881_
                            (lambda ()
                              (if (gx#stx-pair? _e8284382858_)
                                  (let ((_e8285482866_
                                         (gx#syntax-e _e8284382858_)))
                                    (let ((_hd8285582869_
                                           (##car _e8285482866_))
                                          (_tl8285682871_
                                           (##cdr _e8285482866_)))
                                      (let* ((_combinator82874_ _hd8285582869_)
                                             (_body82876_ _tl8285682871_))
                                        (if (gx#stx-list? _body82876_)
                                            (let ((_$e82878_
                                                   (gx#stx-e
                                                    _combinator82874_)))
                                              (if (eq? 'not _$e82878_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?82744_
                                                        _body82876_))
                                                  (if (eq? 'and _$e82878_)
                                                      (gx#stx-andmap
                                                       _satisfied?82744_
                                                       _body82876_)
                                                      (if (eq? 'or _$e82878_)
                                                          (gx#stx-ormap
                                                           _satisfied?82744_
                                                           _body82876_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e82878_)
                      (gx#stx-andmap gx#core-resolve-identifier _body82876_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx82742_
                       _combinator82874_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8285382862_)))))
                                  (_E8285382862_))))
                           (_E8284582904_
                            (lambda ()
                              (if (gx#stx-pair? _e8284382858_)
                                  (let ((_e8284782885_
                                         (gx#syntax-e _e8284382858_)))
                                    (let ((_hd8284882888_
                                           (##car _e8284782885_))
                                          (_tl8284982890_
                                           (##cdr _e8284782885_)))
                                      (if (and (gx#identifier? _hd8284882888_)
                                               (gx#core-identifier=?
                                                _hd8284882888_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8284982890_)
                                              (let ((_e8285082893_
                                                     (gx#syntax-e
                                                      _tl8284982890_)))
                                                (let ((_hd8285182896_
                                                       (##car _e8285082893_))
                                                      (_tl8285282898_
                                                       (##cdr _e8285082893_)))
                                                  (let ((_expr82901_
                                                         _hd8285182896_))
                                                    (if (gx#stx-null?
                                                         _tl8285282898_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr82901_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8284682881_))
                (_E8284682881_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8284682881_))
                                          (_E8284682881_))))
                                  (_E8284682881_))))
                           (_E8284482910_
                            (lambda ()
                              (let ((_id82908_ _e8284382858_))
                                (if (gx#identifier? _id82908_)
                                    (gx#core-bound-identifier?__%
                                     _id82908_
                                     gx#feature-binding?)
                                    (_E8284582904_))))))
                      (_E8284482910_))))
                 (_loop82745_
                  (lambda (_rest82775_)
                    (let* ((_e8277682784_ _rest82775_)
                           (_E8278282788_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8277682784_)))
                           (_E8277882792_
                            (lambda ()
                              (if (gx#stx-null? _e8277682784_)
                                  (if '#t '() (_E8278282788_))
                                  (_E8278282788_))))
                           (_E8277782838_
                            (lambda ()
                              (if (gx#stx-pair? _e8277682784_)
                                  (let ((_e8277982796_
                                         (gx#syntax-e _e8277682784_)))
                                    (let ((_hd8278082799_
                                           (##car _e8277982796_))
                                          (_tl8278182801_
                                           (##cdr _e8277982796_)))
                                      (let* ((_hd82804_ _hd8278082799_)
                                             (_rest82806_ _tl8278182801_))
                                        (if '#t
                                            (let* ((_e8280782814_ _hd82804_)
                                                   (_E8280982818_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8280782814_)))
                                                   (_E8280882834_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8280782814_)
                                                          (let ((_e8281082822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8280782814_)))
                    (let ((_hd8281182825_ (##car _e8281082822_))
                          (_tl8281282827_ (##cdr _e8281082822_)))
                      (let* ((_condition82830_ _hd8281182825_)
                             (_body82832_ _tl8281282827_))
                        (if '#t
                            (if (gx#stx-eq? _condition82830_ 'else)
                                (if (gx#stx-null? _rest82806_)
                                    _body82832_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx82742_
                                     _hd82804_))
                                (if (_satisfied?82744_ _condition82830_)
                                    _body82832_
                                    (_loop82745_ _rest82806_)))
                            (_E8280982818_)))))
                  (_E8280982818_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8280882834_))
                                            (_E8277882792_)))))
                                  (_E8277882792_)))))
                      (_E8277782838_)))))
          (let* ((_e8274682753_ _stx82742_)
                 (_E8274882757_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8274682753_)))
                 (_E8274782771_
                  (lambda ()
                    (if (gx#stx-pair? _e8274682753_)
                        (let ((_e8274982761_ (gx#syntax-e _e8274682753_)))
                          (let ((_hd8275082764_ (##car _e8274982761_))
                                (_tl8275182766_ (##cdr _e8274982761_)))
                            (let ((_clauses82769_ _tl8275182766_))
                              (if (gx#stx-list? _clauses82769_)
                                  (gx#core-cons
                                   'begin
                                   (_loop82745_ _clauses82769_))
                                  (_E8274882757_)))))
                        (_E8274882757_)))))
            (_E8274782771_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx82685_ _rpath82686_)
        (let* ((_e8268782697_ _stx82685_)
               (_E8268982701_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8268782697_)))
               (_E8268882728_
                (lambda ()
                  (if (gx#stx-pair? _e8268782697_)
                      (let ((_e8269082705_ (gx#syntax-e _e8268782697_)))
                        (let ((_hd8269182708_ (##car _e8269082705_))
                              (_tl8269282710_ (##cdr _e8269082705_)))
                          (if (gx#stx-pair? _tl8269282710_)
                              (let ((_e8269382713_
                                     (gx#syntax-e _tl8269282710_)))
                                (let ((_hd8269482716_ (##car _e8269382713_))
                                      (_tl8269582718_ (##cdr _e8269382713_)))
                                  (let ((_path82721_ _hd8269482716_))
                                    (if (gx#stx-null? _tl8269582718_)
                                        (if (gx#stx-string? _path82721_)
                                            (let ((_rpath82726_
                                                   (let ((_$e82723_
                                                          _rpath82686_))
                                                     (if _$e82723_
                                                         _$e82723_
                                                         (gx#core-resolve-path__%
                                                          _path82721_
                                                          (gx#stx-source
                                                           _stx82685_))))))
                                              (if (member _rpath82726_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx82685_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath82726_))
                                                    (gx#stx-source
                                                     _stx82685_)))))
                                            (_E8268982701_))
                                        (_E8268982701_)))))
                              (_E8268982701_))))
                      (_E8268982701_)))))
          (_E8268882728_))))
    (define gx#core-expand-include%__0
      (lambda (_stx82735_)
        (let ((_rpath82737_ '#f))
          (gx#core-expand-include%__% _stx82735_ _rpath82737_))))
    (define gx#core-expand-include%
      (lambda _g83810_
        (let ((_g83809_ (##length _g83810_)))
          (cond ((##fx= _g83809_ 1)
                 (apply (lambda (_stx82735_)
                          (gx#core-expand-include%__0 _stx82735_))
                        _g83810_))
                ((##fx= _g83809_ 2)
                 (apply (lambda (_stx82739_ _rpath82740_)
                          (gx#core-expand-include%__% _stx82739_ _rpath82740_))
                        _g83810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g83810_))))))
    (define gx#core-apply-expander__%
      (lambda (_K82654_ _stx82655_ _method82656_)
        (if (procedure? _K82654_)
            (let ((_$e82658_ (gx#stx-source _stx82655_)))
              (if _$e82658_
                  ((lambda (_g8266082662_)
                     (gx#stx-wrap-source (_K82654_ _stx82655_) _g8266082662_))
                   _$e82658_)
                  (_K82654_ _stx82655_)))
            (let ((_$e82665_ (bound-method-ref _K82654_ _method82656_)))
              (if _$e82665_
                  ((lambda (_g8266782669_)
                     (gx#core-apply-expander__%
                      _g8266782669_
                      _stx82655_
                      _method82656_))
                   _$e82665_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx82655_
                   _method82656_))))))
    (define gx#core-apply-expander__0
      (lambda (_K82675_ _stx82676_)
        (let ((_method82678_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K82675_ _stx82676_ _method82678_))))
    (define gx#core-apply-expander
      (lambda _g83812_
        (let ((_g83811_ (##length _g83812_)))
          (cond ((##fx= _g83811_ 2)
                 (apply (lambda (_K82675_ _stx82676_)
                          (gx#core-apply-expander__0 _K82675_ _stx82676_))
                        _g83812_))
                ((##fx= _g83811_ 3)
                 (apply (lambda (_K82680_ _stx82681_ _method82682_)
                          (gx#core-apply-expander__%
                           _K82680_
                           _stx82681_
                           _method82682_))
                        _g83812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g83812_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self82650_ _stx82651_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx82651_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self82503_ _stx82504_)
        (let* ((_self8250582511_ _self82503_)
               (_E8250782515_
                (lambda () (error '"No clause matching" _self8250582511_)))
               (_K8250882520_
                (lambda (_K82518_)
                  (gx#core-apply-expander__0 _K82518_ _stx82504_))))
          (if (##structure-instance-of? _self8250582511_ 'gx#core-macro::t)
              (let* ((_e8250982523_
                      (##unchecked-structure-ref
                       _self8250582511_
                       '1
                       gx#expander::t
                       '#f))
                     (_K82526_ _e8250982523_))
                (_K8250882520_ _K82526_))
              (_E8250782515_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self82356_ _stx82357_)
        (if (gx#sealed-syntax? _stx82357_)
            _stx82357_
            (let* ((_self8235882364_ _self82356_)
                   (_E8236082368_
                    (lambda () (error '"No clause matching" _self8235882364_)))
                   (_K8236182373_
                    (lambda (_K82371_)
                      (gx#core-apply-expander__0 _K82371_ _stx82357_))))
              (if (##structure-instance-of?
                   _self8235882364_
                   'gx#core-expander::t)
                  (let* ((_e8236282376_
                          (##unchecked-structure-ref
                           _self8235882364_
                           '1
                           gx#expander::t
                           '#f))
                         (_K82379_ _e8236282376_))
                    (_K8236182373_ _K82379_))
                  (_E8236082368_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self82218_ _stx82219_ _top?82220_)
        (if (_top?82220_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self82218_ _stx82219_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx82219_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self82225_ _stx82226_)
        (let ((_top?82228_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self82225_
           _stx82226_
           _top?82228_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g83814_
        (let ((_g83813_ (##length _g83814_)))
          (cond ((##fx= _g83813_ 2)
                 (apply (lambda (_self82225_ _stx82226_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self82225_
                           _stx82226_))
                        _g83814_))
                ((##fx= _g83813_ 3)
                 (apply (lambda (_self82230_ _stx82231_ _top?82232_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self82230_
                           _stx82231_
                           _top?82232_))
                        _g83814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g83814_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self82092_ _stx82093_)
        (gx#top-special-form::apply-macro-expander__%
         _self82092_
         _stx82093_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self81917_ _stx81918_)
        (let* ((_self8191981925_ _self81917_)
               (_E8192181929_
                (lambda () (error '"No clause matching" _self8191981925_)))
               (_K8192281962_
                (lambda (_id81932_)
                  (let* ((_e8193381940_ _stx81918_)
                         (_E8193581944_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8193381940_)))
                         (_E8193481958_
                          (lambda ()
                            (if (gx#stx-pair? _e8193381940_)
                                (let ((_e8193681948_
                                       (gx#syntax-e _e8193381940_)))
                                  (let ((_hd8193781951_ (##car _e8193681948_))
                                        (_tl8193881953_ (##cdr _e8193681948_)))
                                    (let ((_body81956_ _tl8193881953_))
                                      (if '#t
                                          (gx#core-cons _id81932_ _body81956_)
                                          (_E8193581944_)))))
                                (_E8193581944_)))))
                    (_E8193481958_)))))
          (if (##structure-instance-of?
               _self8191981925_
               'gx#rename-macro-expander::t)
              (let* ((_e8192381965_
                      (##unchecked-structure-ref
                       _self8191981925_
                       '1
                       gx#expander::t
                       '#f))
                     (_id81968_ _e8192381965_))
                (_K8192281962_ _id81968_))
              (_E8192181929_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self81743_ _stx81744_ _method81745_)
        (let* ((_self8174681754_ _self81743_)
               (_E8174881758_
                (lambda () (error '"No clause matching" _self8174681754_)))
               (_K8174981765_
                (lambda (_phi81761_ _ctx81762_ _K81763_)
                  (gx#core-apply-user-macro
                   _K81763_
                   _stx81744_
                   _ctx81762_
                   _phi81761_
                   _method81745_))))
          (if (##structure-instance-of? _self8174681754_ 'gx#macro-expander::t)
              (let* ((_e8175081768_
                      (##unchecked-structure-ref
                       _self8174681754_
                       '1
                       gx#expander::t
                       '#f))
                     (_K81771_ _e8175081768_)
                     (_e8175181773_
                      (##unchecked-structure-ref
                       _self8174681754_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx81776_ _e8175181773_)
                     (_e8175281778_
                      (##unchecked-structure-ref
                       _self8174681754_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi81781_ _e8175281778_))
                (_K8174981765_ _phi81781_ _ctx81776_ _K81771_))
              (_E8174881758_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self81786_ _stx81787_)
        (let ((_method81789_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self81786_
           _stx81787_
           _method81789_))))
    (define gx#core-apply-user-expander
      (lambda _g83816_
        (let ((_g83815_ (##length _g83816_)))
          (cond ((##fx= _g83815_ 2)
                 (apply (lambda (_self81786_ _stx81787_)
                          (gx#core-apply-user-expander__0
                           _self81786_
                           _stx81787_))
                        _g83816_))
                ((##fx= _g83815_ 3)
                 (apply (lambda (_self81791_ _stx81792_ _method81793_)
                          (gx#core-apply-user-expander__%
                           _self81791_
                           _stx81792_
                           _method81793_))
                        _g83816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g83816_))))))
    (define gx#core-apply-user-macro
      (lambda (_K81733_ _stx81734_ _ctx81735_ _phi81736_ _method81737_)
        (let ((_mark81739_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx81735_
                _phi81736_
                _stx81734_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K81733_
               (gx#stx-apply-mark _stx81734_ _mark81739_)
               _method81737_)
              _mark81739_))
           gx#current-expander-marks
           (cons _mark81739_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx81585_ _phi81586_ _ctx81587_)
        (let _lp81589_ ((_bind81591_
                         (gx#core-resolve-identifier__%
                          _stx81585_
                          _phi81586_
                          _ctx81587_)))
          (if (##structure-direct-instance-of?
               _bind81591_
               'gx#import-binding::t)
              (_lp81589_
               (##unchecked-structure-ref
                _bind81591_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind81591_
                   'gx#alias-binding::t)
                  (_lp81589_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind81591_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi81586_
                    _ctx81587_))
                  _bind81591_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx81596_)
        (let* ((_phi81598_ (gx#current-expander-phi))
               (_ctx81600_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx81596_ _phi81598_ _ctx81600_))))
    (define gx#resolve-identifier__1
      (lambda (_stx81602_ _phi81603_)
        (let ((_ctx81605_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx81602_ _phi81603_ _ctx81605_))))
    (define gx#resolve-identifier
      (lambda _g83818_
        (let ((_g83817_ (##length _g83818_)))
          (cond ((##fx= _g83817_ 1)
                 (apply (lambda (_stx81596_)
                          (gx#resolve-identifier__0 _stx81596_))
                        _g83818_))
                ((##fx= _g83817_ 2)
                 (apply (lambda (_stx81602_ _phi81603_)
                          (gx#resolve-identifier__1 _stx81602_ _phi81603_))
                        _g83818_))
                ((##fx= _g83817_ 3)
                 (apply (lambda (_stx81607_ _phi81608_ _ctx81609_)
                          (gx#resolve-identifier__%
                           _stx81607_
                           _phi81608_
                           _ctx81609_))
                        _g83818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g83818_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx81543_ _val81544_ _rebind?81545_ _phi81546_ _ctx81547_)
        (let ((_rebind?81549_
               (if (not _rebind?81545_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?81545_) _rebind?81545_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx81543_)
           _val81544_
           _rebind?81549_
           _phi81546_
           _ctx81547_))))
    (define gx#bind-identifier!__0
      (lambda (_stx81554_ _val81555_)
        (let* ((_rebind?81557_ '#f)
               (_phi81559_ (gx#current-expander-phi))
               (_ctx81561_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx81554_
           _val81555_
           _rebind?81557_
           _phi81559_
           _ctx81561_))))
    (define gx#bind-identifier!__1
      (lambda (_stx81563_ _val81564_ _rebind?81565_)
        (let* ((_phi81567_ (gx#current-expander-phi))
               (_ctx81569_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx81563_
           _val81564_
           _rebind?81565_
           _phi81567_
           _ctx81569_))))
    (define gx#bind-identifier!__2
      (lambda (_stx81571_ _val81572_ _rebind?81573_ _phi81574_)
        (let ((_ctx81576_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx81571_
           _val81572_
           _rebind?81573_
           _phi81574_
           _ctx81576_))))
    (define gx#bind-identifier!
      (lambda _g83820_
        (let ((_g83819_ (##length _g83820_)))
          (cond ((##fx= _g83819_ 2)
                 (apply (lambda (_stx81554_ _val81555_)
                          (gx#bind-identifier!__0 _stx81554_ _val81555_))
                        _g83820_))
                ((##fx= _g83819_ 3)
                 (apply (lambda (_stx81563_ _val81564_ _rebind?81565_)
                          (gx#bind-identifier!__1
                           _stx81563_
                           _val81564_
                           _rebind?81565_))
                        _g83820_))
                ((##fx= _g83819_ 4)
                 (apply (lambda (_stx81571_
                                 _val81572_
                                 _rebind?81573_
                                 _phi81574_)
                          (gx#bind-identifier!__2
                           _stx81571_
                           _val81572_
                           _rebind?81573_
                           _phi81574_))
                        _g83820_))
                ((##fx= _g83819_ 5)
                 (apply (lambda (_stx81578_
                                 _val81579_
                                 _rebind?81580_
                                 _phi81581_
                                 _ctx81582_)
                          (gx#bind-identifier!__%
                           _stx81578_
                           _val81579_
                           _rebind?81580_
                           _phi81581_
                           _ctx81582_))
                        _g83820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g83820_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx81515_ _phi81516_ _ctx81517_)
        (let _lp81519_ ((_e81521_ _stx81515_)
                        (_marks81522_ (gx#current-expander-marks)))
          (if (symbol? _e81521_)
              (gx#core-resolve-binding
               _e81521_
               _phi81516_
               _phi81516_
               _ctx81517_
               (reverse _marks81522_))
              (if (gx#identifier-quote? _e81521_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e81521_ '1 gx#AST::t '#f)
                   _phi81516_
                   '0
                   (##unchecked-structure-ref
                    _e81521_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e81521_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e81521_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e81521_ '1 gx#AST::t '#f)
                       _phi81516_
                       _phi81516_
                       _ctx81517_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e81521_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks81522_))
                      (if (##structure-direct-instance-of?
                           _e81521_
                           'gx#syntax-wrap::t)
                          (_lp81519_
                           (##unchecked-structure-ref
                            _e81521_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e81521_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks81522_))
                          (if (##structure-instance-of?
                               _e81521_
                               'gerbil#AST::t)
                              (_lp81519_
                               (##unchecked-structure-ref
                                _e81521_
                                '1
                                gx#AST::t
                                '#f)
                               _marks81522_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx81515_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx81527_)
        (let* ((_phi81529_ (gx#current-expander-phi))
               (_ctx81531_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx81527_ _phi81529_ _ctx81531_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx81533_ _phi81534_)
        (let ((_ctx81536_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx81533_ _phi81534_ _ctx81536_))))
    (define gx#core-resolve-identifier
      (lambda _g83822_
        (let ((_g83821_ (##length _g83822_)))
          (cond ((##fx= _g83821_ 1)
                 (apply (lambda (_stx81527_)
                          (gx#core-resolve-identifier__0 _stx81527_))
                        _g83822_))
                ((##fx= _g83821_ 2)
                 (apply (lambda (_stx81533_ _phi81534_)
                          (gx#core-resolve-identifier__1
                           _stx81533_
                           _phi81534_))
                        _g83822_))
                ((##fx= _g83821_ 3)
                 (apply (lambda (_stx81538_ _phi81539_ _ctx81540_)
                          (gx#core-resolve-identifier__%
                           _stx81538_
                           _phi81539_
                           _ctx81540_))
                        _g83822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g83822_))))))
    (define gx#core-resolve-binding
      (lambda (_id81428_ _phi81429_ _src-phi81430_ _ctx81431_ _marks81432_)
        (letrec ((_resolve81434_
                  (lambda (_ctx81502_ _src-phi81503_ _key81504_)
                    (let _lp81506_ ((_ctx81508_
                                     (gx#core-context-shift
                                      _ctx81502_
                                      _phi81429_))
                                    (_dphi81509_
                                     (fx- _phi81429_ _src-phi81503_)))
                      (let ((_$e81511_
                             (gx#core-context-resolve _ctx81508_ _key81504_)))
                        (if _$e81511_
                            (values _$e81511_)
                            (if (fxzero? _dphi81509_)
                                '#f
                                (if (fxpositive? _dphi81509_)
                                    (_lp81506_
                                     (gx#core-context-shift _ctx81508_ '-1)
                                     (fx- _dphi81509_ '1))
                                    (_lp81506_
                                     (gx#core-context-shift _ctx81508_ '1)
                                     (fx+ _dphi81509_ '1))))))))))
          (let _lp81436_ ((_ctx81438_ _ctx81431_)
                          (_src-phi81439_ _src-phi81430_)
                          (_rest81440_ _marks81432_))
            (let* ((_rest8144181449_ _rest81440_)
                   (_else8144381457_
                    (lambda ()
                      (_resolve81434_ _ctx81438_ _src-phi81439_ _id81428_)))
                   (_K8144581490_
                    (lambda (_rest81460_ _hd81461_)
                      (let* ((_hd8146281468_ _hd81461_)
                             (_E8146481472_
                              (lambda ()
                                (error '"No clause matching" _hd8146281468_)))
                             (_K8146581482_
                              (lambda (_subst81475_)
                                (let ((_$e81479_
                                       (let ((_key81477_
                                              (if _subst81475_
                                                  (hash-get
                                                   _subst81475_
                                                   _id81428_)
                                                  '#f)))
                                         (if _key81477_
                                             (_resolve81434_
                                              _ctx81438_
                                              _src-phi81439_
                                              _key81477_)
                                             '#f))))
                                  (if _$e81479_
                                      _$e81479_
                                      (_lp81436_
                                       (##unchecked-structure-ref
                                        _hd81461_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd81461_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest81460_))))))
                        (if (##structure-instance-of?
                             _hd8146281468_
                             'gx#expander-mark::t)
                            (let* ((_e8146681485_
                                    (##unchecked-structure-ref
                                     _hd8146281468_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst81488_ _e8146681485_))
                              (_K8146581482_ _subst81488_))
                            (_E8146481472_))))))
              (if (##pair? _rest8144181449_)
                  (let ((_hd8144681493_ (##car _rest8144181449_))
                        (_tl8144781495_ (##cdr _rest8144181449_)))
                    (let* ((_hd81498_ _hd8144681493_)
                           (_rest81500_ _tl8144781495_))
                      (_K8144581490_ _rest81500_ _hd81498_)))
                  (_else8144381457_)))))))
    (define gx#core-bind!__%
      (lambda (_key81304_ _val81305_ _rebind?81306_ _phi81307_ _ctx81308_)
        (letrec ((_update-binding81310_
                  (lambda (_xval81381_)
                    (if (or (_rebind?81306_ _ctx81308_ _xval81381_ _val81305_)
                            (and (##structure-direct-instance-of?
                                  _xval81381_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval81381_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val81305_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val81305_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval81381_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val81305_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val81305_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval81381_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val81305_
                        (if (and (##structure-direct-instance-of?
                                  _val81305_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val81305_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval81381_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val81305_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval81381_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval81381_
                            (if (and (##structure-direct-instance-of?
                                      _val81305_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval81381_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key81304_
                                 (cons (##unchecked-structure-ref
                                        _val81305_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val81305_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval81381_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval81381_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval81381_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval81381_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key81304_
                                 _val81305_
                                 _xval81381_))))))
                 (_gensubst81311_
                  (lambda (_subst81376_ _id81377_)
                    (let ((_eid81379_
                           (gensym (if (uninterned-symbol? _id81377_)
                                       '%
                                       _id81377_))))
                      (hash-put! _subst81376_ _id81377_ _eid81379_)
                      _eid81379_)))
                 (_subst!81312_
                  (lambda (_key81314_)
                    (let* ((_key8131581323_ _key81314_)
                           (_else8131781331_ (lambda () _key81314_))
                           (_K8131981364_
                            (lambda (_mark81334_ _id81335_)
                              (let* ((_mark8133681342_ _mark81334_)
                                     (_E8133881346_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8133681342_)))
                                     (_K8133981356_
                                      (lambda (_subst81349_)
                                        (if (not _subst81349_)
                                            (let ((_subst81351_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark81334_
                                               _subst81351_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst81311_
                                               _subst81351_
                                               _id81335_))
                                            (let ((_$e81353_
                                                   (hash-get
                                                    _subst81349_
                                                    _id81335_)))
                                              (if _$e81353_
                                                  (values _$e81353_)
                                                  (_gensubst81311_
                                                   _subst81349_
                                                   _id81335_)))))))
                                (if (##structure-instance-of?
                                     _mark8133681342_
                                     'gx#expander-mark::t)
                                    (let* ((_e8134081359_
                                            (##unchecked-structure-ref
                                             _mark8133681342_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst81362_ _e8134081359_))
                                      (_K8133981356_ _subst81362_))
                                    (_E8133881346_))))))
                      (if (##pair? _key8131581323_)
                          (let ((_hd8132081367_ (##car _key8131581323_))
                                (_tl8132181369_ (##cdr _key8131581323_)))
                            (let* ((_id81372_ _hd8132081367_)
                                   (_mark81374_ _tl8132181369_))
                              (_K8131981364_ _mark81374_ _id81372_)))
                          (_else8131781331_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx81308_ _phi81307_)
           (_subst!81312_ _key81304_)
           _val81305_
           _update-binding81310_))))
    (define gx#core-bind!__0
      (lambda (_key81398_ _val81399_)
        (let* ((_rebind?81401_ false)
               (_phi81403_ (gx#current-expander-phi))
               (_ctx81405_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81398_
           _val81399_
           _rebind?81401_
           _phi81403_
           _ctx81405_))))
    (define gx#core-bind!__1
      (lambda (_key81407_ _val81408_ _rebind?81409_)
        (let* ((_phi81411_ (gx#current-expander-phi))
               (_ctx81413_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81407_
           _val81408_
           _rebind?81409_
           _phi81411_
           _ctx81413_))))
    (define gx#core-bind!__2
      (lambda (_key81415_ _val81416_ _rebind?81417_ _phi81418_)
        (let ((_ctx81420_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81415_
           _val81416_
           _rebind?81417_
           _phi81418_
           _ctx81420_))))
    (define gx#core-bind!
      (lambda _g83824_
        (let ((_g83823_ (##length _g83824_)))
          (cond ((##fx= _g83823_ 2)
                 (apply (lambda (_key81398_ _val81399_)
                          (gx#core-bind!__0 _key81398_ _val81399_))
                        _g83824_))
                ((##fx= _g83823_ 3)
                 (apply (lambda (_key81407_ _val81408_ _rebind?81409_)
                          (gx#core-bind!__1
                           _key81407_
                           _val81408_
                           _rebind?81409_))
                        _g83824_))
                ((##fx= _g83823_ 4)
                 (apply (lambda (_key81415_
                                 _val81416_
                                 _rebind?81417_
                                 _phi81418_)
                          (gx#core-bind!__2
                           _key81415_
                           _val81416_
                           _rebind?81417_
                           _phi81418_))
                        _g83824_))
                ((##fx= _g83823_ 5)
                 (apply (lambda (_key81422_
                                 _val81423_
                                 _rebind?81424_
                                 _phi81425_
                                 _ctx81426_)
                          (gx#core-bind!__%
                           _key81422_
                           _val81423_
                           _rebind?81424_
                           _phi81425_
                           _ctx81426_))
                        _g83824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g83824_))))))
    (define gx#core-identifier-key
      (lambda (_stx81238_)
        (if (symbol? _stx81238_)
            (let* ((_g8123981247_ (gx#current-expander-marks))
                   (_else8124181255_ (lambda () _stx81238_))
                   (_K8124381260_
                    (lambda (_hd81258_) (cons _stx81238_ _hd81258_))))
              (if (##pair? _g8123981247_)
                  (let* ((_hd8124481263_ (##car _g8123981247_))
                         (_hd81266_ _hd8124481263_))
                    (_K8124381260_ _hd81266_))
                  (_else8124181255_)))
            (if (gx#identifier? _stx81238_)
                (let* ((_id81268_ (gx#syntax-local-unwrap _stx81238_))
                       (_eid81270_ (gx#stx-e _id81268_))
                       (_marks81272_ (gx#stx-identifier-marks* _id81268_)))
                  (let* ((_marks8127481282_ _marks81272_)
                         (_else8127681290_ (lambda () _eid81270_))
                         (_K8127881295_
                          (lambda (_hd81293_) (cons _eid81270_ _hd81293_))))
                    (if (##pair? _marks8127481282_)
                        (let* ((_hd8127981298_ (##car _marks8127481282_))
                               (_hd81301_ _hd8127981298_))
                          (_K8127881295_ _hd81301_))
                        (_else8127681290_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx81238_)))))
    (define gx#core-context-shift
      (lambda (_ctx81183_ _phi81184_)
        (letrec ((_make-phi81186_
                  (lambda (_super81236_)
                    (let ((__obj83795
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj83795
                       (gensym 'phi)
                       _super81236_)
                      __obj83795)))
                 (_make-phi/up81187_
                  (lambda (_ctx81231_ _super81232_)
                    (let ((_ctx+181234_ (_make-phi81186_ _super81232_)))
                      (##unchecked-structure-set!
                       _ctx81231_
                       _ctx+181234_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+181234_
                       _ctx81231_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+181234_)))
                 (_make-phi/down81188_
                  (lambda (_ctx81226_ _super81227_)
                    (let ((_ctx-181229_ (_make-phi81186_ _super81227_)))
                      (##unchecked-structure-set!
                       _ctx-181229_
                       _ctx81226_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx81226_
                       _ctx-181229_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-181229_)))
                 (_shift81189_
                  (lambda (_ctx81210_
                           _delta81211_
                           _make-delta-context81212_
                           _phi81213_
                           _K81214_)
                    (let ((_$e81216_
                           (##unchecked-structure-ref
                            _ctx81210_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e81216_
                          ((lambda (_super81219_)
                             (let* ((_super81221_
                                     (_K81214_ _super81219_ _delta81211_))
                                    (_ctx+d81223_
                                     (_make-delta-context81212_
                                      _ctx81210_
                                      _super81221_)))
                               (_K81214_
                                _ctx+d81223_
                                (fx- _phi81213_ _delta81211_))))
                           _$e81216_)
                          (error '"Bad context" _ctx81210_))))))
          (let _K81191_ ((_ctx81193_ _ctx81183_) (_phi81194_ _phi81184_))
            (if (fxzero? _phi81194_)
                _ctx81193_
                (if (fx> (##vector-length _ctx81193_) '3)
                    (if (fxpositive? _phi81194_)
                        (let ((_$e81196_
                               (##unchecked-structure-ref
                                _ctx81193_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e81196_
                              ((lambda (_g8119881200_)
                                 (_K81191_ _g8119881200_ (fx- _phi81194_ '1)))
                               _$e81196_)
                              (_shift81189_
                               _ctx81193_
                               '1
                               _make-phi/up81187_
                               _phi81194_
                               _K81191_)))
                        (let ((_$e81203_
                               (##unchecked-structure-ref
                                _ctx81193_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e81203_
                              ((lambda (_g8120581207_)
                                 (_K81191_ _g8120581207_ (fx+ _phi81194_ '1)))
                               _$e81203_)
                              (_shift81189_
                               _ctx81193_
                               '-1
                               _make-phi/down81188_
                               _phi81194_
                               _K81191_))))
                    _ctx81193_))))))
    (define gx#core-context-get
      (lambda (_ctx81180_ _key81181_)
        (hash-get
         (##unchecked-structure-ref _ctx81180_ '2 gx#expander-context::t '#f)
         _key81181_)))
    (define gx#core-context-put!
      (lambda (_ctx81176_ _key81177_ _val81178_)
        (hash-put!
         (##unchecked-structure-ref _ctx81176_ '2 gx#expander-context::t '#f)
         _key81177_
         _val81178_)))
    (define gx#core-context-resolve
      (lambda (_ctx81163_ _key81164_)
        (let _lp81166_ ((_ctx81168_ _ctx81163_))
          (let ((_$e81170_ (gx#core-context-get _ctx81168_ _key81164_)))
            (if _$e81170_
                (values _$e81170_)
                (let ((_$e81173_
                       (if (fx> (##vector-length _ctx81168_) '3)
                           (##unchecked-structure-ref
                            _ctx81168_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e81173_ (_lp81166_ _$e81173_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx81153_ _key81154_ _val81155_ _rebind81156_)
        (let ((_$e81158_ (gx#core-context-get _ctx81153_ _key81154_)))
          (if _$e81158_
              ((lambda (_xval81161_)
                 (gx#core-context-put!
                  _ctx81153_
                  _key81154_
                  (_rebind81156_ _xval81161_)))
               _$e81158_)
              (gx#core-context-put! _ctx81153_ _key81154_ _val81155_)))))
    (define gx#core-context-top__%
      (lambda (_ctx81131_ _stop?81132_)
        (let _lp81134_ ((_ctx81136_ _ctx81131_))
          (if (_stop?81132_ _ctx81136_)
              _ctx81136_
              (if (##structure-instance-of? _ctx81136_ 'gx#context-phi::t)
                  (_lp81134_
                   (##unchecked-structure-ref
                    _ctx81136_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx81142_ (gx#current-expander-context))
               (_stop?81144_ gx#top-context?))
          (gx#core-context-top__% _ctx81142_ _stop?81144_))))
    (define gx#core-context-top__1
      (lambda (_ctx81146_)
        (let ((_stop?81148_ gx#top-context?))
          (gx#core-context-top__% _ctx81146_ _stop?81148_))))
    (define gx#core-context-top
      (lambda _g83826_
        (let ((_g83825_ (##length _g83826_)))
          (cond ((##fx= _g83825_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g83826_))
                ((##fx= _g83825_ 1)
                 (apply (lambda (_ctx81146_)
                          (gx#core-context-top__1 _ctx81146_))
                        _g83826_))
                ((##fx= _g83825_ 2)
                 (apply (lambda (_ctx81150_ _stop?81151_)
                          (gx#core-context-top__% _ctx81150_ _stop?81151_))
                        _g83826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g83826_))))))
    (define gx#core-context-root__%
      (lambda (_ctx81116_)
        (let _lp81118_ ((_ctx81120_ _ctx81116_))
          (if (##structure-instance-of? _ctx81120_ 'gx#context-phi::t)
              (_lp81118_
               (##unchecked-structure-ref _ctx81120_ '3 gx#phi-context::t '#f))
              _ctx81120_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx81126_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx81126_))))
    (define gx#core-context-root
      (lambda _g83828_
        (let ((_g83827_ (##length _g83828_)))
          (cond ((##fx= _g83827_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g83828_))
                ((##fx= _g83827_ 1)
                 (apply (lambda (_ctx81128_)
                          (gx#core-context-root__% _ctx81128_))
                        _g83828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g83828_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx81097_ . __8109481098_)
        (let ((_$e81101_ (gx#current-expander-allow-rebind?)))
          (if _$e81101_
              _$e81101_
              (if (##structure-instance-of? _ctx81097_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx81097_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx81097_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx81108_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx81108_))))
    (define gx#core-context-rebind?
      (lambda _g83830_
        (let ((_g83829_ (##length _g83830_)))
          (cond ((##fx= _g83829_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g83830_))
                ((##fx= _g83829_ 1)
                 (apply (lambda (_ctx81110_)
                          (gx#core-context-rebind?__% _ctx81110_))
                        _g83830_))
                ((##fx>= _g83829_ 1)
                 (apply gx#core-context-rebind?__% _g83830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g83830_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx81080_)
        (let ((_$e81082_ (gx#core-context-top__1 _ctx81080_)))
          (if _$e81082_
              ((lambda (_ctx81085_)
                 (if (##structure-instance-of?
                      _ctx81085_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx81085_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e81082_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx81091_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx81091_))))
    (define gx#core-context-namespace
      (lambda _g83832_
        (let ((_g83831_ (##length _g83832_)))
          (cond ((##fx= _g83831_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g83832_))
                ((##fx= _g83831_ 1)
                 (apply (lambda (_ctx81093_)
                          (gx#core-context-namespace__% _ctx81093_))
                        _g83832_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g83832_))))))
    (define gx#expander-binding?__%
      (lambda (_bind81066_ _is?81067_)
        (if (##structure-direct-instance-of? _bind81066_ 'gx#syntax-binding::t)
            (_is?81067_
             (##unchecked-structure-ref
              _bind81066_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind81072_)
        (let ((_is?81074_ gx#expander?))
          (gx#expander-binding?__% _bind81072_ _is?81074_))))
    (define gx#expander-binding?
      (lambda _g83834_
        (let ((_g83833_ (##length _g83834_)))
          (cond ((##fx= _g83833_ 1)
                 (apply (lambda (_bind81072_)
                          (gx#expander-binding?__0 _bind81072_))
                        _g83834_))
                ((##fx= _g83833_ 2)
                 (apply (lambda (_bind81076_ _is?81077_)
                          (gx#expander-binding?__% _bind81076_ _is?81077_))
                        _g83834_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g83834_))))))
    (define gx#core-expander-binding?
      (lambda (_bind81063_)
        (gx#expander-binding?__% _bind81063_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind81061_)
        (gx#expander-binding?__% _bind81061_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind81055_)
        (letrec ((_direct-special-form?81057_
                  (lambda (_obj81059_)
                    (##structure-direct-instance-of?
                     _obj81059_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind81055_ _direct-special-form?81057_))))
    (define gx#special-form-binding?
      (lambda (_bind81053_)
        (gx#expander-binding?__% _bind81053_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind81044_)
        (letrec ((_feature?81046_
                  (lambda (_e81048_)
                    (let ((_$e81050_
                           (##structure-instance-of?
                            _e81048_
                            'gx#feature-expander::t)))
                      (if _$e81050_
                          _$e81050_
                          (##structure-instance-of?
                           _e81048_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind81044_ _feature?81046_))))
    (define gx#private-feature-binding?
      (lambda (_bind81042_)
        (gx#expander-binding?__% _bind81042_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id81029_ _bound?81030_)
        (if (gx#identifier? _id81029_)
            (_bound?81030_ (gx#resolve-identifier__0 _id81029_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id81035_)
        (let ((_bound?81037_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id81035_ _bound?81037_))))
    (define gx#core-bound-identifier?
      (lambda _g83836_
        (let ((_g83835_ (##length _g83836_)))
          (cond ((##fx= _g83835_ 1)
                 (apply (lambda (_id81035_)
                          (gx#core-bound-identifier?__0 _id81035_))
                        _g83836_))
                ((##fx= _g83835_ 2)
                 (apply (lambda (_id81039_ _bound?81040_)
                          (gx#core-bound-identifier?__%
                           _id81039_
                           _bound?81040_))
                        _g83836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g83836_))))))
    (define gx#core-identifier=?
      (lambda (_x81019_ _y81020_)
        (letrec ((_y=?81022_
                  (lambda (_xid81026_)
                    ((if (list? _y81020_) memq eq?) _xid81026_ _y81020_))))
          (let ((_bind81024_ (gx#resolve-identifier__0 _x81019_)))
            (if (##structure-instance-of? _bind81024_ 'gx#binding::t)
                (_y=?81022_
                 (##unchecked-structure-ref _bind81024_ '1 gx#binding::t '#f))
                (_y=?81022_ (gx#stx-e _x81019_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e81017_)
        (if (interned-symbol? _e81017_)
            (string-index__0 (symbol->string _e81017_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx80972_ _src80973_ _ctx80974_ _marks80975_)
        (if (##structure? _stx80972_)
            (let ((_$e80977_ (gx#sealed-syntax-unwrap _stx80972_)))
              (if _$e80977_
                  (values _$e80977_)
                  (if (gx#identifier? _stx80972_)
                      (let ((_id80980_
                             (gx#stx-unwrap__% _stx80972_ _marks80975_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id80980_ '1 gx#AST::t '#f)
                         (let ((_$e80982_
                                (##unchecked-structure-ref
                                 _id80980_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e80982_ _$e80982_ _src80973_))
                         _ctx80974_
                         (##unchecked-structure-ref
                          _id80980_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx80972_)
                       (let ((_$e80985_ (gx#stx-source _stx80972_)))
                         (if _$e80985_ _$e80985_ _src80973_))
                       _ctx80974_
                       (reverse _marks80975_)))))
            (##structure
             gx#syntax-quote::t
             _stx80972_
             _src80973_
             _ctx80974_
             (reverse _marks80975_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx80991_)
        (let* ((_src80993_ '#f)
               (_ctx80995_ (gx#current-expander-context))
               (_marks80997_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx80991_
           _src80993_
           _ctx80995_
           _marks80997_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx80999_ _src81000_)
        (let* ((_ctx81002_ (gx#current-expander-context))
               (_marks81004_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx80999_
           _src81000_
           _ctx81002_
           _marks81004_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx81006_ _src81007_ _ctx81008_)
        (let ((_marks81010_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81006_
           _src81007_
           _ctx81008_
           _marks81010_))))
    (define gx#core-quote-syntax
      (lambda _g83838_
        (let ((_g83837_ (##length _g83838_)))
          (cond ((##fx= _g83837_ 1)
                 (apply (lambda (_stx80991_)
                          (gx#core-quote-syntax__0 _stx80991_))
                        _g83838_))
                ((##fx= _g83837_ 2)
                 (apply (lambda (_stx80999_ _src81000_)
                          (gx#core-quote-syntax__1 _stx80999_ _src81000_))
                        _g83838_))
                ((##fx= _g83837_ 3)
                 (apply (lambda (_stx81006_ _src81007_ _ctx81008_)
                          (gx#core-quote-syntax__2
                           _stx81006_
                           _src81007_
                           _ctx81008_))
                        _g83838_))
                ((##fx= _g83837_ 4)
                 (apply (lambda (_stx81012_ _src81013_ _ctx81014_ _marks81015_)
                          (gx#core-quote-syntax__%
                           _stx81012_
                           _src81013_
                           _ctx81014_
                           _marks81015_))
                        _g83838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g83838_))))))
    (define gx#core-cons
      (lambda (_hd80968_ _tl80969_)
        (cons (gx#core-quote-syntax__0 _hd80968_) _tl80969_)))
    (define gx#core-list
      (lambda (_hd80965_ . _rest80966_)
        (cons (gx#core-quote-syntax__0 _hd80965_) _rest80966_)))
    (define gx#core-cons*
      (lambda (_hd80962_ . _rest80963_)
        (apply cons* (gx#core-quote-syntax__0 _hd80962_) _rest80963_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path80936_ _rel80937_)
        (let ((_path80949_ (gx#stx-e _stx-path80936_))
              (_reldir80950_
               (let _lp80939_ ((_relsrc80941_
                                (let ((_$e80946_
                                       (gx#stx-source _stx-path80936_)))
                                  (if _$e80946_ _$e80946_ _rel80937_))))
                 (if (##structure-instance-of? _relsrc80941_ 'gerbil#AST::t)
                     (_lp80939_
                      (let ((_$e80943_ (gx#stx-source _relsrc80941_)))
                        (if _$e80943_ _$e80943_ (gx#stx-e _relsrc80941_))))
                     (if (source-location-path? _relsrc80941_)
                         (path-directory (source-location-path _relsrc80941_))
                         (if (string? _relsrc80941_)
                             (path-directory _relsrc80941_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path80949_ (path-normalize _reldir80950_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path80955_)
        (let ((_rel80957_ '#f))
          (gx#core-resolve-path__% _stx-path80955_ _rel80957_))))
    (define gx#core-resolve-path
      (lambda _g83840_
        (let ((_g83839_ (##length _g83840_)))
          (cond ((##fx= _g83839_ 1)
                 (apply (lambda (_stx-path80955_)
                          (gx#core-resolve-path__0 _stx-path80955_))
                        _g83840_))
                ((##fx= _g83839_ 2)
                 (apply (lambda (_stx-path80959_ _rel80960_)
                          (gx#core-resolve-path__% _stx-path80959_ _rel80960_))
                        _g83840_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g83840_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr80892_ _ctx80893_)
        (let* ((_repr8089480901_ _repr80892_)
               (_E8089680905_
                (lambda () (error '"No clause matching" _repr8089480901_)))
               (_K8089780913_
                (lambda (_subs80908_ _phi80909_)
                  (let ((_subst80911_
                         (if (not (null? _subs80908_))
                             (list->hash-table-eq _subs80908_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst80911_
                     _ctx80893_
                     _phi80909_
                     '#f)))))
          (if (##pair? _repr8089480901_)
              (let ((_hd8089880916_ (##car _repr8089480901_))
                    (_tl8089980918_ (##cdr _repr8089480901_)))
                (let* ((_phi80921_ _hd8089880916_)
                       (_subs80923_ _tl8089980918_))
                  (_K8089780913_ _subs80923_ _phi80921_)))
              (_E8089680905_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr80928_)
        (let ((_ctx80930_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr80928_ _ctx80930_))))
    (define gx#core-deserialize-mark
      (lambda _g83842_
        (let ((_g83841_ (##length _g83842_)))
          (cond ((##fx= _g83841_ 1)
                 (apply (lambda (_repr80928_)
                          (gx#core-deserialize-mark__0 _repr80928_))
                        _g83842_))
                ((##fx= _g83841_ 2)
                 (apply (lambda (_repr80932_ _ctx80933_)
                          (gx#core-deserialize-mark__% _repr80932_ _ctx80933_))
                        _g83842_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g83842_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx80889_)
        (gx#stx-rewrap _stx80889_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx80887_)
        (gx#stx-unwrap__% _stx80887_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx80857_)
        (let* ((_g8085880866_ (gx#current-expander-marks))
               (_else8086080874_ (lambda () _stx80857_))
               (_K8086280879_
                (lambda (_hd80877_) (gx#stx-apply-mark _stx80857_ _hd80877_))))
          (if (##pair? _g8085880866_)
              (let* ((_hd8086380882_ (##car _g8085880866_))
                     (_hd80885_ _hd8086380882_))
                (_K8086280879_ _hd80885_))
              (_else8086080874_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx80842_ _E80843_)
        (let ((_bind80845_ (gx#resolve-identifier__0 _stx80842_)))
          (if (##structure-direct-instance-of?
               _bind80845_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind80845_
               '4
               gx#syntax-binding::t
               '#f)
              (_E80843_ _stx80842_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx80850_)
        (let ((_E80852_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx80850_ _E80852_))))
    (define gx#syntax-local-e
      (lambda _g83844_
        (let ((_g83843_ (##length _g83844_)))
          (cond ((##fx= _g83843_ 1)
                 (apply (lambda (_stx80850_) (gx#syntax-local-e__0 _stx80850_))
                        _g83844_))
                ((##fx= _g83843_ 2)
                 (apply (lambda (_stx80854_ _E80855_)
                          (gx#syntax-local-e__% _stx80854_ _E80855_))
                        _g83844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g83844_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx80826_ _E80827_)
        (let ((_e80829_ (gx#syntax-local-e__% _stx80826_ _E80827_)))
          (if (##structure-instance-of? _e80829_ 'gx#expander::t)
              (##structure-ref _e80829_ '1 gx#expander::t '#f)
              _e80829_))))
    (define gx#syntax-local-value__0
      (lambda (_stx80834_)
        (let ((_E80836_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx80834_ _E80836_))))
    (define gx#syntax-local-value
      (lambda _g83846_
        (let ((_g83845_ (##length _g83846_)))
          (cond ((##fx= _g83845_ 1)
                 (apply (lambda (_stx80834_)
                          (gx#syntax-local-value__0 _stx80834_))
                        _g83846_))
                ((##fx= _g83845_ 2)
                 (apply (lambda (_stx80838_ _E80839_)
                          (gx#syntax-local-value__% _stx80838_ _E80839_))
                        _g83846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g83846_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx80823_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx80823_)))))
