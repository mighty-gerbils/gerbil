(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1711709197)
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
    (define gx#current-expander-allow-rebind? (make-parameter '#f))
    (define gx#current-expander-compiling? (make-parameter '#f))
    (define gx#expander-context::t
      (__make-class-type
       'gx#expander-context::t
       'expander-context
       (list)
       '(id table)
       (cons (cons 'struct: '#t) '((print: id)))
       ':init!))
    (define gx#expander-context?
      (__make-class-predicate gx#expander-context::t))
    (define gx#make-expander-context
      (lambda _$args83990_
        (apply make-instance gx#expander-context::t _$args83990_)))
    (define gx#expander-context-id
      (__make-class-slot-accessor gx#expander-context::t 'id))
    (define gx#expander-context-table
      (__make-class-slot-accessor gx#expander-context::t 'table))
    (define gx#expander-context-id-set!
      (__make-class-slot-mutator gx#expander-context::t 'id))
    (define gx#expander-context-table-set!
      (__make-class-slot-mutator gx#expander-context::t 'table))
    (define gx#&expander-context-id
      (__make-class-slot-unchecked-accessor gx#expander-context::t 'id))
    (define gx#&expander-context-table
      (__make-class-slot-unchecked-accessor gx#expander-context::t 'table))
    (define gx#&expander-context-id-set!
      (__make-class-slot-unchecked-mutator gx#expander-context::t 'id))
    (define gx#&expander-context-table-set!
      (__make-class-slot-unchecked-mutator gx#expander-context::t 'table))
    (define gx#root-context::t
      (__make-class-type
       'gx#root-context::t
       'root-context
       (list gx#expander-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#root-context? (__make-class-predicate gx#root-context::t))
    (define gx#make-root-context
      (lambda _$args83987_
        (apply make-instance gx#root-context::t _$args83987_)))
    (define gx#root-context-id
      (__make-class-slot-accessor gx#root-context::t 'id))
    (define gx#root-context-table
      (__make-class-slot-accessor gx#root-context::t 'table))
    (define gx#root-context-id-set!
      (__make-class-slot-mutator gx#root-context::t 'id))
    (define gx#root-context-table-set!
      (__make-class-slot-mutator gx#root-context::t 'table))
    (define gx#&root-context-id
      (__make-class-slot-unchecked-accessor gx#root-context::t 'id))
    (define gx#&root-context-table
      (__make-class-slot-unchecked-accessor gx#root-context::t 'table))
    (define gx#&root-context-id-set!
      (__make-class-slot-unchecked-mutator gx#root-context::t 'id))
    (define gx#&root-context-table-set!
      (__make-class-slot-unchecked-mutator gx#root-context::t 'table))
    (define gx#phi-context::t
      (__make-class-type
       'gx#phi-context::t
       'phi-context
       (list gx#expander-context::t)
       '(super up down)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#phi-context? (__make-class-predicate gx#phi-context::t))
    (define gx#make-phi-context
      (lambda _$args83984_
        (apply make-instance gx#phi-context::t _$args83984_)))
    (define gx#phi-context-super
      (__make-class-slot-accessor gx#phi-context::t 'super))
    (define gx#phi-context-up
      (__make-class-slot-accessor gx#phi-context::t 'up))
    (define gx#phi-context-down
      (__make-class-slot-accessor gx#phi-context::t 'down))
    (define gx#phi-context-id
      (__make-class-slot-accessor gx#phi-context::t 'id))
    (define gx#phi-context-table
      (__make-class-slot-accessor gx#phi-context::t 'table))
    (define gx#phi-context-super-set!
      (__make-class-slot-mutator gx#phi-context::t 'super))
    (define gx#phi-context-up-set!
      (__make-class-slot-mutator gx#phi-context::t 'up))
    (define gx#phi-context-down-set!
      (__make-class-slot-mutator gx#phi-context::t 'down))
    (define gx#phi-context-id-set!
      (__make-class-slot-mutator gx#phi-context::t 'id))
    (define gx#phi-context-table-set!
      (__make-class-slot-mutator gx#phi-context::t 'table))
    (define gx#&phi-context-super
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'super))
    (define gx#&phi-context-up
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'up))
    (define gx#&phi-context-down
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'down))
    (define gx#&phi-context-id
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'id))
    (define gx#&phi-context-table
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'table))
    (define gx#&phi-context-super-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'super))
    (define gx#&phi-context-up-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'up))
    (define gx#&phi-context-down-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'down))
    (define gx#&phi-context-id-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'id))
    (define gx#&phi-context-table-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'table))
    (define gx#top-context::t
      (__make-class-type
       'gx#top-context::t
       'top-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-context? (__make-class-predicate gx#top-context::t))
    (define gx#make-top-context
      (lambda _$args83981_
        (apply make-instance gx#top-context::t _$args83981_)))
    (define gx#top-context-super
      (__make-class-slot-accessor gx#top-context::t 'super))
    (define gx#top-context-up
      (__make-class-slot-accessor gx#top-context::t 'up))
    (define gx#top-context-down
      (__make-class-slot-accessor gx#top-context::t 'down))
    (define gx#top-context-id
      (__make-class-slot-accessor gx#top-context::t 'id))
    (define gx#top-context-table
      (__make-class-slot-accessor gx#top-context::t 'table))
    (define gx#top-context-super-set!
      (__make-class-slot-mutator gx#top-context::t 'super))
    (define gx#top-context-up-set!
      (__make-class-slot-mutator gx#top-context::t 'up))
    (define gx#top-context-down-set!
      (__make-class-slot-mutator gx#top-context::t 'down))
    (define gx#top-context-id-set!
      (__make-class-slot-mutator gx#top-context::t 'id))
    (define gx#top-context-table-set!
      (__make-class-slot-mutator gx#top-context::t 'table))
    (define gx#&top-context-super
      (__make-class-slot-unchecked-accessor gx#top-context::t 'super))
    (define gx#&top-context-up
      (__make-class-slot-unchecked-accessor gx#top-context::t 'up))
    (define gx#&top-context-down
      (__make-class-slot-unchecked-accessor gx#top-context::t 'down))
    (define gx#&top-context-id
      (__make-class-slot-unchecked-accessor gx#top-context::t 'id))
    (define gx#&top-context-table
      (__make-class-slot-unchecked-accessor gx#top-context::t 'table))
    (define gx#&top-context-super-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'super))
    (define gx#&top-context-up-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'up))
    (define gx#&top-context-down-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'down))
    (define gx#&top-context-id-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'id))
    (define gx#&top-context-table-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'table))
    (define gx#module-context::t
      (__make-class-type
       'gx#module-context::t
       'module-context
       (list gx#top-context::t)
       '(ns path import export e code)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-context? (__make-class-predicate gx#module-context::t))
    (define gx#make-module-context
      (lambda _$args83978_
        (apply make-instance gx#module-context::t _$args83978_)))
    (define gx#module-context-ns
      (__make-class-slot-accessor gx#module-context::t 'ns))
    (define gx#module-context-path
      (__make-class-slot-accessor gx#module-context::t 'path))
    (define gx#module-context-import
      (__make-class-slot-accessor gx#module-context::t 'import))
    (define gx#module-context-export
      (__make-class-slot-accessor gx#module-context::t 'export))
    (define gx#module-context-e
      (__make-class-slot-accessor gx#module-context::t 'e))
    (define gx#module-context-code
      (__make-class-slot-accessor gx#module-context::t 'code))
    (define gx#module-context-super
      (__make-class-slot-accessor gx#module-context::t 'super))
    (define gx#module-context-up
      (__make-class-slot-accessor gx#module-context::t 'up))
    (define gx#module-context-down
      (__make-class-slot-accessor gx#module-context::t 'down))
    (define gx#module-context-id
      (__make-class-slot-accessor gx#module-context::t 'id))
    (define gx#module-context-table
      (__make-class-slot-accessor gx#module-context::t 'table))
    (define gx#module-context-ns-set!
      (__make-class-slot-mutator gx#module-context::t 'ns))
    (define gx#module-context-path-set!
      (__make-class-slot-mutator gx#module-context::t 'path))
    (define gx#module-context-import-set!
      (__make-class-slot-mutator gx#module-context::t 'import))
    (define gx#module-context-export-set!
      (__make-class-slot-mutator gx#module-context::t 'export))
    (define gx#module-context-e-set!
      (__make-class-slot-mutator gx#module-context::t 'e))
    (define gx#module-context-code-set!
      (__make-class-slot-mutator gx#module-context::t 'code))
    (define gx#module-context-super-set!
      (__make-class-slot-mutator gx#module-context::t 'super))
    (define gx#module-context-up-set!
      (__make-class-slot-mutator gx#module-context::t 'up))
    (define gx#module-context-down-set!
      (__make-class-slot-mutator gx#module-context::t 'down))
    (define gx#module-context-id-set!
      (__make-class-slot-mutator gx#module-context::t 'id))
    (define gx#module-context-table-set!
      (__make-class-slot-mutator gx#module-context::t 'table))
    (define gx#&module-context-ns
      (__make-class-slot-unchecked-accessor gx#module-context::t 'ns))
    (define gx#&module-context-path
      (__make-class-slot-unchecked-accessor gx#module-context::t 'path))
    (define gx#&module-context-import
      (__make-class-slot-unchecked-accessor gx#module-context::t 'import))
    (define gx#&module-context-export
      (__make-class-slot-unchecked-accessor gx#module-context::t 'export))
    (define gx#&module-context-e
      (__make-class-slot-unchecked-accessor gx#module-context::t 'e))
    (define gx#&module-context-code
      (__make-class-slot-unchecked-accessor gx#module-context::t 'code))
    (define gx#&module-context-super
      (__make-class-slot-unchecked-accessor gx#module-context::t 'super))
    (define gx#&module-context-up
      (__make-class-slot-unchecked-accessor gx#module-context::t 'up))
    (define gx#&module-context-down
      (__make-class-slot-unchecked-accessor gx#module-context::t 'down))
    (define gx#&module-context-id
      (__make-class-slot-unchecked-accessor gx#module-context::t 'id))
    (define gx#&module-context-table
      (__make-class-slot-unchecked-accessor gx#module-context::t 'table))
    (define gx#&module-context-ns-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'ns))
    (define gx#&module-context-path-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'path))
    (define gx#&module-context-import-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'import))
    (define gx#&module-context-export-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'export))
    (define gx#&module-context-e-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'e))
    (define gx#&module-context-code-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'code))
    (define gx#&module-context-super-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'super))
    (define gx#&module-context-up-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'up))
    (define gx#&module-context-down-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'down))
    (define gx#&module-context-id-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'id))
    (define gx#&module-context-table-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'table))
    (define gx#prelude-context::t
      (__make-class-type
       'gx#prelude-context::t
       'prelude-context
       (list gx#top-context::t)
       '(path import e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#prelude-context? (__make-class-predicate gx#prelude-context::t))
    (define gx#make-prelude-context
      (lambda _$args83975_
        (apply make-instance gx#prelude-context::t _$args83975_)))
    (define gx#prelude-context-path
      (__make-class-slot-accessor gx#prelude-context::t 'path))
    (define gx#prelude-context-import
      (__make-class-slot-accessor gx#prelude-context::t 'import))
    (define gx#prelude-context-e
      (__make-class-slot-accessor gx#prelude-context::t 'e))
    (define gx#prelude-context-super
      (__make-class-slot-accessor gx#prelude-context::t 'super))
    (define gx#prelude-context-up
      (__make-class-slot-accessor gx#prelude-context::t 'up))
    (define gx#prelude-context-down
      (__make-class-slot-accessor gx#prelude-context::t 'down))
    (define gx#prelude-context-id
      (__make-class-slot-accessor gx#prelude-context::t 'id))
    (define gx#prelude-context-table
      (__make-class-slot-accessor gx#prelude-context::t 'table))
    (define gx#prelude-context-path-set!
      (__make-class-slot-mutator gx#prelude-context::t 'path))
    (define gx#prelude-context-import-set!
      (__make-class-slot-mutator gx#prelude-context::t 'import))
    (define gx#prelude-context-e-set!
      (__make-class-slot-mutator gx#prelude-context::t 'e))
    (define gx#prelude-context-super-set!
      (__make-class-slot-mutator gx#prelude-context::t 'super))
    (define gx#prelude-context-up-set!
      (__make-class-slot-mutator gx#prelude-context::t 'up))
    (define gx#prelude-context-down-set!
      (__make-class-slot-mutator gx#prelude-context::t 'down))
    (define gx#prelude-context-id-set!
      (__make-class-slot-mutator gx#prelude-context::t 'id))
    (define gx#prelude-context-table-set!
      (__make-class-slot-mutator gx#prelude-context::t 'table))
    (define gx#&prelude-context-path
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'path))
    (define gx#&prelude-context-import
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'import))
    (define gx#&prelude-context-e
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'e))
    (define gx#&prelude-context-super
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'super))
    (define gx#&prelude-context-up
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'up))
    (define gx#&prelude-context-down
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'down))
    (define gx#&prelude-context-id
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'id))
    (define gx#&prelude-context-table
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'table))
    (define gx#&prelude-context-path-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'path))
    (define gx#&prelude-context-import-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'import))
    (define gx#&prelude-context-e-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'e))
    (define gx#&prelude-context-super-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'super))
    (define gx#&prelude-context-up-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'up))
    (define gx#&prelude-context-down-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'down))
    (define gx#&prelude-context-id-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'id))
    (define gx#&prelude-context-table-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'table))
    (define gx#local-context::t
      (__make-class-type
       'gx#local-context::t
       'local-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#local-context? (__make-class-predicate gx#local-context::t))
    (define gx#make-local-context
      (lambda _$args83972_
        (apply make-instance gx#local-context::t _$args83972_)))
    (define gx#local-context-super
      (__make-class-slot-accessor gx#local-context::t 'super))
    (define gx#local-context-up
      (__make-class-slot-accessor gx#local-context::t 'up))
    (define gx#local-context-down
      (__make-class-slot-accessor gx#local-context::t 'down))
    (define gx#local-context-id
      (__make-class-slot-accessor gx#local-context::t 'id))
    (define gx#local-context-table
      (__make-class-slot-accessor gx#local-context::t 'table))
    (define gx#local-context-super-set!
      (__make-class-slot-mutator gx#local-context::t 'super))
    (define gx#local-context-up-set!
      (__make-class-slot-mutator gx#local-context::t 'up))
    (define gx#local-context-down-set!
      (__make-class-slot-mutator gx#local-context::t 'down))
    (define gx#local-context-id-set!
      (__make-class-slot-mutator gx#local-context::t 'id))
    (define gx#local-context-table-set!
      (__make-class-slot-mutator gx#local-context::t 'table))
    (define gx#&local-context-super
      (__make-class-slot-unchecked-accessor gx#local-context::t 'super))
    (define gx#&local-context-up
      (__make-class-slot-unchecked-accessor gx#local-context::t 'up))
    (define gx#&local-context-down
      (__make-class-slot-unchecked-accessor gx#local-context::t 'down))
    (define gx#&local-context-id
      (__make-class-slot-unchecked-accessor gx#local-context::t 'id))
    (define gx#&local-context-table
      (__make-class-slot-unchecked-accessor gx#local-context::t 'table))
    (define gx#&local-context-super-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'super))
    (define gx#&local-context-up-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'up))
    (define gx#&local-context-down-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'down))
    (define gx#&local-context-id-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'id))
    (define gx#&local-context-table-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'table))
    (define gx#phi-context:::init!__%
      (lambda (_self83956_ _id83957_ _super83958_)
        (if (##fx< '3 (##structure-length _self83956_))
            (begin
              (##unchecked-structure-set! _self83956_ _id83957_ '1 '#f '#f)
              (##unchecked-structure-set!
               _self83956_
               (make-hash-table-eq)
               '2
               '#f
               '#f)
              (##unchecked-structure-set! _self83956_ _super83958_ '3 '#f '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _self83956_
                   '3
                   (##vector-length _self83956_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self83963_ _id83964_)
        (let ((_super83966_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self83963_ _id83964_ _super83966_))))
    (define gx#phi-context:::init!
      (lambda _g84033_
        (let ((_g84032_ (##length _g84033_)))
          (cond ((##fx= _g84032_ 2)
                 (apply (lambda (_self83963_ _id83964_)
                          (gx#phi-context:::init!__0 _self83963_ _id83964_))
                        _g84033_))
                ((##fx= _g84032_ 3)
                 (apply (lambda (_self83968_ _id83969_ _super83970_)
                          (gx#phi-context:::init!__%
                           _self83968_
                           _id83969_
                           _super83970_))
                        _g84033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g84033_))))))
    (__bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self83820_ _super83821_)
        (if (##fx< '3 (##structure-length _self83820_))
            (begin
              (##unchecked-structure-set! _self83820_ (##gensym 'L) '1 '#f '#f)
              (##unchecked-structure-set!
               _self83820_
               (make-hash-table-eq)
               '2
               '#f
               '#f)
              (##unchecked-structure-set! _self83820_ _super83821_ '3 '#f '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _self83820_
                   '3
                   (##vector-length _self83820_)))))
    (define gx#local-context:::init!__0
      (lambda (_self83826_)
        (let ((_super83828_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self83826_ _super83828_))))
    (define gx#local-context:::init!
      (lambda _g84035_
        (let ((_g84034_ (##length _g84035_)))
          (cond ((##fx= _g84034_ 1)
                 (apply (lambda (_self83826_)
                          (gx#local-context:::init!__0 _self83826_))
                        _g84035_))
                ((##fx= _g84034_ 2)
                 (apply (lambda (_self83830_ _super83831_)
                          (gx#local-context:::init!__%
                           _self83830_
                           _super83831_))
                        _g84035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g84035_))))))
    (__bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
    (define gx#binding::t
      (__make-class-type
       'gx#binding::t
       'binding
       (list)
       '(id key phi)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _$args83694_ (apply make-instance gx#binding::t _$args83694_)))
    (define gx#binding-id (__make-class-slot-accessor gx#binding::t 'id))
    (define gx#binding-key (__make-class-slot-accessor gx#binding::t 'key))
    (define gx#binding-phi (__make-class-slot-accessor gx#binding::t 'phi))
    (define gx#binding-id-set! (__make-class-slot-mutator gx#binding::t 'id))
    (define gx#binding-key-set! (__make-class-slot-mutator gx#binding::t 'key))
    (define gx#binding-phi-set! (__make-class-slot-mutator gx#binding::t 'phi))
    (define gx#&binding-id
      (__make-class-slot-unchecked-accessor gx#binding::t 'id))
    (define gx#&binding-key
      (__make-class-slot-unchecked-accessor gx#binding::t 'key))
    (define gx#&binding-phi
      (__make-class-slot-unchecked-accessor gx#binding::t 'phi))
    (define gx#&binding-id-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'id))
    (define gx#&binding-key-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'key))
    (define gx#&binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'phi))
    (define gx#runtime-binding::t
      (__make-class-type
       'gx#runtime-binding::t
       'runtime-binding
       (list gx#binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _$args83691_
        (apply make-instance gx#runtime-binding::t _$args83691_)))
    (define gx#runtime-binding-id
      (__make-class-slot-accessor gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key
      (__make-class-slot-accessor gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi
      (__make-class-slot-accessor gx#runtime-binding::t 'phi))
    (define gx#runtime-binding-id-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-id
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'phi))
    (define gx#local-binding::t
      (__make-class-type
       'gx#local-binding::t
       'local-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#local-binding? (__make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _$args83688_
        (apply make-instance gx#local-binding::t _$args83688_)))
    (define gx#local-binding-id
      (__make-class-slot-accessor gx#local-binding::t 'id))
    (define gx#local-binding-key
      (__make-class-slot-accessor gx#local-binding::t 'key))
    (define gx#local-binding-phi
      (__make-class-slot-accessor gx#local-binding::t 'phi))
    (define gx#local-binding-id-set!
      (__make-class-slot-mutator gx#local-binding::t 'id))
    (define gx#local-binding-key-set!
      (__make-class-slot-mutator gx#local-binding::t 'key))
    (define gx#local-binding-phi-set!
      (__make-class-slot-mutator gx#local-binding::t 'phi))
    (define gx#&local-binding-id
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'id))
    (define gx#&local-binding-key
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'key))
    (define gx#&local-binding-phi
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'phi))
    (define gx#&local-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'id))
    (define gx#&local-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'key))
    (define gx#&local-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'phi))
    (define gx#top-binding::t
      (__make-class-type
       'gx#top-binding::t
       'top-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#top-binding? (__make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _$args83685_
        (apply make-instance gx#top-binding::t _$args83685_)))
    (define gx#top-binding-id
      (__make-class-slot-accessor gx#top-binding::t 'id))
    (define gx#top-binding-key
      (__make-class-slot-accessor gx#top-binding::t 'key))
    (define gx#top-binding-phi
      (__make-class-slot-accessor gx#top-binding::t 'phi))
    (define gx#top-binding-id-set!
      (__make-class-slot-mutator gx#top-binding::t 'id))
    (define gx#top-binding-key-set!
      (__make-class-slot-mutator gx#top-binding::t 'key))
    (define gx#top-binding-phi-set!
      (__make-class-slot-mutator gx#top-binding::t 'phi))
    (define gx#&top-binding-id
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'id))
    (define gx#&top-binding-key
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'key))
    (define gx#&top-binding-phi
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'phi))
    (define gx#&top-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'id))
    (define gx#&top-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'key))
    (define gx#&top-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'phi))
    (define gx#module-binding::t
      (__make-class-type
       'gx#module-binding::t
       'module-binding
       (list gx#top-binding::t)
       '(context)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#module-binding? (__make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _$args83682_
        (apply make-instance gx#module-binding::t _$args83682_)))
    (define gx#module-binding-context
      (__make-class-slot-accessor gx#module-binding::t 'context))
    (define gx#module-binding-id
      (__make-class-slot-accessor gx#module-binding::t 'id))
    (define gx#module-binding-key
      (__make-class-slot-accessor gx#module-binding::t 'key))
    (define gx#module-binding-phi
      (__make-class-slot-accessor gx#module-binding::t 'phi))
    (define gx#module-binding-context-set!
      (__make-class-slot-mutator gx#module-binding::t 'context))
    (define gx#module-binding-id-set!
      (__make-class-slot-mutator gx#module-binding::t 'id))
    (define gx#module-binding-key-set!
      (__make-class-slot-mutator gx#module-binding::t 'key))
    (define gx#module-binding-phi-set!
      (__make-class-slot-mutator gx#module-binding::t 'phi))
    (define gx#&module-binding-context
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'context))
    (define gx#&module-binding-id
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'id))
    (define gx#&module-binding-key
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'key))
    (define gx#&module-binding-phi
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'phi))
    (define gx#&module-binding-context-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'context))
    (define gx#&module-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'id))
    (define gx#&module-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'key))
    (define gx#&module-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'phi))
    (define gx#extern-binding::t
      (__make-class-type
       'gx#extern-binding::t
       'extern-binding
       (list gx#top-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#extern-binding? (__make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _$args83679_
        (apply make-instance gx#extern-binding::t _$args83679_)))
    (define gx#extern-binding-id
      (__make-class-slot-accessor gx#extern-binding::t 'id))
    (define gx#extern-binding-key
      (__make-class-slot-accessor gx#extern-binding::t 'key))
    (define gx#extern-binding-phi
      (__make-class-slot-accessor gx#extern-binding::t 'phi))
    (define gx#extern-binding-id-set!
      (__make-class-slot-mutator gx#extern-binding::t 'id))
    (define gx#extern-binding-key-set!
      (__make-class-slot-mutator gx#extern-binding::t 'key))
    (define gx#extern-binding-phi-set!
      (__make-class-slot-mutator gx#extern-binding::t 'phi))
    (define gx#&extern-binding-id
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'id))
    (define gx#&extern-binding-key
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'phi))
    (define gx#&extern-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'id))
    (define gx#&extern-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'phi))
    (define gx#syntax-binding::t
      (__make-class-type
       'gx#syntax-binding::t
       'syntax-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#syntax-binding? (__make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _$args83676_
        (apply make-instance gx#syntax-binding::t _$args83676_)))
    (define gx#syntax-binding-e
      (__make-class-slot-accessor gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id
      (__make-class-slot-accessor gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key
      (__make-class-slot-accessor gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi
      (__make-class-slot-accessor gx#syntax-binding::t 'phi))
    (define gx#syntax-binding-e-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-e
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'phi))
    (define gx#import-binding::t
      (__make-class-type
       'gx#import-binding::t
       'import-binding
       (list gx#binding::t)
       '(e context weak?)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#import-binding? (__make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _$args83673_
        (apply make-instance gx#import-binding::t _$args83673_)))
    (define gx#import-binding-e
      (__make-class-slot-accessor gx#import-binding::t 'e))
    (define gx#import-binding-context
      (__make-class-slot-accessor gx#import-binding::t 'context))
    (define gx#import-binding-weak?
      (__make-class-slot-accessor gx#import-binding::t 'weak?))
    (define gx#import-binding-id
      (__make-class-slot-accessor gx#import-binding::t 'id))
    (define gx#import-binding-key
      (__make-class-slot-accessor gx#import-binding::t 'key))
    (define gx#import-binding-phi
      (__make-class-slot-accessor gx#import-binding::t 'phi))
    (define gx#import-binding-e-set!
      (__make-class-slot-mutator gx#import-binding::t 'e))
    (define gx#import-binding-context-set!
      (__make-class-slot-mutator gx#import-binding::t 'context))
    (define gx#import-binding-weak?-set!
      (__make-class-slot-mutator gx#import-binding::t 'weak?))
    (define gx#import-binding-id-set!
      (__make-class-slot-mutator gx#import-binding::t 'id))
    (define gx#import-binding-key-set!
      (__make-class-slot-mutator gx#import-binding::t 'key))
    (define gx#import-binding-phi-set!
      (__make-class-slot-mutator gx#import-binding::t 'phi))
    (define gx#&import-binding-e
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'e))
    (define gx#&import-binding-context
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'context))
    (define gx#&import-binding-weak?
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'weak?))
    (define gx#&import-binding-id
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'id))
    (define gx#&import-binding-key
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'key))
    (define gx#&import-binding-phi
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'phi))
    (define gx#&import-binding-e-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'e))
    (define gx#&import-binding-context-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'context))
    (define gx#&import-binding-weak?-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'weak?))
    (define gx#&import-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'id))
    (define gx#&import-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'key))
    (define gx#&import-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'phi))
    (define gx#alias-binding::t
      (__make-class-type
       'gx#alias-binding::t
       'alias-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#alias-binding? (__make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _$args83670_
        (apply make-instance gx#alias-binding::t _$args83670_)))
    (define gx#alias-binding-e
      (__make-class-slot-accessor gx#alias-binding::t 'e))
    (define gx#alias-binding-id
      (__make-class-slot-accessor gx#alias-binding::t 'id))
    (define gx#alias-binding-key
      (__make-class-slot-accessor gx#alias-binding::t 'key))
    (define gx#alias-binding-phi
      (__make-class-slot-accessor gx#alias-binding::t 'phi))
    (define gx#alias-binding-e-set!
      (__make-class-slot-mutator gx#alias-binding::t 'e))
    (define gx#alias-binding-id-set!
      (__make-class-slot-mutator gx#alias-binding::t 'id))
    (define gx#alias-binding-key-set!
      (__make-class-slot-mutator gx#alias-binding::t 'key))
    (define gx#alias-binding-phi-set!
      (__make-class-slot-mutator gx#alias-binding::t 'phi))
    (define gx#&alias-binding-e
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'e))
    (define gx#&alias-binding-id
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'id))
    (define gx#&alias-binding-key
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'phi))
    (define gx#&alias-binding-e-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'e))
    (define gx#&alias-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'id))
    (define gx#&alias-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'phi))
    (define gx#expander::t
      (__make-class-type
       'gx#expander::t
       'expander
       (list)
       '(e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander? (__make-class-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _$args83667_ (apply make-instance gx#expander::t _$args83667_)))
    (define gx#expander-e (__make-class-slot-accessor gx#expander::t 'e))
    (define gx#expander-e-set! (__make-class-slot-mutator gx#expander::t 'e))
    (define gx#&expander-e
      (__make-class-slot-unchecked-accessor gx#expander::t 'e))
    (define gx#&expander-e-set!
      (__make-class-slot-unchecked-mutator gx#expander::t 'e))
    (define gx#core-expander::t
      (__make-class-type
       'gx#core-expander::t
       'core-expander
       (list gx#expander::t)
       '(id compile-top)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#core-expander? (__make-class-predicate gx#core-expander::t))
    (define gx#make-core-expander
      (lambda _$args83664_
        (apply make-instance gx#core-expander::t _$args83664_)))
    (define gx#core-expander-id
      (__make-class-slot-accessor gx#core-expander::t 'id))
    (define gx#core-expander-compile-top
      (__make-class-slot-accessor gx#core-expander::t 'compile-top))
    (define gx#core-expander-e
      (__make-class-slot-accessor gx#core-expander::t 'e))
    (define gx#core-expander-id-set!
      (__make-class-slot-mutator gx#core-expander::t 'id))
    (define gx#core-expander-compile-top-set!
      (__make-class-slot-mutator gx#core-expander::t 'compile-top))
    (define gx#core-expander-e-set!
      (__make-class-slot-mutator gx#core-expander::t 'e))
    (define gx#&core-expander-id
      (__make-class-slot-unchecked-accessor gx#core-expander::t 'id))
    (define gx#&core-expander-compile-top
      (__make-class-slot-unchecked-accessor gx#core-expander::t 'compile-top))
    (define gx#&core-expander-e
      (__make-class-slot-unchecked-accessor gx#core-expander::t 'e))
    (define gx#&core-expander-id-set!
      (__make-class-slot-unchecked-mutator gx#core-expander::t 'id))
    (define gx#&core-expander-compile-top-set!
      (__make-class-slot-unchecked-mutator gx#core-expander::t 'compile-top))
    (define gx#&core-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#core-expander::t 'e))
    (define gx#expression-form::t
      (__make-class-type
       'gx#expression-form::t
       'expression-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expression-form? (__make-class-predicate gx#expression-form::t))
    (define gx#make-expression-form
      (lambda _$args83661_
        (apply make-instance gx#expression-form::t _$args83661_)))
    (define gx#expression-form-id
      (__make-class-slot-accessor gx#expression-form::t 'id))
    (define gx#expression-form-compile-top
      (__make-class-slot-accessor gx#expression-form::t 'compile-top))
    (define gx#expression-form-e
      (__make-class-slot-accessor gx#expression-form::t 'e))
    (define gx#expression-form-id-set!
      (__make-class-slot-mutator gx#expression-form::t 'id))
    (define gx#expression-form-compile-top-set!
      (__make-class-slot-mutator gx#expression-form::t 'compile-top))
    (define gx#expression-form-e-set!
      (__make-class-slot-mutator gx#expression-form::t 'e))
    (define gx#&expression-form-id
      (__make-class-slot-unchecked-accessor gx#expression-form::t 'id))
    (define gx#&expression-form-compile-top
      (__make-class-slot-unchecked-accessor
       gx#expression-form::t
       'compile-top))
    (define gx#&expression-form-e
      (__make-class-slot-unchecked-accessor gx#expression-form::t 'e))
    (define gx#&expression-form-id-set!
      (__make-class-slot-unchecked-mutator gx#expression-form::t 'id))
    (define gx#&expression-form-compile-top-set!
      (__make-class-slot-unchecked-mutator gx#expression-form::t 'compile-top))
    (define gx#&expression-form-e-set!
      (__make-class-slot-unchecked-mutator gx#expression-form::t 'e))
    (define gx#special-form::t
      (__make-class-type
       'gx#special-form::t
       'special-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#special-form? (__make-class-predicate gx#special-form::t))
    (define gx#make-special-form
      (lambda _$args83658_
        (apply make-instance gx#special-form::t _$args83658_)))
    (define gx#special-form-id
      (__make-class-slot-accessor gx#special-form::t 'id))
    (define gx#special-form-compile-top
      (__make-class-slot-accessor gx#special-form::t 'compile-top))
    (define gx#special-form-e
      (__make-class-slot-accessor gx#special-form::t 'e))
    (define gx#special-form-id-set!
      (__make-class-slot-mutator gx#special-form::t 'id))
    (define gx#special-form-compile-top-set!
      (__make-class-slot-mutator gx#special-form::t 'compile-top))
    (define gx#special-form-e-set!
      (__make-class-slot-mutator gx#special-form::t 'e))
    (define gx#&special-form-id
      (__make-class-slot-unchecked-accessor gx#special-form::t 'id))
    (define gx#&special-form-compile-top
      (__make-class-slot-unchecked-accessor gx#special-form::t 'compile-top))
    (define gx#&special-form-e
      (__make-class-slot-unchecked-accessor gx#special-form::t 'e))
    (define gx#&special-form-id-set!
      (__make-class-slot-unchecked-mutator gx#special-form::t 'id))
    (define gx#&special-form-compile-top-set!
      (__make-class-slot-unchecked-mutator gx#special-form::t 'compile-top))
    (define gx#&special-form-e-set!
      (__make-class-slot-unchecked-mutator gx#special-form::t 'e))
    (define gx#definition-form::t
      (__make-class-type
       'gx#definition-form::t
       'definition-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#definition-form? (__make-class-predicate gx#definition-form::t))
    (define gx#make-definition-form
      (lambda _$args83655_
        (apply make-instance gx#definition-form::t _$args83655_)))
    (define gx#definition-form-id
      (__make-class-slot-accessor gx#definition-form::t 'id))
    (define gx#definition-form-compile-top
      (__make-class-slot-accessor gx#definition-form::t 'compile-top))
    (define gx#definition-form-e
      (__make-class-slot-accessor gx#definition-form::t 'e))
    (define gx#definition-form-id-set!
      (__make-class-slot-mutator gx#definition-form::t 'id))
    (define gx#definition-form-compile-top-set!
      (__make-class-slot-mutator gx#definition-form::t 'compile-top))
    (define gx#definition-form-e-set!
      (__make-class-slot-mutator gx#definition-form::t 'e))
    (define gx#&definition-form-id
      (__make-class-slot-unchecked-accessor gx#definition-form::t 'id))
    (define gx#&definition-form-compile-top
      (__make-class-slot-unchecked-accessor
       gx#definition-form::t
       'compile-top))
    (define gx#&definition-form-e
      (__make-class-slot-unchecked-accessor gx#definition-form::t 'e))
    (define gx#&definition-form-id-set!
      (__make-class-slot-unchecked-mutator gx#definition-form::t 'id))
    (define gx#&definition-form-compile-top-set!
      (__make-class-slot-unchecked-mutator gx#definition-form::t 'compile-top))
    (define gx#&definition-form-e-set!
      (__make-class-slot-unchecked-mutator gx#definition-form::t 'e))
    (define gx#top-special-form::t
      (__make-class-type
       'gx#top-special-form::t
       'top-special-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-special-form?
      (__make-class-predicate gx#top-special-form::t))
    (define gx#make-top-special-form
      (lambda _$args83652_
        (apply make-instance gx#top-special-form::t _$args83652_)))
    (define gx#top-special-form-id
      (__make-class-slot-accessor gx#top-special-form::t 'id))
    (define gx#top-special-form-compile-top
      (__make-class-slot-accessor gx#top-special-form::t 'compile-top))
    (define gx#top-special-form-e
      (__make-class-slot-accessor gx#top-special-form::t 'e))
    (define gx#top-special-form-id-set!
      (__make-class-slot-mutator gx#top-special-form::t 'id))
    (define gx#top-special-form-compile-top-set!
      (__make-class-slot-mutator gx#top-special-form::t 'compile-top))
    (define gx#top-special-form-e-set!
      (__make-class-slot-mutator gx#top-special-form::t 'e))
    (define gx#&top-special-form-id
      (__make-class-slot-unchecked-accessor gx#top-special-form::t 'id))
    (define gx#&top-special-form-compile-top
      (__make-class-slot-unchecked-accessor
       gx#top-special-form::t
       'compile-top))
    (define gx#&top-special-form-e
      (__make-class-slot-unchecked-accessor gx#top-special-form::t 'e))
    (define gx#&top-special-form-id-set!
      (__make-class-slot-unchecked-mutator gx#top-special-form::t 'id))
    (define gx#&top-special-form-compile-top-set!
      (__make-class-slot-unchecked-mutator
       gx#top-special-form::t
       'compile-top))
    (define gx#&top-special-form-e-set!
      (__make-class-slot-unchecked-mutator gx#top-special-form::t 'e))
    (define gx#module-special-form::t
      (__make-class-type
       'gx#module-special-form::t
       'module-special-form
       (list gx#top-special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-special-form?
      (__make-class-predicate gx#module-special-form::t))
    (define gx#make-module-special-form
      (lambda _$args83649_
        (apply make-instance gx#module-special-form::t _$args83649_)))
    (define gx#module-special-form-id
      (__make-class-slot-accessor gx#module-special-form::t 'id))
    (define gx#module-special-form-compile-top
      (__make-class-slot-accessor gx#module-special-form::t 'compile-top))
    (define gx#module-special-form-e
      (__make-class-slot-accessor gx#module-special-form::t 'e))
    (define gx#module-special-form-id-set!
      (__make-class-slot-mutator gx#module-special-form::t 'id))
    (define gx#module-special-form-compile-top-set!
      (__make-class-slot-mutator gx#module-special-form::t 'compile-top))
    (define gx#module-special-form-e-set!
      (__make-class-slot-mutator gx#module-special-form::t 'e))
    (define gx#&module-special-form-id
      (__make-class-slot-unchecked-accessor gx#module-special-form::t 'id))
    (define gx#&module-special-form-compile-top
      (__make-class-slot-unchecked-accessor
       gx#module-special-form::t
       'compile-top))
    (define gx#&module-special-form-e
      (__make-class-slot-unchecked-accessor gx#module-special-form::t 'e))
    (define gx#&module-special-form-id-set!
      (__make-class-slot-unchecked-mutator gx#module-special-form::t 'id))
    (define gx#&module-special-form-compile-top-set!
      (__make-class-slot-unchecked-mutator
       gx#module-special-form::t
       'compile-top))
    (define gx#&module-special-form-e-set!
      (__make-class-slot-unchecked-mutator gx#module-special-form::t 'e))
    (define gx#feature-expander::t
      (__make-class-type
       'gx#feature-expander::t
       'feature-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#feature-expander?
      (__make-class-predicate gx#feature-expander::t))
    (define gx#make-feature-expander
      (lambda _$args83646_
        (apply make-instance gx#feature-expander::t _$args83646_)))
    (define gx#feature-expander-e
      (__make-class-slot-accessor gx#feature-expander::t 'e))
    (define gx#feature-expander-e-set!
      (__make-class-slot-mutator gx#feature-expander::t 'e))
    (define gx#&feature-expander-e
      (__make-class-slot-unchecked-accessor gx#feature-expander::t 'e))
    (define gx#&feature-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#feature-expander::t 'e))
    (define gx#private-feature-expander::t
      (__make-class-type
       'gx#private-feature-expander::t
       'private-feature-expander
       (list gx#feature-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#private-feature-expander?
      (__make-class-predicate gx#private-feature-expander::t))
    (define gx#make-private-feature-expander
      (lambda _$args83643_
        (apply make-instance gx#private-feature-expander::t _$args83643_)))
    (define gx#private-feature-expander-e
      (__make-class-slot-accessor gx#private-feature-expander::t 'e))
    (define gx#private-feature-expander-e-set!
      (__make-class-slot-mutator gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e
      (__make-class-slot-unchecked-accessor gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#private-feature-expander::t 'e))
    (define gx#reserved-expander::t
      (__make-class-type
       'gx#reserved-expander::t
       'reserved-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#reserved-expander?
      (__make-class-predicate gx#reserved-expander::t))
    (define gx#make-reserved-expander
      (lambda _$args83640_
        (apply make-instance gx#reserved-expander::t _$args83640_)))
    (define gx#reserved-expander-e
      (__make-class-slot-accessor gx#reserved-expander::t 'e))
    (define gx#reserved-expander-e-set!
      (__make-class-slot-mutator gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e
      (__make-class-slot-unchecked-accessor gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#reserved-expander::t 'e))
    (define gx#macro-expander::t
      (__make-class-type
       'gx#macro-expander::t
       'macro-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#macro-expander? (__make-class-predicate gx#macro-expander::t))
    (define gx#make-macro-expander
      (lambda _$args83637_
        (apply make-instance gx#macro-expander::t _$args83637_)))
    (define gx#macro-expander-e
      (__make-class-slot-accessor gx#macro-expander::t 'e))
    (define gx#macro-expander-e-set!
      (__make-class-slot-mutator gx#macro-expander::t 'e))
    (define gx#&macro-expander-e
      (__make-class-slot-unchecked-accessor gx#macro-expander::t 'e))
    (define gx#&macro-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#macro-expander::t 'e))
    (define gx#rename-macro-expander::t
      (__make-class-type
       'gx#rename-macro-expander::t
       'rename-macro-expander
       (list gx#macro-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#rename-macro-expander?
      (__make-class-predicate gx#rename-macro-expander::t))
    (define gx#make-rename-macro-expander
      (lambda _$args83634_
        (apply make-instance gx#rename-macro-expander::t _$args83634_)))
    (define gx#rename-macro-expander-e
      (__make-class-slot-accessor gx#rename-macro-expander::t 'e))
    (define gx#rename-macro-expander-e-set!
      (__make-class-slot-mutator gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e
      (__make-class-slot-unchecked-accessor gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#rename-macro-expander::t 'e))
    (define gx#user-expander::t
      (__make-class-type
       'gx#user-expander::t
       'user-expander
       (list gx#macro-expander::t)
       '(context phi)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#user-expander? (__make-class-predicate gx#user-expander::t))
    (define gx#make-user-expander
      (lambda _$args83631_
        (apply make-instance gx#user-expander::t _$args83631_)))
    (define gx#user-expander-context
      (__make-class-slot-accessor gx#user-expander::t 'context))
    (define gx#user-expander-phi
      (__make-class-slot-accessor gx#user-expander::t 'phi))
    (define gx#user-expander-e
      (__make-class-slot-accessor gx#user-expander::t 'e))
    (define gx#user-expander-context-set!
      (__make-class-slot-mutator gx#user-expander::t 'context))
    (define gx#user-expander-phi-set!
      (__make-class-slot-mutator gx#user-expander::t 'phi))
    (define gx#user-expander-e-set!
      (__make-class-slot-mutator gx#user-expander::t 'e))
    (define gx#&user-expander-context
      (__make-class-slot-unchecked-accessor gx#user-expander::t 'context))
    (define gx#&user-expander-phi
      (__make-class-slot-unchecked-accessor gx#user-expander::t 'phi))
    (define gx#&user-expander-e
      (__make-class-slot-unchecked-accessor gx#user-expander::t 'e))
    (define gx#&user-expander-context-set!
      (__make-class-slot-unchecked-mutator gx#user-expander::t 'context))
    (define gx#&user-expander-phi-set!
      (__make-class-slot-unchecked-mutator gx#user-expander::t 'phi))
    (define gx#&user-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#user-expander::t 'e))
    (define gx#expander-mark::t
      (__make-class-type
       'gx#expander-mark::t
       'expander-mark
       (list)
       '(subst context phi trace)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander-mark? (__make-class-predicate gx#expander-mark::t))
    (define gx#make-expander-mark
      (lambda _$args83628_
        (apply make-instance gx#expander-mark::t _$args83628_)))
    (define gx#expander-mark-subst
      (__make-class-slot-accessor gx#expander-mark::t 'subst))
    (define gx#expander-mark-context
      (__make-class-slot-accessor gx#expander-mark::t 'context))
    (define gx#expander-mark-phi
      (__make-class-slot-accessor gx#expander-mark::t 'phi))
    (define gx#expander-mark-trace
      (__make-class-slot-accessor gx#expander-mark::t 'trace))
    (define gx#expander-mark-subst-set!
      (__make-class-slot-mutator gx#expander-mark::t 'subst))
    (define gx#expander-mark-context-set!
      (__make-class-slot-mutator gx#expander-mark::t 'context))
    (define gx#expander-mark-phi-set!
      (__make-class-slot-mutator gx#expander-mark::t 'phi))
    (define gx#expander-mark-trace-set!
      (__make-class-slot-mutator gx#expander-mark::t 'trace))
    (define gx#&expander-mark-subst
      (__make-class-slot-unchecked-accessor gx#expander-mark::t 'subst))
    (define gx#&expander-mark-context
      (__make-class-slot-unchecked-accessor gx#expander-mark::t 'context))
    (define gx#&expander-mark-phi
      (__make-class-slot-unchecked-accessor gx#expander-mark::t 'phi))
    (define gx#&expander-mark-trace
      (__make-class-slot-unchecked-accessor gx#expander-mark::t 'trace))
    (define gx#&expander-mark-subst-set!
      (__make-class-slot-unchecked-mutator gx#expander-mark::t 'subst))
    (define gx#&expander-mark-context-set!
      (__make-class-slot-unchecked-mutator gx#expander-mark::t 'context))
    (define gx#&expander-mark-phi-set!
      (__make-class-slot-unchecked-mutator gx#expander-mark::t 'phi))
    (define gx#&expander-mark-trace-set!
      (__make-class-slot-unchecked-mutator gx#expander-mark::t 'trace))
    (define gx#raise-syntax-error
      (lambda (_ctx83613_ _message83614_ _stx83615_ . _details83616_)
        (let ((_ctx83626_
               (let ((_$e83618_ _ctx83613_))
                 (if _$e83618_
                     _$e83618_
                     (let ((_$e83621_ (gx#core-context-top__0)))
                       (if _$e83621_
                           ((lambda (_ctx83624_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx83624_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e83621_)
                           '#f))))))
          (raise (make-syntax-error
                  _message83614_
                  (cons _stx83615_ _details83616_)
                  _ctx83626_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx83600_ _expression?83601_)
        (gx#eval-syntax* (gx#core-expand__% _stx83600_ _expression?83601_))))
    (define gx#eval-syntax__0
      (lambda (_stx83606_)
        (let ((_expression?83608_ '#f))
          (gx#eval-syntax__% _stx83606_ _expression?83608_))))
    (define gx#eval-syntax
      (lambda _g84037_
        (let ((_g84036_ (##length _g84037_)))
          (cond ((##fx= _g84036_ 1)
                 (apply (lambda (_stx83606_) (gx#eval-syntax__0 _stx83606_))
                        _g84037_))
                ((##fx= _g84036_ 2)
                 (apply (lambda (_stx83610_ _expression?83611_)
                          (gx#eval-syntax__% _stx83610_ _expression?83611_))
                        _g84037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g84037_))))))
    (define gx#eval-syntax*
      (lambda (_stx83597_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx83597_))))
    (define gx#core-expand__%
      (lambda (_stx83584_ _expression?83585_)
        (if _expression?83585_
            (gx#core-expand-expression _stx83584_)
            (gx#core-expand-top _stx83584_))))
    (define gx#core-expand__0
      (lambda (_stx83590_)
        (let ((_expression?83592_ '#f))
          (gx#core-expand__% _stx83590_ _expression?83592_))))
    (define gx#core-expand
      (lambda _g84039_
        (let ((_g84038_ (##length _g84039_)))
          (cond ((##fx= _g84038_ 1)
                 (apply (lambda (_stx83590_) (gx#core-expand__0 _stx83590_))
                        _g84039_))
                ((##fx= _g84038_ 2)
                 (apply (lambda (_stx83594_ _expression?83595_)
                          (gx#core-expand__% _stx83594_ _expression?83595_))
                        _g84039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g84039_))))))
    (define gx#core-expand-top
      (lambda (_stx83551_)
        (let* ((_stx83553_ (gx#core-expand*__0 _stx83551_))
               (_e8355483561_ _stx83553_)
               (_E8355683565_
                (lambda () (gx#core-expand-expression _stx83553_)))
               (_E8355583579_
                (lambda ()
                  (if (gx#stx-pair? _e8355483561_)
                      (let ((_e8355783569_ (gx#syntax-e _e8355483561_)))
                        (let ((_hd8355883572_ (##car _e8355783569_))
                              (_tl8355983574_ (##cdr _e8355783569_)))
                          (let ((_form83577_ _hd8355883572_))
                            (if (gx#core-bound-identifier?__0 _form83577_)
                                _stx83553_
                                (_E8355683565_)))))
                      (_E8355683565_)))))
          (_E8355583579_))))
    (define gx#core-expand-expression
      (lambda (_stx83497_)
        (letrec ((_sealed-expression?83499_
                  (lambda (_hd83521_)
                    (if (gx#sealed-syntax? _hd83521_)
                        (let* ((_e8352283529_ _hd83521_)
                               (_E8352483533_ (lambda () '#f))
                               (_E8352383547_
                                (lambda ()
                                  (if (gx#stx-pair? _e8352283529_)
                                      (let ((_e8352583537_
                                             (gx#syntax-e _e8352283529_)))
                                        (let ((_hd8352683540_
                                               (##car _e8352583537_))
                                              (_tl8352783542_
                                               (##cdr _e8352583537_)))
                                          (let ((_form83545_ _hd8352683540_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form83545_
                                                 gx#expression-form-binding?)
                                                (_E8352483533_)))))
                                      (_E8352483533_)))))
                          (_E8352383547_))
                        '#f)))
                 (_illegal-expression83500_
                  (lambda (_hd83518_ . __83519_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx83497_
                     _hd83518_)))
                 (_expand-e83501_
                  (lambda (_form83513_ _hd83514_)
                    (let ((_bind83516_
                           (if (##structure-instance-of?
                                _form83513_
                                'gx#binding::t)
                               _form83513_
                               (gx#resolve-identifier__0 _form83513_))))
                      (if (gx#core-expander-binding? _bind83516_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref _bind83516_ '4 '#f '#f)
                           (gx#stx-wrap-source
                            _hd83514_
                            (gx#stx-source _stx83497_)))
                          (if (##structure-direct-instance-of?
                               _bind83516_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind83516_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd83514_
                                 (gx#stx-source _stx83497_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx83497_
                               _form83513_)))))))
          (let ((_hd83503_ (gx#core-expand-head _stx83497_)))
            (if (_sealed-expression?83499_ _hd83503_)
                _hd83503_
                (if (gx#stx-pair? _hd83503_)
                    (let* ((_form83505_ (gx#stx-car _hd83503_))
                           (_bind83507_
                            (if (gx#identifier? _form83505_)
                                (gx#resolve-identifier__0 _form83505_)
                                '#f)))
                      (if (or (not _bind83507_)
                              (not (gx#core-expander-binding? _bind83507_)))
                          (_expand-e83501_ '%%app (cons '%%app _hd83503_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind83507_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd83503_
                               _illegal-expression83500_)
                              (if (gx#expression-form-binding? _bind83507_)
                                  (_expand-e83501_ _bind83507_ _hd83503_)
                                  (if (gx#direct-special-form-binding?
                                       _bind83507_)
                                      (gx#core-expand-expression
                                       (_expand-e83501_ _bind83507_ _hd83503_))
                                      (_illegal-expression83500_
                                       _hd83503_))))))
                    (if (gx#core-bound-identifier?__0 _hd83503_)
                        (_illegal-expression83500_ _hd83503_)
                        (if (gx#identifier? _hd83503_)
                            (_expand-e83501_
                             '%%ref
                             (cons '%%ref (cons _hd83503_ '())))
                            (if (gx#stx-datum? _hd83503_)
                                (_expand-e83501_
                                 '%#quote
                                 (cons '%#quote (cons _hd83503_ '())))
                                (_illegal-expression83500_ _hd83503_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx83492_)
        (__call-with-parameters
         (lambda ()
           (let ((_stx83495_ (gx#core-expand-expression _stx83492_)))
             (values _stx83495_ (gx#eval-syntax* _stx83495_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx83473_ _stop?83474_)
        (let _lp83476_ ((_stx83478_ _stx83473_))
          (if (_stop?83474_ _stx83478_)
              _stx83478_
              (let ((_rstx83480_ (gx#core-expand1 _stx83478_)))
                (if (eq? _stx83478_ _rstx83480_)
                    _stx83478_
                    (_lp83476_ _rstx83480_)))))))
    (define gx#core-expand*__0
      (lambda (_stx83485_)
        (let ((_stop?83487_ false))
          (gx#core-expand*__% _stx83485_ _stop?83487_))))
    (define gx#core-expand*
      (lambda _g84041_
        (let ((_g84040_ (##length _g84041_)))
          (cond ((##fx= _g84040_ 1)
                 (apply (lambda (_stx83485_) (gx#core-expand*__0 _stx83485_))
                        _g84041_))
                ((##fx= _g84040_ 2)
                 (apply (lambda (_stx83489_ _stop?83490_)
                          (gx#core-expand*__% _stx83489_ _stop?83490_))
                        _g84041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g84041_))))))
    (define gx#core-expand1
      (lambda (_stx83429_)
        (letrec ((_step83431_
                  (lambda (_hd83468_)
                    (let ((_bind83470_ (gx#resolve-identifier__0 _hd83468_)))
                      (if (##structure-instance-of?
                           _bind83470_
                           'gx#runtime-binding::t)
                          _stx83429_
                          (if (##structure-direct-instance-of?
                               _bind83470_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind83470_
                                '4
                                '#f
                                '#f)
                               _stx83429_)
                              (if (not _bind83470_)
                                  _stx83429_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx83429_))))))))
          (let* ((_e8343283440_ _stx83429_)
                 (_E8343883444_ (lambda () _stx83429_))
                 (_E8343483450_
                  (lambda ()
                    (let ((_hd83448_ _e8343283440_))
                      (if (gx#identifier? _hd83448_)
                          (_step83431_ _hd83448_)
                          (_E8343883444_)))))
                 (_E8343383464_
                  (lambda ()
                    (if (gx#stx-pair? _e8343283440_)
                        (let ((_e8343583454_ (gx#syntax-e _e8343283440_)))
                          (let ((_hd8343683457_ (##car _e8343583454_))
                                (_tl8343783459_ (##cdr _e8343583454_)))
                            (let ((_hd83462_ _hd8343683457_))
                              (if (gx#identifier? _hd83462_)
                                  (_step83431_ _hd83462_)
                                  (_E8343483450_)))))
                        (_E8343483450_)))))
            (_E8343383464_)))))
    (define gx#core-expand-head
      (lambda (_stx83395_)
        (letrec ((_stop?83397_
                  (lambda (_stx83399_)
                    (let* ((_e8340083407_ _stx83399_)
                           (_E8340283411_ (lambda () '#f))
                           (_E8340183425_
                            (lambda ()
                              (if (gx#stx-pair? _e8340083407_)
                                  (let ((_e8340383415_
                                         (gx#syntax-e _e8340083407_)))
                                    (let ((_hd8340483418_
                                           (##car _e8340383415_))
                                          (_tl8340583420_
                                           (##cdr _e8340383415_)))
                                      (let ((_hd83423_ _hd8340483418_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd83423_)
                                            (_E8340283411_)))))
                                  (_E8340283411_)))))
                      (_E8340183425_)))))
          (gx#core-expand*__% _stx83395_ _stop?83397_))))
    (define gx#core-expand-block__%
      (lambda (_stx83201_
               _expand-special83202_
               _begin-form83203_
               _expand-e83204_)
        (letrec ((_expand-splice83206_
                  (lambda (_hd83369_ _body83370_ _rest83371_ _r83372_)
                    (if (gx#stx-list? _body83370_)
                        (_K83210_
                         (gx#stx-foldr cons _rest83371_ _body83370_)
                         _r83372_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx83201_
                         _hd83369_))))
                 (_expand-cond-expand83207_
                  (lambda (_hd83365_ _rest83366_ _r83367_)
                    (_K83210_
                     (cons (gx#core-expand-cond-expand% _hd83365_) _rest83366_)
                     _r83367_)))
                 (_expand-include83208_
                  (lambda (_hd83314_ _rest83315_ _r83316_)
                    (let* ((_e8331783327_ _hd83314_)
                           (_E8331983331_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8331783327_)))
                           (_E8331883361_
                            (lambda ()
                              (if (gx#stx-pair? _e8331783327_)
                                  (let ((_e8332083335_
                                         (gx#syntax-e _e8331783327_)))
                                    (let ((_hd8332183338_
                                           (##car _e8332083335_))
                                          (_tl8332283340_
                                           (##cdr _e8332083335_)))
                                      (if (gx#stx-pair? _tl8332283340_)
                                          (let ((_e8332383343_
                                                 (gx#syntax-e _tl8332283340_)))
                                            (let ((_hd8332483346_
                                                   (##car _e8332383343_))
                                                  (_tl8332583348_
                                                   (##cdr _e8332383343_)))
                                              (let ((_path83351_
                                                     _hd8332483346_))
                                                (if (gx#stx-null?
                                                     _tl8332583348_)
                                                    (if (gx#stx-string?
                                                         _path83351_)
                                                        (let* ((_rpath83353_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path83351_
                         (gx#stx-source _hd83314_)))
                       (_block83355_
                        (gx#core-expand-include%__% _hd83314_ _rpath83353_))
                       (_rbody83358_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block83355_
                            _expand-special83202_
                            '#f
                            _expand-e83204_))
                         gx#current-expander-path
                         (cons _rpath83353_ (gx#current-expander-path)))))
                  (_K83210_ _rest83315_ (__foldr1 cons _r83316_ _rbody83358_)))
                (_E8331983331_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8331983331_)))))
                                          (_E8331983331_))))
                                  (_E8331983331_)))))
                      (_E8331883361_))))
                 (_expand-expression83209_
                  (lambda (_hd83310_ _rest83311_ _r83312_)
                    (_K83210_
                     _rest83311_
                     (cons (_expand-e83204_ _hd83310_) _r83312_))))
                 (_K83210_
                  (lambda (_rest83240_ _r83241_)
                    (let* ((_e8324283249_ _rest83240_)
                           (_E8324483253_
                            (lambda ()
                              (if _begin-form83203_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form83203_
                                    (reverse _r83241_))
                                   (gx#stx-source _stx83201_))
                                  _r83241_)))
                           (_E8324383306_
                            (lambda ()
                              (if (gx#stx-pair? _e8324283249_)
                                  (let ((_e8324583257_
                                         (gx#syntax-e _e8324283249_)))
                                    (let ((_hd8324683260_
                                           (##car _e8324583257_))
                                          (_tl8324783262_
                                           (##cdr _e8324583257_)))
                                      (let* ((_hd83265_ _hd8324683260_)
                                             (_rest83267_ _tl8324783262_))
                                        (if '#t
                                            (let* ((_hd83269_
                                                    (gx#core-expand-head
                                                     _hd83265_))
                                                   (_e8327083277_ _hd83269_)
                                                   (_E8327283281_
                                                    (lambda ()
                                                      (_expand-expression83209_
                                                       _hd83269_
                                                       _rest83267_
                                                       _r83241_)))
                                                   (_E8327183302_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8327083277_)
                                                          (let ((_e8327383285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8327083277_)))
                    (let ((_hd8327483288_ (##car _e8327383285_))
                          (_tl8327583290_ (##cdr _e8327383285_)))
                      (let* ((_form83293_ _hd8327483288_)
                             (_body83295_ _tl8327583290_))
                        (if '#t
                            (let ((_bind83297_
                                   (if (gx#identifier? _form83293_)
                                       (gx#resolve-identifier__0 _form83293_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind83297_)
                                  (let ((_$e83299_
                                         (##unchecked-structure-ref
                                          _bind83297_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _$e83299_)
                                        (_expand-splice83206_
                                         _hd83269_
                                         _body83295_
                                         _rest83267_
                                         _r83241_)
                                        (if (eq? '%#cond-expand _$e83299_)
                                            (_expand-cond-expand83207_
                                             _hd83269_
                                             _rest83267_
                                             _r83241_)
                                            (if (eq? '%#include _$e83299_)
                                                (_expand-include83208_
                                                 _hd83269_
                                                 _rest83267_
                                                 _r83241_)
                                                (_expand-special83202_
                                                 _hd83269_
                                                 _K83210_
                                                 _rest83267_
                                                 _r83241_)))))
                                  (_expand-expression83209_
                                   _hd83269_
                                   _rest83267_
                                   _r83241_)))
                            (_E8327283281_)))))
                  (_E8327283281_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8327183302_))
                                            (_E8324483253_)))))
                                  (_E8324483253_)))))
                      (_E8324383306_)))))
          (let* ((_e8321183218_ _stx83201_)
                 (_E8321383222_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8321183218_)))
                 (_E8321283236_
                  (lambda ()
                    (if (gx#stx-pair? _e8321183218_)
                        (let ((_e8321483226_ (gx#syntax-e _e8321183218_)))
                          (let ((_hd8321583229_ (##car _e8321483226_))
                                (_tl8321683231_ (##cdr _e8321483226_)))
                            (let ((_body83234_ _tl8321683231_))
                              (if (gx#stx-list? _body83234_)
                                  (_K83210_ _body83234_ '())
                                  (_E8321383222_)))))
                        (_E8321383222_)))))
            (_E8321283236_)))))
    (define gx#core-expand-block__0
      (lambda (_stx83377_ _expand-special83378_)
        (let* ((_begin-form83380_ '%#begin)
               (_expand-e83382_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx83377_
           _expand-special83378_
           _begin-form83380_
           _expand-e83382_))))
    (define gx#core-expand-block__1
      (lambda (_stx83384_ _expand-special83385_ _begin-form83386_)
        (let ((_expand-e83388_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx83384_
           _expand-special83385_
           _begin-form83386_
           _expand-e83388_))))
    (define gx#core-expand-block
      (lambda _g84043_
        (let ((_g84042_ (##length _g84043_)))
          (cond ((##fx= _g84042_ 2)
                 (apply (lambda (_stx83377_ _expand-special83378_)
                          (gx#core-expand-block__0
                           _stx83377_
                           _expand-special83378_))
                        _g84043_))
                ((##fx= _g84042_ 3)
                 (apply (lambda (_stx83384_
                                 _expand-special83385_
                                 _begin-form83386_)
                          (gx#core-expand-block__1
                           _stx83384_
                           _expand-special83385_
                           _begin-form83386_))
                        _g84043_))
                ((##fx= _g84042_ 4)
                 (apply (lambda (_stx83390_
                                 _expand-special83391_
                                 _begin-form83392_
                                 _expand-e83393_)
                          (gx#core-expand-block__%
                           _stx83390_
                           _expand-special83391_
                           _begin-form83392_
                           _expand-e83393_))
                        _g84043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g84043_))))))
    (define gx#core-expand-block*
      (lambda (_stx83149_ _expand-special83150_)
        (let* ((_g8315183162_
                (gx#core-expand-block__1 _stx83149_ _expand-special83150_ '#f))
               (_E8315583166_
                (lambda () (error '"No clause matching" _g8315183162_))))
          (let ((_K8316083197_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx83149_)))
                (_K8315783183_ (lambda (_expr83181_) _expr83181_))
                (_K8315683172_
                 (lambda (_body83170_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body83170_))
                    (gx#stx-source _stx83149_)))))
            (let ((_try-match8315383193_
                   (lambda ()
                     (if (##pair? _g8315183162_)
                         (let ((_tl8315983188_ (##cdr _g8315183162_))
                               (_hd8315883186_ (##car _g8315183162_)))
                           (if (##null? _tl8315983188_)
                               (let ((_expr83191_ _hd8315883186_))
                                 (_K8315783183_ _expr83191_))
                               (let ((_body83175_ _g8315183162_))
                                 (_K8315683172_ _body83175_))))
                         (let ((_body83175_ _g8315183162_))
                           (_K8315683172_ _body83175_))))))
              (if (##null? _g8315183162_)
                  (_K8316083197_)
                  (_try-match8315383193_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx82977_)
        (letrec ((_satisfied?82979_
                  (lambda (_condition83077_)
                    (let* ((_e8307883093_ _condition83077_)
                           (_E8308883097_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8307883093_)))
                           (_E8308183116_
                            (lambda ()
                              (if (gx#stx-pair? _e8307883093_)
                                  (let ((_e8308983101_
                                         (gx#syntax-e _e8307883093_)))
                                    (let ((_hd8309083104_
                                           (##car _e8308983101_))
                                          (_tl8309183106_
                                           (##cdr _e8308983101_)))
                                      (let* ((_combinator83109_ _hd8309083104_)
                                             (_body83111_ _tl8309183106_))
                                        (if (gx#stx-list? _body83111_)
                                            (let ((_$e83113_
                                                   (gx#stx-e
                                                    _combinator83109_)))
                                              (if (eq? 'not _$e83113_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?82979_
                                                        _body83111_))
                                                  (if (eq? 'and _$e83113_)
                                                      (gx#stx-andmap
                                                       _satisfied?82979_
                                                       _body83111_)
                                                      (if (eq? 'or _$e83113_)
                                                          (gx#stx-ormap
                                                           _satisfied?82979_
                                                           _body83111_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e83113_)
                      (gx#stx-andmap gx#core-resolve-identifier _body83111_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx82977_
                       _combinator83109_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8308883097_)))))
                                  (_E8308883097_))))
                           (_E8308083139_
                            (lambda ()
                              (if (gx#stx-pair? _e8307883093_)
                                  (let ((_e8308283120_
                                         (gx#syntax-e _e8307883093_)))
                                    (let ((_hd8308383123_
                                           (##car _e8308283120_))
                                          (_tl8308483125_
                                           (##cdr _e8308283120_)))
                                      (if (and (gx#identifier? _hd8308383123_)
                                               (gx#core-identifier=?
                                                _hd8308383123_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8308483125_)
                                              (let ((_e8308583128_
                                                     (gx#syntax-e
                                                      _tl8308483125_)))
                                                (let ((_hd8308683131_
                                                       (##car _e8308583128_))
                                                      (_tl8308783133_
                                                       (##cdr _e8308583128_)))
                                                  (let ((_expr83136_
                                                         _hd8308683131_))
                                                    (if (gx#stx-null?
                                                         _tl8308783133_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr83136_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_E8308183116_))
                (_E8308183116_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8308183116_))
                                          (_E8308183116_))))
                                  (_E8308183116_))))
                           (_E8307983145_
                            (lambda ()
                              (let ((_id83143_ _e8307883093_))
                                (if (gx#identifier? _id83143_)
                                    (gx#core-bound-identifier?__%
                                     _id83143_
                                     gx#feature-binding?)
                                    (_E8308083139_))))))
                      (_E8307983145_))))
                 (_loop82980_
                  (lambda (_rest83010_)
                    (let* ((_e8301183019_ _rest83010_)
                           (_E8301783023_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8301183019_)))
                           (_E8301383027_
                            (lambda ()
                              (if (gx#stx-null? _e8301183019_)
                                  (if '#t '() (_E8301783023_))
                                  (_E8301783023_))))
                           (_E8301283073_
                            (lambda ()
                              (if (gx#stx-pair? _e8301183019_)
                                  (let ((_e8301483031_
                                         (gx#syntax-e _e8301183019_)))
                                    (let ((_hd8301583034_
                                           (##car _e8301483031_))
                                          (_tl8301683036_
                                           (##cdr _e8301483031_)))
                                      (let* ((_hd83039_ _hd8301583034_)
                                             (_rest83041_ _tl8301683036_))
                                        (if '#t
                                            (let* ((_e8304283049_ _hd83039_)
                                                   (_E8304483053_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8304283049_)))
                                                   (_E8304383069_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8304283049_)
                                                          (let ((_e8304583057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8304283049_)))
                    (let ((_hd8304683060_ (##car _e8304583057_))
                          (_tl8304783062_ (##cdr _e8304583057_)))
                      (let* ((_condition83065_ _hd8304683060_)
                             (_body83067_ _tl8304783062_))
                        (if '#t
                            (if (gx#stx-eq? _condition83065_ 'else)
                                (if (gx#stx-null? _rest83041_)
                                    _body83067_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx82977_
                                     _hd83039_))
                                (if (_satisfied?82979_ _condition83065_)
                                    _body83067_
                                    (_loop82980_ _rest83041_)))
                            (_E8304483053_)))))
                  (_E8304483053_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8304383069_))
                                            (_E8301383027_)))))
                                  (_E8301383027_)))))
                      (_E8301283073_)))))
          (let* ((_e8298182988_ _stx82977_)
                 (_E8298382992_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8298182988_)))
                 (_E8298283006_
                  (lambda ()
                    (if (gx#stx-pair? _e8298182988_)
                        (let ((_e8298482996_ (gx#syntax-e _e8298182988_)))
                          (let ((_hd8298582999_ (##car _e8298482996_))
                                (_tl8298683001_ (##cdr _e8298482996_)))
                            (let ((_clauses83004_ _tl8298683001_))
                              (if (gx#stx-list? _clauses83004_)
                                  (gx#core-cons
                                   'begin
                                   (_loop82980_ _clauses83004_))
                                  (_E8298382992_)))))
                        (_E8298382992_)))))
            (_E8298283006_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx82920_ _rpath82921_)
        (let* ((_e8292282932_ _stx82920_)
               (_E8292482936_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8292282932_)))
               (_E8292382963_
                (lambda ()
                  (if (gx#stx-pair? _e8292282932_)
                      (let ((_e8292582940_ (gx#syntax-e _e8292282932_)))
                        (let ((_hd8292682943_ (##car _e8292582940_))
                              (_tl8292782945_ (##cdr _e8292582940_)))
                          (if (gx#stx-pair? _tl8292782945_)
                              (let ((_e8292882948_
                                     (gx#syntax-e _tl8292782945_)))
                                (let ((_hd8292982951_ (##car _e8292882948_))
                                      (_tl8293082953_ (##cdr _e8292882948_)))
                                  (let ((_path82956_ _hd8292982951_))
                                    (if (gx#stx-null? _tl8293082953_)
                                        (if (gx#stx-string? _path82956_)
                                            (let ((_rpath82961_
                                                   (let ((_$e82958_
                                                          _rpath82921_))
                                                     (if _$e82958_
                                                         _$e82958_
                                                         (gx#core-resolve-path__%
                                                          _path82956_
                                                          (gx#stx-source
                                                           _stx82920_))))))
                                              (if (member _rpath82961_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx82920_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath82961_))
                                                    (gx#stx-source
                                                     _stx82920_)))))
                                            (_E8292482936_))
                                        (_E8292482936_)))))
                              (_E8292482936_))))
                      (_E8292482936_)))))
          (_E8292382963_))))
    (define gx#core-expand-include%__0
      (lambda (_stx82970_)
        (let ((_rpath82972_ '#f))
          (gx#core-expand-include%__% _stx82970_ _rpath82972_))))
    (define gx#core-expand-include%
      (lambda _g84045_
        (let ((_g84044_ (##length _g84045_)))
          (cond ((##fx= _g84044_ 1)
                 (apply (lambda (_stx82970_)
                          (gx#core-expand-include%__0 _stx82970_))
                        _g84045_))
                ((##fx= _g84044_ 2)
                 (apply (lambda (_stx82974_ _rpath82975_)
                          (gx#core-expand-include%__% _stx82974_ _rpath82975_))
                        _g84045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g84045_))))))
    (define gx#core-apply-expander__%
      (lambda (_K82889_ _stx82890_ _method82891_)
        (if (procedure? _K82889_)
            (let ((_$e82893_ (gx#stx-source _stx82890_)))
              (if _$e82893_
                  ((lambda (_g8289582897_)
                     (gx#stx-wrap-source (_K82889_ _stx82890_) _g8289582897_))
                   _$e82893_)
                  (_K82889_ _stx82890_)))
            (let ((_$e82900_ (bound-method-ref _K82889_ _method82891_)))
              (if _$e82900_
                  ((lambda (_g8290282904_)
                     (gx#core-apply-expander__%
                      _g8290282904_
                      _stx82890_
                      _method82891_))
                   _$e82900_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx82890_
                   _method82891_))))))
    (define gx#core-apply-expander__0
      (lambda (_K82910_ _stx82911_)
        (let ((_method82913_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K82910_ _stx82911_ _method82913_))))
    (define gx#core-apply-expander
      (lambda _g84047_
        (let ((_g84046_ (##length _g84047_)))
          (cond ((##fx= _g84046_ 2)
                 (apply (lambda (_K82910_ _stx82911_)
                          (gx#core-apply-expander__0 _K82910_ _stx82911_))
                        _g84047_))
                ((##fx= _g84046_ 3)
                 (apply (lambda (_K82915_ _stx82916_ _method82917_)
                          (gx#core-apply-expander__%
                           _K82915_
                           _stx82916_
                           _method82917_))
                        _g84047_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g84047_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self82885_ _stx82886_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx82886_)))
    (__bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self82738_ _stx82739_)
        (let* ((_self8274082746_ _self82738_)
               (_E8274282750_
                (lambda () (error '"No clause matching" _self8274082746_)))
               (_K8274382755_
                (lambda (_K82753_)
                  (gx#core-apply-expander__0 _K82753_ _stx82739_))))
          (if (##structure-instance-of? _self8274082746_ 'gx#macro-expander::t)
              (let* ((_e8274482758_
                      (##unchecked-structure-ref _self8274082746_ '1 '#f '#f))
                     (_K82761_ _e8274482758_))
                (_K8274382755_ _K82761_))
              (_E8274282750_)))))
    (__bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self82591_ _stx82592_)
        (if (gx#sealed-syntax? _stx82592_)
            _stx82592_
            (let* ((_self8259382599_ _self82591_)
                   (_E8259582603_
                    (lambda () (error '"No clause matching" _self8259382599_)))
                   (_K8259682608_
                    (lambda (_K82606_)
                      (gx#core-apply-expander__0 _K82606_ _stx82592_))))
              (if (##structure-instance-of?
                   _self8259382599_
                   'gx#core-expander::t)
                  (let* ((_e8259782611_
                          (##unchecked-structure-ref
                           _self8259382599_
                           '1
                           '#f
                           '#f))
                         (_K82614_ _e8259782611_))
                    (_K8259682608_ _K82614_))
                  (_E8259582603_))))))
    (__bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self82453_ _stx82454_ _top?82455_)
        (if (_top?82455_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self82453_ _stx82454_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx82454_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self82460_ _stx82461_)
        (let ((_top?82463_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self82460_
           _stx82461_
           _top?82463_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g84049_
        (let ((_g84048_ (##length _g84049_)))
          (cond ((##fx= _g84048_ 2)
                 (apply (lambda (_self82460_ _stx82461_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self82460_
                           _stx82461_))
                        _g84049_))
                ((##fx= _g84048_ 3)
                 (apply (lambda (_self82465_ _stx82466_ _top?82467_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self82465_
                           _stx82466_
                           _top?82467_))
                        _g84049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g84049_))))))
    (__bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self82327_ _stx82328_)
        (gx#top-special-form::apply-macro-expander__%
         _self82327_
         _stx82328_
         gx#module-context?)))
    (__bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self82152_ _stx82153_)
        (let* ((_self8215482160_ _self82152_)
               (_E8215682164_
                (lambda () (error '"No clause matching" _self8215482160_)))
               (_K8215782197_
                (lambda (_id82167_)
                  (let* ((_e8216882175_ _stx82153_)
                         (_E8217082179_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8216882175_)))
                         (_E8216982193_
                          (lambda ()
                            (if (gx#stx-pair? _e8216882175_)
                                (let ((_e8217182183_
                                       (gx#syntax-e _e8216882175_)))
                                  (let ((_hd8217282186_ (##car _e8217182183_))
                                        (_tl8217382188_ (##cdr _e8217182183_)))
                                    (let ((_body82191_ _tl8217382188_))
                                      (if '#t
                                          (gx#core-cons _id82167_ _body82191_)
                                          (_E8217082179_)))))
                                (_E8217082179_)))))
                    (_E8216982193_)))))
          (if (##structure-instance-of?
               _self8215482160_
               'gx#rename-macro-expander::t)
              (let* ((_e8215882200_
                      (##unchecked-structure-ref _self8215482160_ '1 '#f '#f))
                     (_id82203_ _e8215882200_))
                (_K8215782197_ _id82203_))
              (_E8215682164_)))))
    (__bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self81978_ _stx81979_ _method81980_)
        (let* ((_self8198181989_ _self81978_)
               (_E8198381993_
                (lambda () (error '"No clause matching" _self8198181989_)))
               (_K8198482000_
                (lambda (_phi81996_ _ctx81997_ _K81998_)
                  (gx#core-apply-user-macro
                   _K81998_
                   _stx81979_
                   _ctx81997_
                   _phi81996_
                   _method81980_))))
          (if (##structure-instance-of? _self8198181989_ 'gx#user-expander::t)
              (let* ((_e8198582003_
                      (##unchecked-structure-ref _self8198181989_ '1 '#f '#f))
                     (_K82006_ _e8198582003_)
                     (_e8198682008_
                      (##unchecked-structure-ref _self8198181989_ '2 '#f '#f))
                     (_ctx82011_ _e8198682008_)
                     (_e8198782013_
                      (##unchecked-structure-ref _self8198181989_ '3 '#f '#f))
                     (_phi82016_ _e8198782013_))
                (_K8198482000_ _phi82016_ _ctx82011_ _K82006_))
              (_E8198381993_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self82021_ _stx82022_)
        (let ((_method82024_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self82021_
           _stx82022_
           _method82024_))))
    (define gx#core-apply-user-expander
      (lambda _g84051_
        (let ((_g84050_ (##length _g84051_)))
          (cond ((##fx= _g84050_ 2)
                 (apply (lambda (_self82021_ _stx82022_)
                          (gx#core-apply-user-expander__0
                           _self82021_
                           _stx82022_))
                        _g84051_))
                ((##fx= _g84050_ 3)
                 (apply (lambda (_self82026_ _stx82027_ _method82028_)
                          (gx#core-apply-user-expander__%
                           _self82026_
                           _stx82027_
                           _method82028_))
                        _g84051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g84051_))))))
    (define gx#core-apply-user-macro
      (lambda (_K81968_ _stx81969_ _ctx81970_ _phi81971_ _method81972_)
        (let ((_mark81974_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx81970_
                _phi81971_
                _stx81969_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K81968_
               (gx#stx-apply-mark _stx81969_ _mark81974_)
               _method81972_)
              _mark81974_))
           gx#current-expander-marks
           (cons _mark81974_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx81819_ _phi81820_ _ctx81821_)
        (let _lp81823_ ((_bind81825_
                         (gx#core-resolve-identifier__%
                          _stx81819_
                          _phi81820_
                          _ctx81821_)))
          (if (##structure-direct-instance-of?
               _bind81825_
               'gx#import-binding::t)
              (_lp81823_ (##unchecked-structure-ref _bind81825_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _bind81825_
                   'gx#alias-binding::t)
                  (_lp81823_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _bind81825_ '4 '#f '#f)
                    _phi81820_
                    _ctx81821_))
                  _bind81825_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx81830_)
        (let* ((_phi81832_ (gx#current-expander-phi))
               (_ctx81834_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx81830_ _phi81832_ _ctx81834_))))
    (define gx#resolve-identifier__1
      (lambda (_stx81836_ _phi81837_)
        (let ((_ctx81839_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx81836_ _phi81837_ _ctx81839_))))
    (define gx#resolve-identifier
      (lambda _g84053_
        (let ((_g84052_ (##length _g84053_)))
          (cond ((##fx= _g84052_ 1)
                 (apply (lambda (_stx81830_)
                          (gx#resolve-identifier__0 _stx81830_))
                        _g84053_))
                ((##fx= _g84052_ 2)
                 (apply (lambda (_stx81836_ _phi81837_)
                          (gx#resolve-identifier__1 _stx81836_ _phi81837_))
                        _g84053_))
                ((##fx= _g84052_ 3)
                 (apply (lambda (_stx81841_ _phi81842_ _ctx81843_)
                          (gx#resolve-identifier__%
                           _stx81841_
                           _phi81842_
                           _ctx81843_))
                        _g84053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g84053_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx81777_ _val81778_ _rebind?81779_ _phi81780_ _ctx81781_)
        (let ((_rebind?81783_
               (if (not _rebind?81779_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?81779_) _rebind?81779_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx81777_)
           _val81778_
           _rebind?81783_
           _phi81780_
           _ctx81781_))))
    (define gx#bind-identifier!__0
      (lambda (_stx81788_ _val81789_)
        (let* ((_rebind?81791_ '#f)
               (_phi81793_ (gx#current-expander-phi))
               (_ctx81795_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx81788_
           _val81789_
           _rebind?81791_
           _phi81793_
           _ctx81795_))))
    (define gx#bind-identifier!__1
      (lambda (_stx81797_ _val81798_ _rebind?81799_)
        (let* ((_phi81801_ (gx#current-expander-phi))
               (_ctx81803_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx81797_
           _val81798_
           _rebind?81799_
           _phi81801_
           _ctx81803_))))
    (define gx#bind-identifier!__2
      (lambda (_stx81805_ _val81806_ _rebind?81807_ _phi81808_)
        (let ((_ctx81810_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx81805_
           _val81806_
           _rebind?81807_
           _phi81808_
           _ctx81810_))))
    (define gx#bind-identifier!
      (lambda _g84055_
        (let ((_g84054_ (##length _g84055_)))
          (cond ((##fx= _g84054_ 2)
                 (apply (lambda (_stx81788_ _val81789_)
                          (gx#bind-identifier!__0 _stx81788_ _val81789_))
                        _g84055_))
                ((##fx= _g84054_ 3)
                 (apply (lambda (_stx81797_ _val81798_ _rebind?81799_)
                          (gx#bind-identifier!__1
                           _stx81797_
                           _val81798_
                           _rebind?81799_))
                        _g84055_))
                ((##fx= _g84054_ 4)
                 (apply (lambda (_stx81805_
                                 _val81806_
                                 _rebind?81807_
                                 _phi81808_)
                          (gx#bind-identifier!__2
                           _stx81805_
                           _val81806_
                           _rebind?81807_
                           _phi81808_))
                        _g84055_))
                ((##fx= _g84054_ 5)
                 (apply (lambda (_stx81812_
                                 _val81813_
                                 _rebind?81814_
                                 _phi81815_
                                 _ctx81816_)
                          (gx#bind-identifier!__%
                           _stx81812_
                           _val81813_
                           _rebind?81814_
                           _phi81815_
                           _ctx81816_))
                        _g84055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g84055_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx81749_ _phi81750_ _ctx81751_)
        (let _lp81753_ ((_e81755_ _stx81749_)
                        (_marks81756_ (gx#current-expander-marks)))
          (if (symbol? _e81755_)
              (gx#core-resolve-binding
               _e81755_
               _phi81750_
               _phi81750_
               _ctx81751_
               (reverse _marks81756_))
              (if (gx#identifier-quote? _e81755_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e81755_ '1 '#f '#f)
                   _phi81750_
                   '0
                   (##unchecked-structure-ref _e81755_ '3 '#f '#f)
                   (##unchecked-structure-ref _e81755_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _e81755_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e81755_ '1 '#f '#f)
                       _phi81750_
                       _phi81750_
                       _ctx81751_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _e81755_ '3 '#f '#f)
                        _marks81756_))
                      (if (##structure-direct-instance-of?
                           _e81755_
                           'gx#syntax-wrap::t)
                          (_lp81753_
                           (##unchecked-structure-ref _e81755_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _e81755_ '3 '#f '#f)
                            _marks81756_))
                          (if (##structure-instance-of?
                               _e81755_
                               'gerbil#AST::t)
                              (_lp81753_
                               (##unchecked-structure-ref _e81755_ '1 '#f '#f)
                               _marks81756_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx81749_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx81761_)
        (let* ((_phi81763_ (gx#current-expander-phi))
               (_ctx81765_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx81761_ _phi81763_ _ctx81765_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx81767_ _phi81768_)
        (let ((_ctx81770_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx81767_ _phi81768_ _ctx81770_))))
    (define gx#core-resolve-identifier
      (lambda _g84057_
        (let ((_g84056_ (##length _g84057_)))
          (cond ((##fx= _g84056_ 1)
                 (apply (lambda (_stx81761_)
                          (gx#core-resolve-identifier__0 _stx81761_))
                        _g84057_))
                ((##fx= _g84056_ 2)
                 (apply (lambda (_stx81767_ _phi81768_)
                          (gx#core-resolve-identifier__1
                           _stx81767_
                           _phi81768_))
                        _g84057_))
                ((##fx= _g84056_ 3)
                 (apply (lambda (_stx81772_ _phi81773_ _ctx81774_)
                          (gx#core-resolve-identifier__%
                           _stx81772_
                           _phi81773_
                           _ctx81774_))
                        _g84057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g84057_))))))
    (define gx#core-resolve-binding
      (lambda (_id81662_ _phi81663_ _src-phi81664_ _ctx81665_ _marks81666_)
        (letrec ((_resolve81668_
                  (lambda (_ctx81736_ _src-phi81737_ _key81738_)
                    (let _lp81740_ ((_ctx81742_
                                     (gx#core-context-shift
                                      _ctx81736_
                                      _phi81663_))
                                    (_dphi81743_
                                     (fx- _phi81663_ _src-phi81737_)))
                      (let ((_$e81745_
                             (gx#core-context-resolve _ctx81742_ _key81738_)))
                        (if _$e81745_
                            (values _$e81745_)
                            (if (fxzero? _dphi81743_)
                                '#f
                                (if (fxpositive? _dphi81743_)
                                    (_lp81740_
                                     (gx#core-context-shift _ctx81742_ '-1)
                                     (##fx- _dphi81743_ '1))
                                    (_lp81740_
                                     (gx#core-context-shift _ctx81742_ '1)
                                     (##fx+ _dphi81743_ '1))))))))))
          (let _lp81670_ ((_ctx81672_ _ctx81665_)
                          (_src-phi81673_ _src-phi81664_)
                          (_rest81674_ _marks81666_))
            (let* ((_rest8167581683_ _rest81674_)
                   (_else8167781691_
                    (lambda ()
                      (_resolve81668_ _ctx81672_ _src-phi81673_ _id81662_)))
                   (_K8167981724_
                    (lambda (_rest81694_ _hd81695_)
                      (let* ((_hd8169681702_ _hd81695_)
                             (_E8169881706_
                              (lambda ()
                                (error '"No clause matching" _hd8169681702_)))
                             (_K8169981716_
                              (lambda (_subst81709_)
                                (let ((_$e81713_
                                       (let ((_key81711_
                                              (if _subst81709_
                                                  (hash-get
                                                   _subst81709_
                                                   _id81662_)
                                                  '#f)))
                                         (if _key81711_
                                             (_resolve81668_
                                              _ctx81672_
                                              _src-phi81673_
                                              _key81711_)
                                             '#f))))
                                  (if _$e81713_
                                      _$e81713_
                                      (_lp81670_
                                       (##unchecked-structure-ref
                                        _hd81695_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd81695_
                                        '3
                                        '#f
                                        '#f)
                                       _rest81694_))))))
                        (if (##structure-instance-of?
                             _hd8169681702_
                             'gx#expander-mark::t)
                            (let* ((_e8170081719_
                                    (##unchecked-structure-ref
                                     _hd8169681702_
                                     '1
                                     '#f
                                     '#f))
                                   (_subst81722_ _e8170081719_))
                              (_K8169981716_ _subst81722_))
                            (_E8169881706_))))))
              (if (##pair? _rest8167581683_)
                  (let ((_hd8168081727_ (##car _rest8167581683_))
                        (_tl8168181729_ (##cdr _rest8167581683_)))
                    (let* ((_hd81732_ _hd8168081727_)
                           (_rest81734_ _tl8168181729_))
                      (_K8167981724_ _rest81734_ _hd81732_)))
                  (_else8167781691_)))))))
    (define gx#core-bind!__%
      (lambda (_key81538_ _val81539_ _rebind?81540_ _phi81541_ _ctx81542_)
        (letrec ((_update-binding81544_
                  (lambda (_xval81615_)
                    (if (or (_rebind?81540_ _ctx81542_ _xval81615_ _val81539_)
                            (and (##structure-direct-instance-of?
                                  _xval81615_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval81615_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val81539_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val81539_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval81615_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val81539_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val81539_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval81615_
                                       '1
                                       '#f
                                       '#f))))
                        _val81539_
                        (if (and (##structure-direct-instance-of?
                                  _val81539_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val81539_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval81615_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val81539_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval81615_
                                                '1
                                                '#f
                                                '#f)))))
                            _xval81615_
                            (if (and (##structure-direct-instance-of?
                                      _val81539_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval81615_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key81538_
                                 (cons (##unchecked-structure-ref
                                        _val81539_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val81539_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval81615_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval81615_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval81615_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval81615_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key81538_
                                 _val81539_
                                 _xval81615_))))))
                 (_gensubst81545_
                  (lambda (_subst81610_ _id81611_)
                    (let ((_eid81613_
                           (gensym (if (uninterned-symbol? _id81611_)
                                       '%
                                       _id81611_))))
                      (hash-put! _subst81610_ _id81611_ _eid81613_)
                      _eid81613_)))
                 (_subst!81546_
                  (lambda (_key81548_)
                    (let* ((_key8154981557_ _key81548_)
                           (_else8155181565_ (lambda () _key81548_))
                           (_K8155381598_
                            (lambda (_mark81568_ _id81569_)
                              (let* ((_mark8157081576_ _mark81568_)
                                     (_E8157281580_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8157081576_)))
                                     (_K8157381590_
                                      (lambda (_subst81583_)
                                        (if (not _subst81583_)
                                            (let ((_subst81585_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark81568_
                                               _subst81585_
                                               '1
                                               '#f
                                               '#f)
                                              (_gensubst81545_
                                               _subst81585_
                                               _id81569_))
                                            (let ((_$e81587_
                                                   (hash-get
                                                    _subst81583_
                                                    _id81569_)))
                                              (if _$e81587_
                                                  (values _$e81587_)
                                                  (_gensubst81545_
                                                   _subst81583_
                                                   _id81569_)))))))
                                (if (##structure-instance-of?
                                     _mark8157081576_
                                     'gx#expander-mark::t)
                                    (let* ((_e8157481593_
                                            (##unchecked-structure-ref
                                             _mark8157081576_
                                             '1
                                             '#f
                                             '#f))
                                           (_subst81596_ _e8157481593_))
                                      (_K8157381590_ _subst81596_))
                                    (_E8157281580_))))))
                      (if (##pair? _key8154981557_)
                          (let ((_hd8155481601_ (##car _key8154981557_))
                                (_tl8155581603_ (##cdr _key8154981557_)))
                            (let* ((_id81606_ _hd8155481601_)
                                   (_mark81608_ _tl8155581603_))
                              (_K8155381598_ _mark81608_ _id81606_)))
                          (_else8155181565_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx81542_ _phi81541_)
           (_subst!81546_ _key81538_)
           _val81539_
           _update-binding81544_))))
    (define gx#core-bind!__0
      (lambda (_key81632_ _val81633_)
        (let* ((_rebind?81635_ false)
               (_phi81637_ (gx#current-expander-phi))
               (_ctx81639_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81632_
           _val81633_
           _rebind?81635_
           _phi81637_
           _ctx81639_))))
    (define gx#core-bind!__1
      (lambda (_key81641_ _val81642_ _rebind?81643_)
        (let* ((_phi81645_ (gx#current-expander-phi))
               (_ctx81647_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81641_
           _val81642_
           _rebind?81643_
           _phi81645_
           _ctx81647_))))
    (define gx#core-bind!__2
      (lambda (_key81649_ _val81650_ _rebind?81651_ _phi81652_)
        (let ((_ctx81654_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key81649_
           _val81650_
           _rebind?81651_
           _phi81652_
           _ctx81654_))))
    (define gx#core-bind!
      (lambda _g84059_
        (let ((_g84058_ (##length _g84059_)))
          (cond ((##fx= _g84058_ 2)
                 (apply (lambda (_key81632_ _val81633_)
                          (gx#core-bind!__0 _key81632_ _val81633_))
                        _g84059_))
                ((##fx= _g84058_ 3)
                 (apply (lambda (_key81641_ _val81642_ _rebind?81643_)
                          (gx#core-bind!__1
                           _key81641_
                           _val81642_
                           _rebind?81643_))
                        _g84059_))
                ((##fx= _g84058_ 4)
                 (apply (lambda (_key81649_
                                 _val81650_
                                 _rebind?81651_
                                 _phi81652_)
                          (gx#core-bind!__2
                           _key81649_
                           _val81650_
                           _rebind?81651_
                           _phi81652_))
                        _g84059_))
                ((##fx= _g84058_ 5)
                 (apply (lambda (_key81656_
                                 _val81657_
                                 _rebind?81658_
                                 _phi81659_
                                 _ctx81660_)
                          (gx#core-bind!__%
                           _key81656_
                           _val81657_
                           _rebind?81658_
                           _phi81659_
                           _ctx81660_))
                        _g84059_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g84059_))))))
    (define gx#core-identifier-key
      (lambda (_stx81472_)
        (if (symbol? _stx81472_)
            (let* ((_g8147381481_ (gx#current-expander-marks))
                   (_else8147581489_ (lambda () _stx81472_))
                   (_K8147781494_
                    (lambda (_hd81492_) (cons _stx81472_ _hd81492_))))
              (if (##pair? _g8147381481_)
                  (let* ((_hd8147881497_ (##car _g8147381481_))
                         (_hd81500_ _hd8147881497_))
                    (_K8147781494_ _hd81500_))
                  (_else8147581489_)))
            (if (gx#identifier? _stx81472_)
                (let* ((_id81502_ (gx#syntax-local-unwrap _stx81472_))
                       (_eid81504_ (gx#stx-e _id81502_))
                       (_marks81506_ (gx#stx-identifier-marks* _id81502_)))
                  (let* ((_marks8150881516_ _marks81506_)
                         (_else8151081524_ (lambda () _eid81504_))
                         (_K8151281529_
                          (lambda (_hd81527_) (cons _eid81504_ _hd81527_))))
                    (if (##pair? _marks8150881516_)
                        (let* ((_hd8151381532_ (##car _marks8150881516_))
                               (_hd81535_ _hd8151381532_))
                          (_K8151281529_ _hd81535_))
                        (_else8151081524_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx81472_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_ctx81417_ _phi81418_)
        (letrec ((_make-phi81420_
                  (lambda (_super81470_)
                    (let ((__obj84031
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj84031
                       (##gensym 'phi)
                       _super81470_)
                      __obj84031)))
                 (_make-phi/up81421_
                  (lambda (_ctx81465_ _super81466_)
                    (let ((_ctx+181468_ (_make-phi81420_ _super81466_)))
                      (##unchecked-structure-set!
                       _ctx81465_
                       _ctx+181468_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+181468_
                       _ctx81465_
                       '5
                       '#f
                       '#f)
                      _ctx+181468_)))
                 (_make-phi/down81422_
                  (lambda (_ctx81460_ _super81461_)
                    (let ((_ctx-181463_ (_make-phi81420_ _super81461_)))
                      (##unchecked-structure-set!
                       _ctx-181463_
                       _ctx81460_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _ctx81460_
                       _ctx-181463_
                       '5
                       '#f
                       '#f)
                      _ctx-181463_)))
                 (_shift81423_
                  (lambda (_ctx81444_
                           _delta81445_
                           _make-delta-context81446_
                           _phi81447_
                           _K81448_)
                    (let ((_$e81450_
                           (##unchecked-structure-ref _ctx81444_ '3 '#f '#f)))
                      (if _$e81450_
                          ((lambda (_super81453_)
                             (let* ((_super81455_
                                     (_K81448_ _super81453_ _delta81445_))
                                    (_ctx+d81457_
                                     (_make-delta-context81446_
                                      _ctx81444_
                                      _super81455_)))
                               (_K81448_
                                _ctx+d81457_
                                (fx- _phi81447_ _delta81445_))))
                           _$e81450_)
                          (error '"Bad context" _ctx81444_))))))
          (let _K81425_ ((_ctx81427_ _ctx81417_) (_phi81428_ _phi81418_))
            (if (fxzero? _phi81428_)
                _ctx81427_
                (if (##structure-instance-of? _ctx81427_ 'gx#phi-context::t)
                    (if (fxpositive? _phi81428_)
                        (let ((_$e81430_
                               (##unchecked-structure-ref
                                _ctx81427_
                                '4
                                '#f
                                '#f)))
                          (if _$e81430_
                              ((lambda (_g8143281434_)
                                 (_K81425_
                                  _g8143281434_
                                  (##fx- _phi81428_ '1)))
                               _$e81430_)
                              (_shift81423_
                               _ctx81427_
                               '1
                               _make-phi/up81421_
                               _phi81428_
                               _K81425_)))
                        (let ((_$e81437_
                               (##unchecked-structure-ref
                                _ctx81427_
                                '5
                                '#f
                                '#f)))
                          (if _$e81437_
                              ((lambda (_g8143981441_)
                                 (_K81425_
                                  _g8143981441_
                                  (##fx+ _phi81428_ '1)))
                               _$e81437_)
                              (_shift81423_
                               _ctx81427_
                               '-1
                               _make-phi/down81422_
                               _phi81428_
                               _K81425_))))
                    _ctx81427_))))))
    (define gx#core-context-get
      (lambda (_ctx81414_ _key81415_)
        (hash-get
         (##unchecked-structure-ref _ctx81414_ '2 '#f '#f)
         _key81415_)))
    (define gx#core-context-put!
      (lambda (_ctx81410_ _key81411_ _val81412_)
        (hash-put!
         (##unchecked-structure-ref _ctx81410_ '2 '#f '#f)
         _key81411_
         _val81412_)))
    (define gx#core-context-resolve
      (lambda (_ctx81397_ _key81398_)
        (let _lp81400_ ((_ctx81402_ _ctx81397_))
          (let ((_$e81404_ (gx#core-context-get _ctx81402_ _key81398_)))
            (if _$e81404_
                (values _$e81404_)
                (let ((_$e81407_
                       (if (##structure-instance-of?
                            _ctx81402_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _ctx81402_ '3 '#f '#f)
                           '#f)))
                  (if _$e81407_ (_lp81400_ _$e81407_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx81387_ _key81388_ _val81389_ _rebind81390_)
        (let ((_$e81392_ (gx#core-context-get _ctx81387_ _key81388_)))
          (if _$e81392_
              ((lambda (_xval81395_)
                 (gx#core-context-put!
                  _ctx81387_
                  _key81388_
                  (_rebind81390_ _xval81395_)))
               _$e81392_)
              (gx#core-context-put! _ctx81387_ _key81388_ _val81389_)))))
    (define gx#core-context-top__%
      (lambda (_ctx81365_ _stop?81366_)
        (let _lp81368_ ((_ctx81370_ _ctx81365_))
          (if (_stop?81366_ _ctx81370_)
              _ctx81370_
              (if (##structure-instance-of? _ctx81370_ 'gx#phi-context::t)
                  (_lp81368_ (##unchecked-structure-ref _ctx81370_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx81376_ (gx#current-expander-context))
               (_stop?81378_ gx#top-context?))
          (gx#core-context-top__% _ctx81376_ _stop?81378_))))
    (define gx#core-context-top__1
      (lambda (_ctx81380_)
        (let ((_stop?81382_ gx#top-context?))
          (gx#core-context-top__% _ctx81380_ _stop?81382_))))
    (define gx#core-context-top
      (lambda _g84061_
        (let ((_g84060_ (##length _g84061_)))
          (cond ((##fx= _g84060_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g84061_))
                ((##fx= _g84060_ 1)
                 (apply (lambda (_ctx81380_)
                          (gx#core-context-top__1 _ctx81380_))
                        _g84061_))
                ((##fx= _g84060_ 2)
                 (apply (lambda (_ctx81384_ _stop?81385_)
                          (gx#core-context-top__% _ctx81384_ _stop?81385_))
                        _g84061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g84061_))))))
    (define gx#core-context-root__%
      (lambda (_ctx81350_)
        (let _lp81352_ ((_ctx81354_ _ctx81350_))
          (if (##structure-instance-of? _ctx81354_ 'gx#phi-context::t)
              (_lp81352_ (##unchecked-structure-ref _ctx81354_ '3 '#f '#f))
              _ctx81354_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx81360_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx81360_))))
    (define gx#core-context-root
      (lambda _g84063_
        (let ((_g84062_ (##length _g84063_)))
          (cond ((##fx= _g84062_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g84063_))
                ((##fx= _g84062_ 1)
                 (apply (lambda (_ctx81362_)
                          (gx#core-context-root__% _ctx81362_))
                        _g84063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g84063_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx81332_ . _ignore81333_)
        (let ((_$e81335_ (gx#current-expander-allow-rebind?)))
          (if _$e81335_
              _$e81335_
              (if (##structure-instance-of? _ctx81332_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx81332_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx81332_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx81342_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx81342_))))
    (define gx#core-context-rebind?
      (lambda _g84065_
        (let ((_g84064_ (##length _g84065_)))
          (cond ((##fx= _g84064_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g84065_))
                ((##fx= _g84064_ 1)
                 (apply (lambda (_ctx81344_)
                          (gx#core-context-rebind?__% _ctx81344_))
                        _g84065_))
                ((##fx>= _g84064_ 1)
                 (apply gx#core-context-rebind?__% _g84065_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g84065_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx81316_)
        (let ((_$e81318_ (gx#core-context-top__1 _ctx81316_)))
          (if _$e81318_
              ((lambda (_ctx81321_)
                 (if (##structure-instance-of?
                      _ctx81321_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _ctx81321_ '6 '#f '#f)
                     '#f))
               _$e81318_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx81327_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx81327_))))
    (define gx#core-context-namespace
      (lambda _g84067_
        (let ((_g84066_ (##length _g84067_)))
          (cond ((##fx= _g84066_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g84067_))
                ((##fx= _g84066_ 1)
                 (apply (lambda (_ctx81329_)
                          (gx#core-context-namespace__% _ctx81329_))
                        _g84067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g84067_))))))
    (define gx#expander-binding?__%
      (lambda (_bind81302_ _is?81303_)
        (if (##structure-direct-instance-of? _bind81302_ 'gx#syntax-binding::t)
            (_is?81303_ (##unchecked-structure-ref _bind81302_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind81308_)
        (let ((_is?81310_ gx#expander?))
          (gx#expander-binding?__% _bind81308_ _is?81310_))))
    (define gx#expander-binding?
      (lambda _g84069_
        (let ((_g84068_ (##length _g84069_)))
          (cond ((##fx= _g84068_ 1)
                 (apply (lambda (_bind81308_)
                          (gx#expander-binding?__0 _bind81308_))
                        _g84069_))
                ((##fx= _g84068_ 2)
                 (apply (lambda (_bind81312_ _is?81313_)
                          (gx#expander-binding?__% _bind81312_ _is?81313_))
                        _g84069_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g84069_))))))
    (define gx#core-expander-binding?
      (lambda (_bind81299_)
        (gx#expander-binding?__% _bind81299_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind81297_)
        (gx#expander-binding?__% _bind81297_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind81291_)
        (letrec ((_direct-special-form?81293_
                  (lambda (_obj81295_)
                    (##structure-direct-instance-of?
                     _obj81295_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind81291_ _direct-special-form?81293_))))
    (define gx#special-form-binding?
      (lambda (_bind81289_)
        (gx#expander-binding?__% _bind81289_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind81280_)
        (letrec ((_feature?81282_
                  (lambda (_e81284_)
                    (let ((_$e81286_
                           (##structure-instance-of?
                            _e81284_
                            'gx#feature-expander::t)))
                      (if _$e81286_
                          _$e81286_
                          (##structure-instance-of?
                           _e81284_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind81280_ _feature?81282_))))
    (define gx#private-feature-binding?
      (lambda (_bind81278_)
        (gx#expander-binding?__% _bind81278_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id81265_ _bound?81266_)
        (if (gx#identifier? _id81265_)
            (_bound?81266_ (gx#resolve-identifier__0 _id81265_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id81271_)
        (let ((_bound?81273_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id81271_ _bound?81273_))))
    (define gx#core-bound-identifier?
      (lambda _g84071_
        (let ((_g84070_ (##length _g84071_)))
          (cond ((##fx= _g84070_ 1)
                 (apply (lambda (_id81271_)
                          (gx#core-bound-identifier?__0 _id81271_))
                        _g84071_))
                ((##fx= _g84070_ 2)
                 (apply (lambda (_id81275_ _bound?81276_)
                          (gx#core-bound-identifier?__%
                           _id81275_
                           _bound?81276_))
                        _g84071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g84071_))))))
    (define gx#core-identifier=?
      (lambda (_x81255_ _y81256_)
        (letrec ((_y=?81258_
                  (lambda (_xid81262_)
                    ((if (list? _y81256_) memq eq?) _xid81262_ _y81256_))))
          (let ((_bind81260_ (gx#resolve-identifier__0 _x81255_)))
            (if (##structure-instance-of? _bind81260_ 'gx#binding::t)
                (_y=?81258_ (##unchecked-structure-ref _bind81260_ '1 '#f '#f))
                (_y=?81258_ (gx#stx-e _x81255_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e81253_)
        (if (__interned-symbol? _e81253_)
            (string-index__0 (symbol->string _e81253_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx81208_ _src81209_ _ctx81210_ _marks81211_)
        (if (##structure? _stx81208_)
            (let ((_$e81213_ (gx#sealed-syntax-unwrap _stx81208_)))
              (if _$e81213_
                  (values _$e81213_)
                  (if (gx#identifier? _stx81208_)
                      (let ((_id81216_
                             (gx#stx-unwrap__% _stx81208_ _marks81211_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id81216_ '1 '#f '#f)
                         (let ((_$e81218_
                                (##unchecked-structure-ref
                                 _id81216_
                                 '2
                                 '#f
                                 '#f)))
                           (if _$e81218_ _$e81218_ _src81209_))
                         _ctx81210_
                         (##unchecked-structure-ref _id81216_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx81208_)
                       (let ((_$e81221_ (gx#stx-source _stx81208_)))
                         (if _$e81221_ _$e81221_ _src81209_))
                       _ctx81210_
                       (reverse _marks81211_)))))
            (##structure
             gx#syntax-quote::t
             _stx81208_
             _src81209_
             _ctx81210_
             (reverse _marks81211_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx81227_)
        (let* ((_src81229_ '#f)
               (_ctx81231_ (gx#current-expander-context))
               (_marks81233_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81227_
           _src81229_
           _ctx81231_
           _marks81233_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx81235_ _src81236_)
        (let* ((_ctx81238_ (gx#current-expander-context))
               (_marks81240_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81235_
           _src81236_
           _ctx81238_
           _marks81240_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx81242_ _src81243_ _ctx81244_)
        (let ((_marks81246_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx81242_
           _src81243_
           _ctx81244_
           _marks81246_))))
    (define gx#core-quote-syntax
      (lambda _g84073_
        (let ((_g84072_ (##length _g84073_)))
          (cond ((##fx= _g84072_ 1)
                 (apply (lambda (_stx81227_)
                          (gx#core-quote-syntax__0 _stx81227_))
                        _g84073_))
                ((##fx= _g84072_ 2)
                 (apply (lambda (_stx81235_ _src81236_)
                          (gx#core-quote-syntax__1 _stx81235_ _src81236_))
                        _g84073_))
                ((##fx= _g84072_ 3)
                 (apply (lambda (_stx81242_ _src81243_ _ctx81244_)
                          (gx#core-quote-syntax__2
                           _stx81242_
                           _src81243_
                           _ctx81244_))
                        _g84073_))
                ((##fx= _g84072_ 4)
                 (apply (lambda (_stx81248_ _src81249_ _ctx81250_ _marks81251_)
                          (gx#core-quote-syntax__%
                           _stx81248_
                           _src81249_
                           _ctx81250_
                           _marks81251_))
                        _g84073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g84073_))))))
    (define gx#core-cons
      (lambda (_hd81204_ _tl81205_)
        (cons (gx#core-quote-syntax__0 _hd81204_) _tl81205_)))
    (define gx#core-list
      (lambda (_hd81201_ . _rest81202_)
        (cons (gx#core-quote-syntax__0 _hd81201_) _rest81202_)))
    (define gx#core-cons*
      (lambda (_hd81198_ . _rest81199_)
        (apply cons* (gx#core-quote-syntax__0 _hd81198_) _rest81199_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path81172_ _rel81173_)
        (let ((_path81185_ (gx#stx-e _stx-path81172_))
              (_reldir81186_
               (let _lp81175_ ((_relsrc81177_
                                (let ((_$e81182_
                                       (gx#stx-source _stx-path81172_)))
                                  (if _$e81182_ _$e81182_ _rel81173_))))
                 (if (##structure-instance-of? _relsrc81177_ 'gerbil#AST::t)
                     (_lp81175_
                      (let ((_$e81179_ (gx#stx-source _relsrc81177_)))
                        (if _$e81179_ _$e81179_ (gx#stx-e _relsrc81177_))))
                     (if (source-location-path? _relsrc81177_)
                         (path-directory (source-location-path _relsrc81177_))
                         (if (string? _relsrc81177_)
                             (path-directory _relsrc81177_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path81185_ (path-normalize _reldir81186_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path81191_)
        (let ((_rel81193_ '#f))
          (gx#core-resolve-path__% _stx-path81191_ _rel81193_))))
    (define gx#core-resolve-path
      (lambda _g84075_
        (let ((_g84074_ (##length _g84075_)))
          (cond ((##fx= _g84074_ 1)
                 (apply (lambda (_stx-path81191_)
                          (gx#core-resolve-path__0 _stx-path81191_))
                        _g84075_))
                ((##fx= _g84074_ 2)
                 (apply (lambda (_stx-path81195_ _rel81196_)
                          (gx#core-resolve-path__% _stx-path81195_ _rel81196_))
                        _g84075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g84075_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr81128_ _ctx81129_)
        (let* ((_repr8113081137_ _repr81128_)
               (_E8113281141_
                (lambda () (error '"No clause matching" _repr8113081137_)))
               (_K8113381149_
                (lambda (_subs81144_ _phi81145_)
                  (let ((_subst81147_
                         (if (not (null? _subs81144_))
                             (list->hash-table-eq _subs81144_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst81147_
                     _ctx81129_
                     _phi81145_
                     '#f)))))
          (if (##pair? _repr8113081137_)
              (let ((_hd8113481152_ (##car _repr8113081137_))
                    (_tl8113581154_ (##cdr _repr8113081137_)))
                (let* ((_phi81157_ _hd8113481152_)
                       (_subs81159_ _tl8113581154_))
                  (_K8113381149_ _subs81159_ _phi81157_)))
              (_E8113281141_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr81164_)
        (let ((_ctx81166_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr81164_ _ctx81166_))))
    (define gx#core-deserialize-mark
      (lambda _g84077_
        (let ((_g84076_ (##length _g84077_)))
          (cond ((##fx= _g84076_ 1)
                 (apply (lambda (_repr81164_)
                          (gx#core-deserialize-mark__0 _repr81164_))
                        _g84077_))
                ((##fx= _g84076_ 2)
                 (apply (lambda (_repr81168_ _ctx81169_)
                          (gx#core-deserialize-mark__% _repr81168_ _ctx81169_))
                        _g84077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g84077_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx81125_)
        (gx#stx-rewrap _stx81125_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx81123_)
        (gx#stx-unwrap__% _stx81123_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx81093_)
        (let* ((_g8109481102_ (gx#current-expander-marks))
               (_else8109681110_ (lambda () _stx81093_))
               (_K8109881115_
                (lambda (_hd81113_) (gx#stx-apply-mark _stx81093_ _hd81113_))))
          (if (##pair? _g8109481102_)
              (let* ((_hd8109981118_ (##car _g8109481102_))
                     (_hd81121_ _hd8109981118_))
                (_K8109881115_ _hd81121_))
              (_else8109681110_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx81078_ _E81079_)
        (let ((_bind81081_ (gx#resolve-identifier__0 _stx81078_)))
          (if (##structure-direct-instance-of?
               _bind81081_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _bind81081_ '4 '#f '#f)
              (_E81079_ _stx81078_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx81086_)
        (let ((_E81088_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx81086_ _E81088_))))
    (define gx#syntax-local-e
      (lambda _g84079_
        (let ((_g84078_ (##length _g84079_)))
          (cond ((##fx= _g84078_ 1)
                 (apply (lambda (_stx81086_) (gx#syntax-local-e__0 _stx81086_))
                        _g84079_))
                ((##fx= _g84078_ 2)
                 (apply (lambda (_stx81090_ _E81091_)
                          (gx#syntax-local-e__% _stx81090_ _E81091_))
                        _g84079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g84079_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx81062_ _E81063_)
        (let ((_e81065_ (gx#syntax-local-e__% _stx81062_ _E81063_)))
          (if (##structure-instance-of? _e81065_ 'gx#expander::t)
              (##structure-ref _e81065_ '1 gx#expander::t '#f)
              _e81065_))))
    (define gx#syntax-local-value__0
      (lambda (_stx81070_)
        (let ((_E81072_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx81070_ _E81072_))))
    (define gx#syntax-local-value
      (lambda _g84081_
        (let ((_g84080_ (##length _g84081_)))
          (cond ((##fx= _g84080_ 1)
                 (apply (lambda (_stx81070_)
                          (gx#syntax-local-value__0 _stx81070_))
                        _g84081_))
                ((##fx= _g84080_ 2)
                 (apply (lambda (_stx81074_ _E81075_)
                          (gx#syntax-local-value__% _stx81074_ _E81075_))
                        _g84081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g84081_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx81059_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx81059_)))))
