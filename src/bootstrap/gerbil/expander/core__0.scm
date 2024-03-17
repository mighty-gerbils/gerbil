(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1710677338)
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
      (lambda _$args85772_
        (apply make-instance gx#expander-context::t _$args85772_)))
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
      (lambda _$args85769_
        (apply make-instance gx#root-context::t _$args85769_)))
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
      (lambda _$args85766_
        (apply make-instance gx#phi-context::t _$args85766_)))
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
      (lambda _$args85763_
        (apply make-instance gx#top-context::t _$args85763_)))
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
      (lambda _$args85760_
        (apply make-instance gx#module-context::t _$args85760_)))
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
      (lambda _$args85757_
        (apply make-instance gx#prelude-context::t _$args85757_)))
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
      (lambda _$args85754_
        (apply make-instance gx#local-context::t _$args85754_)))
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
      (lambda (_self85738_ _id85739_ _super85740_)
        (if (##fx< '3 (##structure-length _self85738_))
            (begin
              (##unchecked-structure-set!
               _self85738_
               _id85739_
               '1
               (##structure-type _self85738_)
               '#f)
              (##unchecked-structure-set!
               _self85738_
               (make-hash-table-eq)
               '2
               (##structure-type _self85738_)
               '#f)
              (##unchecked-structure-set!
               _self85738_
               _super85740_
               '3
               (##structure-type _self85738_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self85738_
                   '3
                   (##vector-length _self85738_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self85745_ _id85746_)
        (let ((_super85748_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self85745_ _id85746_ _super85748_))))
    (define gx#phi-context:::init!
      (lambda _g85815_
        (let ((_g85814_ (##length _g85815_)))
          (cond ((##fx= _g85814_ 2)
                 (apply (lambda (_self85745_ _id85746_)
                          (gx#phi-context:::init!__0 _self85745_ _id85746_))
                        _g85815_))
                ((##fx= _g85814_ 3)
                 (apply (lambda (_self85750_ _id85751_ _super85752_)
                          (gx#phi-context:::init!__%
                           _self85750_
                           _id85751_
                           _super85752_))
                        _g85815_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g85815_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self85602_ _super85603_)
        (if (##fx< '3 (##structure-length _self85602_))
            (begin
              (##unchecked-structure-set!
               _self85602_
               (gensym 'L)
               '1
               (##structure-type _self85602_)
               '#f)
              (##unchecked-structure-set!
               _self85602_
               (make-hash-table-eq)
               '2
               (##structure-type _self85602_)
               '#f)
              (##unchecked-structure-set!
               _self85602_
               _super85603_
               '3
               (##structure-type _self85602_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self85602_
                   '3
                   (##vector-length _self85602_)))))
    (define gx#local-context:::init!__0
      (lambda (_self85608_)
        (let ((_super85610_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self85608_ _super85610_))))
    (define gx#local-context:::init!
      (lambda _g85817_
        (let ((_g85816_ (##length _g85817_)))
          (cond ((##fx= _g85816_ 1)
                 (apply (lambda (_self85608_)
                          (gx#local-context:::init!__0 _self85608_))
                        _g85817_))
                ((##fx= _g85816_ 2)
                 (apply (lambda (_self85612_ _super85613_)
                          (gx#local-context:::init!__%
                           _self85612_
                           _super85613_))
                        _g85817_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g85817_))))))
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
      (lambda _$args85476_ (apply make-instance gx#binding::t _$args85476_)))
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
      (lambda _$args85473_
        (apply make-instance gx#runtime-binding::t _$args85473_)))
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
      (lambda _$args85470_
        (apply make-instance gx#local-binding::t _$args85470_)))
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
      (lambda _$args85467_
        (apply make-instance gx#top-binding::t _$args85467_)))
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
      (lambda _$args85464_
        (apply make-instance gx#module-binding::t _$args85464_)))
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
      (lambda _$args85461_
        (apply make-instance gx#extern-binding::t _$args85461_)))
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
      (lambda _$args85458_
        (apply make-instance gx#syntax-binding::t _$args85458_)))
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
      (lambda _$args85455_
        (apply make-instance gx#import-binding::t _$args85455_)))
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
      (lambda _$args85452_
        (apply make-instance gx#alias-binding::t _$args85452_)))
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
      (lambda _$args85449_ (apply make-instance gx#expander::t _$args85449_)))
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
      (lambda _$args85446_
        (apply make-instance gx#core-expander::t _$args85446_)))
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
      (lambda _$args85443_
        (apply make-instance gx#expression-form::t _$args85443_)))
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
      (lambda _$args85440_
        (apply make-instance gx#special-form::t _$args85440_)))
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
      (lambda _$args85437_
        (apply make-instance gx#definition-form::t _$args85437_)))
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
      (lambda _$args85434_
        (apply make-instance gx#top-special-form::t _$args85434_)))
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
      (lambda _$args85431_
        (apply make-instance gx#module-special-form::t _$args85431_)))
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
      (lambda _$args85428_
        (apply make-instance gx#feature-expander::t _$args85428_)))
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
      (lambda _$args85425_
        (apply make-instance gx#private-feature-expander::t _$args85425_)))
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
      (lambda _$args85422_
        (apply make-instance gx#reserved-expander::t _$args85422_)))
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
      (lambda _$args85419_
        (apply make-instance gx#macro-expander::t _$args85419_)))
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
      (lambda _$args85416_
        (apply make-instance gx#rename-macro-expander::t _$args85416_)))
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
      (lambda _$args85413_
        (apply make-instance gx#user-expander::t _$args85413_)))
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
      (lambda _$args85410_
        (apply make-instance gx#expander-mark::t _$args85410_)))
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
      (lambda (_ctx85395_ _message85396_ _stx85397_ . _details85398_)
        (let ((_ctx85408_
               (let ((_$e85400_ _ctx85395_))
                 (if _$e85400_
                     _$e85400_
                     (let ((_$e85403_ (gx#core-context-top__0)))
                       (if _$e85403_
                           ((lambda (_ctx85406_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx85406_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e85403_)
                           '#f))))))
          (raise (make-syntax-error
                  _message85396_
                  (cons _stx85397_ _details85398_)
                  _ctx85408_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx85382_ _expression?85383_)
        (gx#eval-syntax* (gx#core-expand__% _stx85382_ _expression?85383_))))
    (define gx#eval-syntax__0
      (lambda (_stx85388_)
        (let ((_expression?85390_ '#f))
          (gx#eval-syntax__% _stx85388_ _expression?85390_))))
    (define gx#eval-syntax
      (lambda _g85819_
        (let ((_g85818_ (##length _g85819_)))
          (cond ((##fx= _g85818_ 1)
                 (apply (lambda (_stx85388_) (gx#eval-syntax__0 _stx85388_))
                        _g85819_))
                ((##fx= _g85818_ 2)
                 (apply (lambda (_stx85392_ _expression?85393_)
                          (gx#eval-syntax__% _stx85392_ _expression?85393_))
                        _g85819_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g85819_))))))
    (define gx#eval-syntax*
      (lambda (_stx85379_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx85379_))))
    (define gx#core-expand__%
      (lambda (_stx85366_ _expression?85367_)
        (if _expression?85367_
            (gx#core-expand-expression _stx85366_)
            (gx#core-expand-top _stx85366_))))
    (define gx#core-expand__0
      (lambda (_stx85372_)
        (let ((_expression?85374_ '#f))
          (gx#core-expand__% _stx85372_ _expression?85374_))))
    (define gx#core-expand
      (lambda _g85821_
        (let ((_g85820_ (##length _g85821_)))
          (cond ((##fx= _g85820_ 1)
                 (apply (lambda (_stx85372_) (gx#core-expand__0 _stx85372_))
                        _g85821_))
                ((##fx= _g85820_ 2)
                 (apply (lambda (_stx85376_ _expression?85377_)
                          (gx#core-expand__% _stx85376_ _expression?85377_))
                        _g85821_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g85821_))))))
    (define gx#core-expand-top
      (lambda (_stx85333_)
        (let* ((_stx85335_ (gx#core-expand*__0 _stx85333_))
               (_e8533685343_ _stx85335_)
               (_E8533885347_
                (lambda () (gx#core-expand-expression _stx85335_)))
               (_E8533785361_
                (lambda ()
                  (if (gx#stx-pair? _e8533685343_)
                      (let ((_e8533985351_ (gx#syntax-e _e8533685343_)))
                        (let ((_hd8534085354_ (##car _e8533985351_))
                              (_tl8534185356_ (##cdr _e8533985351_)))
                          (let ((_form85359_ _hd8534085354_))
                            (if (gx#core-bound-identifier?__0 _form85359_)
                                _stx85335_
                                (_E8533885347_)))))
                      (_E8533885347_)))))
          (_E8533785361_))))
    (define gx#core-expand-expression
      (lambda (_stx85280_)
        (letrec ((_sealed-expression?85282_
                  (lambda (_hd85303_)
                    (if (gx#sealed-syntax? _hd85303_)
                        (let* ((_e8530485311_ _hd85303_)
                               (_E8530685315_ (lambda () '#f))
                               (_E8530585329_
                                (lambda ()
                                  (if (gx#stx-pair? _e8530485311_)
                                      (let ((_e8530785319_
                                             (gx#syntax-e _e8530485311_)))
                                        (let ((_hd8530885322_
                                               (##car _e8530785319_))
                                              (_tl8530985324_
                                               (##cdr _e8530785319_)))
                                          (let ((_form85327_ _hd8530885322_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form85327_
                                                 gx#expression-form-binding?)
                                                (_E8530685315_)))))
                                      (_E8530685315_)))))
                          (_E8530585329_))
                        '#f)))
                 (_illegal-expression85283_
                  (lambda (_hd85301_ . _g85822_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx85280_
                     _hd85301_)))
                 (_expand-e85284_
                  (lambda (_form85296_ _hd85297_)
                    (let ((_bind85299_
                           (if (##structure-instance-of?
                                _form85296_
                                'gx#binding::t)
                               _form85296_
                               (gx#resolve-identifier__0 _form85296_))))
                      (if (gx#core-expander-binding? _bind85299_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind85299_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd85297_
                            (gx#stx-source _stx85280_)))
                          (if (##structure-direct-instance-of?
                               _bind85299_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind85299_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd85297_
                                 (gx#stx-source _stx85280_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx85280_
                               _form85296_)))))))
          (let ((_hd85286_ (gx#core-expand-head _stx85280_)))
            (if (_sealed-expression?85282_ _hd85286_)
                _hd85286_
                (if (gx#stx-pair? _hd85286_)
                    (let* ((_form85288_ (gx#stx-car _hd85286_))
                           (_bind85290_
                            (if (gx#identifier? _form85288_)
                                (gx#resolve-identifier__0 _form85288_)
                                '#f)))
                      (if (or (not _bind85290_)
                              (not (gx#core-expander-binding? _bind85290_)))
                          (_expand-e85284_ '%%app (cons '%%app _hd85286_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind85290_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd85286_
                               _illegal-expression85283_)
                              (if (gx#expression-form-binding? _bind85290_)
                                  (_expand-e85284_ _bind85290_ _hd85286_)
                                  (if (gx#direct-special-form-binding?
                                       _bind85290_)
                                      (gx#core-expand-expression
                                       (_expand-e85284_ _bind85290_ _hd85286_))
                                      (_illegal-expression85283_
                                       _hd85286_))))))
                    (if (gx#core-bound-identifier?__0 _hd85286_)
                        (_illegal-expression85283_ _hd85286_)
                        (if (gx#identifier? _hd85286_)
                            (_expand-e85284_
                             '%%ref
                             (cons '%%ref (cons _hd85286_ '())))
                            (if (gx#stx-datum? _hd85286_)
                                (_expand-e85284_
                                 '%#quote
                                 (cons '%#quote (cons _hd85286_ '())))
                                (_illegal-expression85283_ _hd85286_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx85275_)
        (call-with-parameters
         (lambda ()
           (let ((_stx85278_ (gx#core-expand-expression _stx85275_)))
             (values _stx85278_ (gx#eval-syntax* _stx85278_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx85256_ _stop?85257_)
        (let _lp85259_ ((_stx85261_ _stx85256_))
          (if (_stop?85257_ _stx85261_)
              _stx85261_
              (let ((_rstx85263_ (gx#core-expand1 _stx85261_)))
                (if (eq? _stx85261_ _rstx85263_)
                    _stx85261_
                    (_lp85259_ _rstx85263_)))))))
    (define gx#core-expand*__0
      (lambda (_stx85268_)
        (let ((_stop?85270_ false))
          (gx#core-expand*__% _stx85268_ _stop?85270_))))
    (define gx#core-expand*
      (lambda _g85824_
        (let ((_g85823_ (##length _g85824_)))
          (cond ((##fx= _g85823_ 1)
                 (apply (lambda (_stx85268_) (gx#core-expand*__0 _stx85268_))
                        _g85824_))
                ((##fx= _g85823_ 2)
                 (apply (lambda (_stx85272_ _stop?85273_)
                          (gx#core-expand*__% _stx85272_ _stop?85273_))
                        _g85824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g85824_))))))
    (define gx#core-expand1
      (lambda (_stx85212_)
        (letrec ((_step85214_
                  (lambda (_hd85251_)
                    (let ((_bind85253_ (gx#resolve-identifier__0 _hd85251_)))
                      (if (##structure-instance-of?
                           _bind85253_
                           'gx#runtime-binding::t)
                          _stx85212_
                          (if (##structure-direct-instance-of?
                               _bind85253_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind85253_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx85212_)
                              (if (not _bind85253_)
                                  _stx85212_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx85212_))))))))
          (let* ((_e8521585223_ _stx85212_)
                 (_E8522185227_ (lambda () _stx85212_))
                 (_E8521785233_
                  (lambda ()
                    (let ((_hd85231_ _e8521585223_))
                      (if (gx#identifier? _hd85231_)
                          (_step85214_ _hd85231_)
                          (_E8522185227_)))))
                 (_E8521685247_
                  (lambda ()
                    (if (gx#stx-pair? _e8521585223_)
                        (let ((_e8521885237_ (gx#syntax-e _e8521585223_)))
                          (let ((_hd8521985240_ (##car _e8521885237_))
                                (_tl8522085242_ (##cdr _e8521885237_)))
                            (let ((_hd85245_ _hd8521985240_))
                              (if (gx#identifier? _hd85245_)
                                  (_step85214_ _hd85245_)
                                  (_E8521785233_)))))
                        (_E8521785233_)))))
            (_E8521685247_)))))
    (define gx#core-expand-head
      (lambda (_stx85178_)
        (letrec ((_stop?85180_
                  (lambda (_stx85182_)
                    (let* ((_e8518385190_ _stx85182_)
                           (_E8518585194_ (lambda () '#f))
                           (_E8518485208_
                            (lambda ()
                              (if (gx#stx-pair? _e8518385190_)
                                  (let ((_e8518685198_
                                         (gx#syntax-e _e8518385190_)))
                                    (let ((_hd8518785201_
                                           (##car _e8518685198_))
                                          (_tl8518885203_
                                           (##cdr _e8518685198_)))
                                      (let ((_hd85206_ _hd8518785201_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd85206_)
                                            (_E8518585194_)))))
                                  (_E8518585194_)))))
                      (_E8518485208_)))))
          (gx#core-expand*__% _stx85178_ _stop?85180_))))
    (define gx#core-expand-block__%
      (lambda (_stx84984_
               _expand-special84985_
               _begin-form84986_
               _expand-e84987_)
        (letrec ((_expand-splice84989_
                  (lambda (_hd85152_ _body85153_ _rest85154_ _r85155_)
                    (if (gx#stx-list? _body85153_)
                        (_K84993_
                         (gx#stx-foldr cons _rest85154_ _body85153_)
                         _r85155_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx84984_
                         _hd85152_))))
                 (_expand-cond-expand84990_
                  (lambda (_hd85148_ _rest85149_ _r85150_)
                    (_K84993_
                     (cons (gx#core-expand-cond-expand% _hd85148_) _rest85149_)
                     _r85150_)))
                 (_expand-include84991_
                  (lambda (_hd85097_ _rest85098_ _r85099_)
                    (let* ((_e8510085110_ _hd85097_)
                           (_E8510285114_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8510085110_)))
                           (_E8510185144_
                            (lambda ()
                              (if (gx#stx-pair? _e8510085110_)
                                  (let ((_e8510385118_
                                         (gx#syntax-e _e8510085110_)))
                                    (let ((_hd8510485121_
                                           (##car _e8510385118_))
                                          (_tl8510585123_
                                           (##cdr _e8510385118_)))
                                      (if (gx#stx-pair? _tl8510585123_)
                                          (let ((_e8510685126_
                                                 (gx#syntax-e _tl8510585123_)))
                                            (let ((_hd8510785129_
                                                   (##car _e8510685126_))
                                                  (_tl8510885131_
                                                   (##cdr _e8510685126_)))
                                              (let ((_path85134_
                                                     _hd8510785129_))
                                                (if (gx#stx-null?
                                                     _tl8510885131_)
                                                    (if (gx#stx-string?
                                                         _path85134_)
                                                        (let* ((_rpath85136_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path85134_
                         (gx#stx-source _hd85097_)))
                       (_block85138_
                        (gx#core-expand-include%__% _hd85097_ _rpath85136_))
                       (_rbody85141_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block85138_
                            _expand-special84985_
                            '#f
                            _expand-e84987_))
                         gx#current-expander-path
                         (cons _rpath85136_ (gx#current-expander-path)))))
                  (_K84993_ _rest85098_ (foldr1 cons _r85099_ _rbody85141_)))
                (_E8510285114_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8510285114_)))))
                                          (_E8510285114_))))
                                  (_E8510285114_)))))
                      (_E8510185144_))))
                 (_expand-expression84992_
                  (lambda (_hd85093_ _rest85094_ _r85095_)
                    (_K84993_
                     _rest85094_
                     (cons (_expand-e84987_ _hd85093_) _r85095_))))
                 (_K84993_
                  (lambda (_rest85023_ _r85024_)
                    (let* ((_e8502585032_ _rest85023_)
                           (_E8502785036_
                            (lambda ()
                              (if _begin-form84986_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form84986_
                                    (reverse _r85024_))
                                   (gx#stx-source _stx84984_))
                                  _r85024_)))
                           (_E8502685089_
                            (lambda ()
                              (if (gx#stx-pair? _e8502585032_)
                                  (let ((_e8502885040_
                                         (gx#syntax-e _e8502585032_)))
                                    (let ((_hd8502985043_
                                           (##car _e8502885040_))
                                          (_tl8503085045_
                                           (##cdr _e8502885040_)))
                                      (let* ((_hd85048_ _hd8502985043_)
                                             (_rest85050_ _tl8503085045_))
                                        (if '#t
                                            (let* ((_hd85052_
                                                    (gx#core-expand-head
                                                     _hd85048_))
                                                   (_e8505385060_ _hd85052_)
                                                   (_E8505585064_
                                                    (lambda ()
                                                      (_expand-expression84992_
                                                       _hd85052_
                                                       _rest85050_
                                                       _r85024_)))
                                                   (_E8505485085_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8505385060_)
                                                          (let ((_e8505685068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8505385060_)))
                    (let ((_hd8505785071_ (##car _e8505685068_))
                          (_tl8505885073_ (##cdr _e8505685068_)))
                      (let* ((_form85076_ _hd8505785071_)
                             (_body85078_ _tl8505885073_))
                        (if '#t
                            (let ((_bind85080_
                                   (if (gx#identifier? _form85076_)
                                       (gx#resolve-identifier__0 _form85076_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind85080_)
                                  (let ((_$e85082_
                                         (##unchecked-structure-ref
                                          _bind85080_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e85082_)
                                        (_expand-splice84989_
                                         _hd85052_
                                         _body85078_
                                         _rest85050_
                                         _r85024_)
                                        (if (eq? '%#cond-expand _$e85082_)
                                            (_expand-cond-expand84990_
                                             _hd85052_
                                             _rest85050_
                                             _r85024_)
                                            (if (eq? '%#include _$e85082_)
                                                (_expand-include84991_
                                                 _hd85052_
                                                 _rest85050_
                                                 _r85024_)
                                                (_expand-special84985_
                                                 _hd85052_
                                                 _K84993_
                                                 _rest85050_
                                                 _r85024_)))))
                                  (_expand-expression84992_
                                   _hd85052_
                                   _rest85050_
                                   _r85024_)))
                            (_E8505585064_)))))
                  (_E8505585064_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8505485085_))
                                            (_E8502785036_)))))
                                  (_E8502785036_)))))
                      (_E8502685089_)))))
          (let* ((_e8499485001_ _stx84984_)
                 (_E8499685005_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8499485001_)))
                 (_E8499585019_
                  (lambda ()
                    (if (gx#stx-pair? _e8499485001_)
                        (let ((_e8499785009_ (gx#syntax-e _e8499485001_)))
                          (let ((_hd8499885012_ (##car _e8499785009_))
                                (_tl8499985014_ (##cdr _e8499785009_)))
                            (let ((_body85017_ _tl8499985014_))
                              (if (gx#stx-list? _body85017_)
                                  (_K84993_ _body85017_ '())
                                  (_E8499685005_)))))
                        (_E8499685005_)))))
            (_E8499585019_)))))
    (define gx#core-expand-block__0
      (lambda (_stx85160_ _expand-special85161_)
        (let* ((_begin-form85163_ '%#begin)
               (_expand-e85165_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx85160_
           _expand-special85161_
           _begin-form85163_
           _expand-e85165_))))
    (define gx#core-expand-block__1
      (lambda (_stx85167_ _expand-special85168_ _begin-form85169_)
        (let ((_expand-e85171_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx85167_
           _expand-special85168_
           _begin-form85169_
           _expand-e85171_))))
    (define gx#core-expand-block
      (lambda _g85826_
        (let ((_g85825_ (##length _g85826_)))
          (cond ((##fx= _g85825_ 2)
                 (apply (lambda (_stx85160_ _expand-special85161_)
                          (gx#core-expand-block__0
                           _stx85160_
                           _expand-special85161_))
                        _g85826_))
                ((##fx= _g85825_ 3)
                 (apply (lambda (_stx85167_
                                 _expand-special85168_
                                 _begin-form85169_)
                          (gx#core-expand-block__1
                           _stx85167_
                           _expand-special85168_
                           _begin-form85169_))
                        _g85826_))
                ((##fx= _g85825_ 4)
                 (apply (lambda (_stx85173_
                                 _expand-special85174_
                                 _begin-form85175_
                                 _expand-e85176_)
                          (gx#core-expand-block__%
                           _stx85173_
                           _expand-special85174_
                           _begin-form85175_
                           _expand-e85176_))
                        _g85826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g85826_))))))
    (define gx#core-expand-block*
      (lambda (_stx84932_ _expand-special84933_)
        (let* ((_g8493484945_
                (gx#core-expand-block__1 _stx84932_ _expand-special84933_ '#f))
               (_E8493884949_
                (lambda () (error '"No clause matching" _g8493484945_))))
          (let ((_K8494384980_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx84932_)))
                (_K8494084966_ (lambda (_expr84964_) _expr84964_))
                (_K8493984955_
                 (lambda (_body84953_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body84953_))
                    (gx#stx-source _stx84932_)))))
            (let ((_try-match8493684976_
                   (lambda ()
                     (if (##pair? _g8493484945_)
                         (let ((_tl8494284971_ (##cdr _g8493484945_))
                               (_hd8494184969_ (##car _g8493484945_)))
                           (if (##null? _tl8494284971_)
                               (let ((_expr84974_ _hd8494184969_))
                                 (_K8494084966_ _expr84974_))
                               (let ((_body84958_ _g8493484945_))
                                 (_K8493984955_ _body84958_))))
                         (let ((_body84958_ _g8493484945_))
                           (_K8493984955_ _body84958_))))))
              (if (##null? _g8493484945_)
                  (_K8494384980_)
                  (_try-match8493684976_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx84760_)
        (letrec ((_satisfied?84762_
                  (lambda (_condition84860_)
                    (let* ((_e8486184876_ _condition84860_)
                           (_E8487184880_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8486184876_)))
                           (_E8486484899_
                            (lambda ()
                              (if (gx#stx-pair? _e8486184876_)
                                  (let ((_e8487284884_
                                         (gx#syntax-e _e8486184876_)))
                                    (let ((_hd8487384887_
                                           (##car _e8487284884_))
                                          (_tl8487484889_
                                           (##cdr _e8487284884_)))
                                      (let* ((_combinator84892_ _hd8487384887_)
                                             (_body84894_ _tl8487484889_))
                                        (if (gx#stx-list? _body84894_)
                                            (let ((_$e84896_
                                                   (gx#stx-e
                                                    _combinator84892_)))
                                              (if (eq? 'not _$e84896_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?84762_
                                                        _body84894_))
                                                  (if (eq? 'and _$e84896_)
                                                      (gx#stx-andmap
                                                       _satisfied?84762_
                                                       _body84894_)
                                                      (if (eq? 'or _$e84896_)
                                                          (gx#stx-ormap
                                                           _satisfied?84762_
                                                           _body84894_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e84896_)
                      (gx#stx-andmap gx#core-resolve-identifier _body84894_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx84760_
                       _combinator84892_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8487184880_)))))
                                  (_E8487184880_))))
                           (_E8486384922_
                            (lambda ()
                              (if (gx#stx-pair? _e8486184876_)
                                  (let ((_e8486584903_
                                         (gx#syntax-e _e8486184876_)))
                                    (let ((_hd8486684906_
                                           (##car _e8486584903_))
                                          (_tl8486784908_
                                           (##cdr _e8486584903_)))
                                      (if (and (gx#identifier? _hd8486684906_)
                                               (gx#core-identifier=?
                                                _hd8486684906_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8486784908_)
                                              (let ((_e8486884911_
                                                     (gx#syntax-e
                                                      _tl8486784908_)))
                                                (let ((_hd8486984914_
                                                       (##car _e8486884911_))
                                                      (_tl8487084916_
                                                       (##cdr _e8486884911_)))
                                                  (let ((_expr84919_
                                                         _hd8486984914_))
                                                    (if (gx#stx-null?
                                                         _tl8487084916_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr84919_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8486484899_))
                (_E8486484899_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8486484899_))
                                          (_E8486484899_))))
                                  (_E8486484899_))))
                           (_E8486284928_
                            (lambda ()
                              (let ((_id84926_ _e8486184876_))
                                (if (gx#identifier? _id84926_)
                                    (gx#core-bound-identifier?__%
                                     _id84926_
                                     gx#feature-binding?)
                                    (_E8486384922_))))))
                      (_E8486284928_))))
                 (_loop84763_
                  (lambda (_rest84793_)
                    (let* ((_e8479484802_ _rest84793_)
                           (_E8480084806_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8479484802_)))
                           (_E8479684810_
                            (lambda ()
                              (if (gx#stx-null? _e8479484802_)
                                  (if '#t '() (_E8480084806_))
                                  (_E8480084806_))))
                           (_E8479584856_
                            (lambda ()
                              (if (gx#stx-pair? _e8479484802_)
                                  (let ((_e8479784814_
                                         (gx#syntax-e _e8479484802_)))
                                    (let ((_hd8479884817_
                                           (##car _e8479784814_))
                                          (_tl8479984819_
                                           (##cdr _e8479784814_)))
                                      (let* ((_hd84822_ _hd8479884817_)
                                             (_rest84824_ _tl8479984819_))
                                        (if '#t
                                            (let* ((_e8482584832_ _hd84822_)
                                                   (_E8482784836_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8482584832_)))
                                                   (_E8482684852_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8482584832_)
                                                          (let ((_e8482884840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8482584832_)))
                    (let ((_hd8482984843_ (##car _e8482884840_))
                          (_tl8483084845_ (##cdr _e8482884840_)))
                      (let* ((_condition84848_ _hd8482984843_)
                             (_body84850_ _tl8483084845_))
                        (if '#t
                            (if (gx#stx-eq? _condition84848_ 'else)
                                (if (gx#stx-null? _rest84824_)
                                    _body84850_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx84760_
                                     _hd84822_))
                                (if (_satisfied?84762_ _condition84848_)
                                    _body84850_
                                    (_loop84763_ _rest84824_)))
                            (_E8482784836_)))))
                  (_E8482784836_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8482684852_))
                                            (_E8479684810_)))))
                                  (_E8479684810_)))))
                      (_E8479584856_)))))
          (let* ((_e8476484771_ _stx84760_)
                 (_E8476684775_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8476484771_)))
                 (_E8476584789_
                  (lambda ()
                    (if (gx#stx-pair? _e8476484771_)
                        (let ((_e8476784779_ (gx#syntax-e _e8476484771_)))
                          (let ((_hd8476884782_ (##car _e8476784779_))
                                (_tl8476984784_ (##cdr _e8476784779_)))
                            (let ((_clauses84787_ _tl8476984784_))
                              (if (gx#stx-list? _clauses84787_)
                                  (gx#core-cons
                                   'begin
                                   (_loop84763_ _clauses84787_))
                                  (_E8476684775_)))))
                        (_E8476684775_)))))
            (_E8476584789_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx84703_ _rpath84704_)
        (let* ((_e8470584715_ _stx84703_)
               (_E8470784719_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8470584715_)))
               (_E8470684746_
                (lambda ()
                  (if (gx#stx-pair? _e8470584715_)
                      (let ((_e8470884723_ (gx#syntax-e _e8470584715_)))
                        (let ((_hd8470984726_ (##car _e8470884723_))
                              (_tl8471084728_ (##cdr _e8470884723_)))
                          (if (gx#stx-pair? _tl8471084728_)
                              (let ((_e8471184731_
                                     (gx#syntax-e _tl8471084728_)))
                                (let ((_hd8471284734_ (##car _e8471184731_))
                                      (_tl8471384736_ (##cdr _e8471184731_)))
                                  (let ((_path84739_ _hd8471284734_))
                                    (if (gx#stx-null? _tl8471384736_)
                                        (if (gx#stx-string? _path84739_)
                                            (let ((_rpath84744_
                                                   (let ((_$e84741_
                                                          _rpath84704_))
                                                     (if _$e84741_
                                                         _$e84741_
                                                         (gx#core-resolve-path__%
                                                          _path84739_
                                                          (gx#stx-source
                                                           _stx84703_))))))
                                              (if (member _rpath84744_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx84703_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath84744_))
                                                    (gx#stx-source
                                                     _stx84703_)))))
                                            (_E8470784719_))
                                        (_E8470784719_)))))
                              (_E8470784719_))))
                      (_E8470784719_)))))
          (_E8470684746_))))
    (define gx#core-expand-include%__0
      (lambda (_stx84753_)
        (let ((_rpath84755_ '#f))
          (gx#core-expand-include%__% _stx84753_ _rpath84755_))))
    (define gx#core-expand-include%
      (lambda _g85828_
        (let ((_g85827_ (##length _g85828_)))
          (cond ((##fx= _g85827_ 1)
                 (apply (lambda (_stx84753_)
                          (gx#core-expand-include%__0 _stx84753_))
                        _g85828_))
                ((##fx= _g85827_ 2)
                 (apply (lambda (_stx84757_ _rpath84758_)
                          (gx#core-expand-include%__% _stx84757_ _rpath84758_))
                        _g85828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g85828_))))))
    (define gx#core-apply-expander__%
      (lambda (_K84672_ _stx84673_ _method84674_)
        (if (procedure? _K84672_)
            (let ((_$e84676_ (gx#stx-source _stx84673_)))
              (if _$e84676_
                  ((lambda (_g8467884680_)
                     (gx#stx-wrap-source (_K84672_ _stx84673_) _g8467884680_))
                   _$e84676_)
                  (_K84672_ _stx84673_)))
            (let ((_$e84683_ (bound-method-ref _K84672_ _method84674_)))
              (if _$e84683_
                  ((lambda (_g8468584687_)
                     (gx#core-apply-expander__%
                      _g8468584687_
                      _stx84673_
                      _method84674_))
                   _$e84683_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx84673_
                   _method84674_))))))
    (define gx#core-apply-expander__0
      (lambda (_K84693_ _stx84694_)
        (let ((_method84696_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K84693_ _stx84694_ _method84696_))))
    (define gx#core-apply-expander
      (lambda _g85830_
        (let ((_g85829_ (##length _g85830_)))
          (cond ((##fx= _g85829_ 2)
                 (apply (lambda (_K84693_ _stx84694_)
                          (gx#core-apply-expander__0 _K84693_ _stx84694_))
                        _g85830_))
                ((##fx= _g85829_ 3)
                 (apply (lambda (_K84698_ _stx84699_ _method84700_)
                          (gx#core-apply-expander__%
                           _K84698_
                           _stx84699_
                           _method84700_))
                        _g85830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g85830_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self84668_ _stx84669_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx84669_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self84521_ _stx84522_)
        (let* ((_self8452384529_ _self84521_)
               (_E8452584533_
                (lambda () (error '"No clause matching" _self8452384529_)))
               (_K8452684538_
                (lambda (_K84536_)
                  (gx#core-apply-expander__0 _K84536_ _stx84522_))))
          (if (##structure-instance-of? _self8452384529_ 'gx#core-macro::t)
              (let* ((_e8452784541_
                      (##unchecked-structure-ref
                       _self8452384529_
                       '1
                       gx#expander::t
                       '#f))
                     (_K84544_ _e8452784541_))
                (_K8452684538_ _K84544_))
              (_E8452584533_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self84374_ _stx84375_)
        (if (gx#sealed-syntax? _stx84375_)
            _stx84375_
            (let* ((_self8437684382_ _self84374_)
                   (_E8437884386_
                    (lambda () (error '"No clause matching" _self8437684382_)))
                   (_K8437984391_
                    (lambda (_K84389_)
                      (gx#core-apply-expander__0 _K84389_ _stx84375_))))
              (if (##structure-instance-of?
                   _self8437684382_
                   'gx#core-expander::t)
                  (let* ((_e8438084394_
                          (##unchecked-structure-ref
                           _self8437684382_
                           '1
                           gx#expander::t
                           '#f))
                         (_K84397_ _e8438084394_))
                    (_K8437984391_ _K84397_))
                  (_E8437884386_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self84236_ _stx84237_ _top?84238_)
        (if (_top?84238_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self84236_ _stx84237_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx84237_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self84243_ _stx84244_)
        (let ((_top?84246_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self84243_
           _stx84244_
           _top?84246_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g85832_
        (let ((_g85831_ (##length _g85832_)))
          (cond ((##fx= _g85831_ 2)
                 (apply (lambda (_self84243_ _stx84244_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self84243_
                           _stx84244_))
                        _g85832_))
                ((##fx= _g85831_ 3)
                 (apply (lambda (_self84248_ _stx84249_ _top?84250_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self84248_
                           _stx84249_
                           _top?84250_))
                        _g85832_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g85832_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self84110_ _stx84111_)
        (gx#top-special-form::apply-macro-expander__%
         _self84110_
         _stx84111_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self83935_ _stx83936_)
        (let* ((_self8393783943_ _self83935_)
               (_E8393983947_
                (lambda () (error '"No clause matching" _self8393783943_)))
               (_K8394083980_
                (lambda (_id83950_)
                  (let* ((_e8395183958_ _stx83936_)
                         (_E8395383962_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8395183958_)))
                         (_E8395283976_
                          (lambda ()
                            (if (gx#stx-pair? _e8395183958_)
                                (let ((_e8395483966_
                                       (gx#syntax-e _e8395183958_)))
                                  (let ((_hd8395583969_ (##car _e8395483966_))
                                        (_tl8395683971_ (##cdr _e8395483966_)))
                                    (let ((_body83974_ _tl8395683971_))
                                      (if '#t
                                          (gx#core-cons _id83950_ _body83974_)
                                          (_E8395383962_)))))
                                (_E8395383962_)))))
                    (_E8395283976_)))))
          (if (##structure-instance-of?
               _self8393783943_
               'gx#rename-macro-expander::t)
              (let* ((_e8394183983_
                      (##unchecked-structure-ref
                       _self8393783943_
                       '1
                       gx#expander::t
                       '#f))
                     (_id83986_ _e8394183983_))
                (_K8394083980_ _id83986_))
              (_E8393983947_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self83761_ _stx83762_ _method83763_)
        (let* ((_self8376483772_ _self83761_)
               (_E8376683776_
                (lambda () (error '"No clause matching" _self8376483772_)))
               (_K8376783783_
                (lambda (_phi83779_ _ctx83780_ _K83781_)
                  (gx#core-apply-user-macro
                   _K83781_
                   _stx83762_
                   _ctx83780_
                   _phi83779_
                   _method83763_))))
          (if (##structure-instance-of? _self8376483772_ 'gx#macro-expander::t)
              (let* ((_e8376883786_
                      (##unchecked-structure-ref
                       _self8376483772_
                       '1
                       gx#expander::t
                       '#f))
                     (_K83789_ _e8376883786_)
                     (_e8376983791_
                      (##unchecked-structure-ref
                       _self8376483772_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx83794_ _e8376983791_)
                     (_e8377083796_
                      (##unchecked-structure-ref
                       _self8376483772_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi83799_ _e8377083796_))
                (_K8376783783_ _phi83799_ _ctx83794_ _K83789_))
              (_E8376683776_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self83804_ _stx83805_)
        (let ((_method83807_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self83804_
           _stx83805_
           _method83807_))))
    (define gx#core-apply-user-expander
      (lambda _g85834_
        (let ((_g85833_ (##length _g85834_)))
          (cond ((##fx= _g85833_ 2)
                 (apply (lambda (_self83804_ _stx83805_)
                          (gx#core-apply-user-expander__0
                           _self83804_
                           _stx83805_))
                        _g85834_))
                ((##fx= _g85833_ 3)
                 (apply (lambda (_self83809_ _stx83810_ _method83811_)
                          (gx#core-apply-user-expander__%
                           _self83809_
                           _stx83810_
                           _method83811_))
                        _g85834_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g85834_))))))
    (define gx#core-apply-user-macro
      (lambda (_K83751_ _stx83752_ _ctx83753_ _phi83754_ _method83755_)
        (let ((_mark83757_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx83753_
                _phi83754_
                _stx83752_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K83751_
               (gx#stx-apply-mark _stx83752_ _mark83757_)
               _method83755_)
              _mark83757_))
           gx#current-expander-marks
           (cons _mark83757_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx83602_ _phi83603_ _ctx83604_)
        (let _lp83606_ ((_bind83608_
                         (gx#core-resolve-identifier__%
                          _stx83602_
                          _phi83603_
                          _ctx83604_)))
          (if (##structure-direct-instance-of?
               _bind83608_
               'gx#import-binding::t)
              (_lp83606_
               (##unchecked-structure-ref
                _bind83608_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind83608_
                   'gx#alias-binding::t)
                  (_lp83606_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind83608_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi83603_
                    _ctx83604_))
                  _bind83608_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx83613_)
        (let* ((_phi83615_ (gx#current-expander-phi))
               (_ctx83617_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx83613_ _phi83615_ _ctx83617_))))
    (define gx#resolve-identifier__1
      (lambda (_stx83619_ _phi83620_)
        (let ((_ctx83622_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx83619_ _phi83620_ _ctx83622_))))
    (define gx#resolve-identifier
      (lambda _g85836_
        (let ((_g85835_ (##length _g85836_)))
          (cond ((##fx= _g85835_ 1)
                 (apply (lambda (_stx83613_)
                          (gx#resolve-identifier__0 _stx83613_))
                        _g85836_))
                ((##fx= _g85835_ 2)
                 (apply (lambda (_stx83619_ _phi83620_)
                          (gx#resolve-identifier__1 _stx83619_ _phi83620_))
                        _g85836_))
                ((##fx= _g85835_ 3)
                 (apply (lambda (_stx83624_ _phi83625_ _ctx83626_)
                          (gx#resolve-identifier__%
                           _stx83624_
                           _phi83625_
                           _ctx83626_))
                        _g85836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g85836_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx83560_ _val83561_ _rebind?83562_ _phi83563_ _ctx83564_)
        (let ((_rebind?83566_
               (if (not _rebind?83562_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?83562_) _rebind?83562_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx83560_)
           _val83561_
           _rebind?83566_
           _phi83563_
           _ctx83564_))))
    (define gx#bind-identifier!__0
      (lambda (_stx83571_ _val83572_)
        (let* ((_rebind?83574_ '#f)
               (_phi83576_ (gx#current-expander-phi))
               (_ctx83578_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83571_
           _val83572_
           _rebind?83574_
           _phi83576_
           _ctx83578_))))
    (define gx#bind-identifier!__1
      (lambda (_stx83580_ _val83581_ _rebind?83582_)
        (let* ((_phi83584_ (gx#current-expander-phi))
               (_ctx83586_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83580_
           _val83581_
           _rebind?83582_
           _phi83584_
           _ctx83586_))))
    (define gx#bind-identifier!__2
      (lambda (_stx83588_ _val83589_ _rebind?83590_ _phi83591_)
        (let ((_ctx83593_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83588_
           _val83589_
           _rebind?83590_
           _phi83591_
           _ctx83593_))))
    (define gx#bind-identifier!
      (lambda _g85838_
        (let ((_g85837_ (##length _g85838_)))
          (cond ((##fx= _g85837_ 2)
                 (apply (lambda (_stx83571_ _val83572_)
                          (gx#bind-identifier!__0 _stx83571_ _val83572_))
                        _g85838_))
                ((##fx= _g85837_ 3)
                 (apply (lambda (_stx83580_ _val83581_ _rebind?83582_)
                          (gx#bind-identifier!__1
                           _stx83580_
                           _val83581_
                           _rebind?83582_))
                        _g85838_))
                ((##fx= _g85837_ 4)
                 (apply (lambda (_stx83588_
                                 _val83589_
                                 _rebind?83590_
                                 _phi83591_)
                          (gx#bind-identifier!__2
                           _stx83588_
                           _val83589_
                           _rebind?83590_
                           _phi83591_))
                        _g85838_))
                ((##fx= _g85837_ 5)
                 (apply (lambda (_stx83595_
                                 _val83596_
                                 _rebind?83597_
                                 _phi83598_
                                 _ctx83599_)
                          (gx#bind-identifier!__%
                           _stx83595_
                           _val83596_
                           _rebind?83597_
                           _phi83598_
                           _ctx83599_))
                        _g85838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g85838_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx83532_ _phi83533_ _ctx83534_)
        (let _lp83536_ ((_e83538_ _stx83532_)
                        (_marks83539_ (gx#current-expander-marks)))
          (if (symbol? _e83538_)
              (gx#core-resolve-binding
               _e83538_
               _phi83533_
               _phi83533_
               _ctx83534_
               (reverse _marks83539_))
              (if (gx#identifier-quote? _e83538_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e83538_ '1 gx#AST::t '#f)
                   _phi83533_
                   '0
                   (##unchecked-structure-ref
                    _e83538_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e83538_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e83538_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e83538_ '1 gx#AST::t '#f)
                       _phi83533_
                       _phi83533_
                       _ctx83534_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e83538_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks83539_))
                      (if (##structure-direct-instance-of?
                           _e83538_
                           'gx#syntax-wrap::t)
                          (_lp83536_
                           (##unchecked-structure-ref
                            _e83538_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e83538_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks83539_))
                          (if (##structure-instance-of?
                               _e83538_
                               'gerbil#AST::t)
                              (_lp83536_
                               (##unchecked-structure-ref
                                _e83538_
                                '1
                                gx#AST::t
                                '#f)
                               _marks83539_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx83532_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx83544_)
        (let* ((_phi83546_ (gx#current-expander-phi))
               (_ctx83548_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx83544_ _phi83546_ _ctx83548_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx83550_ _phi83551_)
        (let ((_ctx83553_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx83550_ _phi83551_ _ctx83553_))))
    (define gx#core-resolve-identifier
      (lambda _g85840_
        (let ((_g85839_ (##length _g85840_)))
          (cond ((##fx= _g85839_ 1)
                 (apply (lambda (_stx83544_)
                          (gx#core-resolve-identifier__0 _stx83544_))
                        _g85840_))
                ((##fx= _g85839_ 2)
                 (apply (lambda (_stx83550_ _phi83551_)
                          (gx#core-resolve-identifier__1
                           _stx83550_
                           _phi83551_))
                        _g85840_))
                ((##fx= _g85839_ 3)
                 (apply (lambda (_stx83555_ _phi83556_ _ctx83557_)
                          (gx#core-resolve-identifier__%
                           _stx83555_
                           _phi83556_
                           _ctx83557_))
                        _g85840_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g85840_))))))
    (define gx#core-resolve-binding
      (lambda (_id83445_ _phi83446_ _src-phi83447_ _ctx83448_ _marks83449_)
        (letrec ((_resolve83451_
                  (lambda (_ctx83519_ _src-phi83520_ _key83521_)
                    (let _lp83523_ ((_ctx83525_
                                     (gx#core-context-shift
                                      _ctx83519_
                                      _phi83446_))
                                    (_dphi83526_
                                     (fx- _phi83446_ _src-phi83520_)))
                      (let ((_$e83528_
                             (gx#core-context-resolve _ctx83525_ _key83521_)))
                        (if _$e83528_
                            (values _$e83528_)
                            (if (fxzero? _dphi83526_)
                                '#f
                                (if (fxpositive? _dphi83526_)
                                    (_lp83523_
                                     (gx#core-context-shift _ctx83525_ '-1)
                                     (fx- _dphi83526_ '1))
                                    (_lp83523_
                                     (gx#core-context-shift _ctx83525_ '1)
                                     (fx+ _dphi83526_ '1))))))))))
          (let _lp83453_ ((_ctx83455_ _ctx83448_)
                          (_src-phi83456_ _src-phi83447_)
                          (_rest83457_ _marks83449_))
            (let* ((_rest8345883466_ _rest83457_)
                   (_else8346083474_
                    (lambda ()
                      (_resolve83451_ _ctx83455_ _src-phi83456_ _id83445_)))
                   (_K8346283507_
                    (lambda (_rest83477_ _hd83478_)
                      (let* ((_hd8347983485_ _hd83478_)
                             (_E8348183489_
                              (lambda ()
                                (error '"No clause matching" _hd8347983485_)))
                             (_K8348283499_
                              (lambda (_subst83492_)
                                (let ((_$e83496_
                                       (let ((_key83494_
                                              (if _subst83492_
                                                  (hash-get
                                                   _subst83492_
                                                   _id83445_)
                                                  '#f)))
                                         (if _key83494_
                                             (_resolve83451_
                                              _ctx83455_
                                              _src-phi83456_
                                              _key83494_)
                                             '#f))))
                                  (if _$e83496_
                                      _$e83496_
                                      (_lp83453_
                                       (##unchecked-structure-ref
                                        _hd83478_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd83478_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest83477_))))))
                        (if (##structure-instance-of?
                             _hd8347983485_
                             'gx#expander-mark::t)
                            (let* ((_e8348383502_
                                    (##unchecked-structure-ref
                                     _hd8347983485_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst83505_ _e8348383502_))
                              (_K8348283499_ _subst83505_))
                            (_E8348183489_))))))
              (if (##pair? _rest8345883466_)
                  (let ((_hd8346383510_ (##car _rest8345883466_))
                        (_tl8346483512_ (##cdr _rest8345883466_)))
                    (let* ((_hd83515_ _hd8346383510_)
                           (_rest83517_ _tl8346483512_))
                      (_K8346283507_ _rest83517_ _hd83515_)))
                  (_else8346083474_)))))))
    (define gx#core-bind!__%
      (lambda (_key83321_ _val83322_ _rebind?83323_ _phi83324_ _ctx83325_)
        (letrec ((_update-binding83327_
                  (lambda (_xval83398_)
                    (if (or (_rebind?83323_ _ctx83325_ _xval83398_ _val83322_)
                            (and (##structure-direct-instance-of?
                                  _xval83398_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval83398_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val83322_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val83322_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval83398_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val83322_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val83322_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval83398_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val83322_
                        (if (and (##structure-direct-instance-of?
                                  _val83322_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val83322_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval83398_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val83322_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval83398_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval83398_
                            (if (and (##structure-direct-instance-of?
                                      _val83322_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval83398_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key83321_
                                 (cons (##unchecked-structure-ref
                                        _val83322_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val83322_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval83398_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval83398_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval83398_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval83398_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key83321_
                                 _val83322_
                                 _xval83398_))))))
                 (_gensubst83328_
                  (lambda (_subst83393_ _id83394_)
                    (let ((_eid83396_
                           (gensym (if (uninterned-symbol? _id83394_)
                                       '%
                                       _id83394_))))
                      (hash-put! _subst83393_ _id83394_ _eid83396_)
                      _eid83396_)))
                 (_subst!83329_
                  (lambda (_key83331_)
                    (let* ((_key8333283340_ _key83331_)
                           (_else8333483348_ (lambda () _key83331_))
                           (_K8333683381_
                            (lambda (_mark83351_ _id83352_)
                              (let* ((_mark8335383359_ _mark83351_)
                                     (_E8335583363_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8335383359_)))
                                     (_K8335683373_
                                      (lambda (_subst83366_)
                                        (if (not _subst83366_)
                                            (let ((_subst83368_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark83351_
                                               _subst83368_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst83328_
                                               _subst83368_
                                               _id83352_))
                                            (let ((_$e83370_
                                                   (hash-get
                                                    _subst83366_
                                                    _id83352_)))
                                              (if _$e83370_
                                                  (values _$e83370_)
                                                  (_gensubst83328_
                                                   _subst83366_
                                                   _id83352_)))))))
                                (if (##structure-instance-of?
                                     _mark8335383359_
                                     'gx#expander-mark::t)
                                    (let* ((_e8335783376_
                                            (##unchecked-structure-ref
                                             _mark8335383359_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst83379_ _e8335783376_))
                                      (_K8335683373_ _subst83379_))
                                    (_E8335583363_))))))
                      (if (##pair? _key8333283340_)
                          (let ((_hd8333783384_ (##car _key8333283340_))
                                (_tl8333883386_ (##cdr _key8333283340_)))
                            (let* ((_id83389_ _hd8333783384_)
                                   (_mark83391_ _tl8333883386_))
                              (_K8333683381_ _mark83391_ _id83389_)))
                          (_else8333483348_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx83325_ _phi83324_)
           (_subst!83329_ _key83321_)
           _val83322_
           _update-binding83327_))))
    (define gx#core-bind!__0
      (lambda (_key83415_ _val83416_)
        (let* ((_rebind?83418_ false)
               (_phi83420_ (gx#current-expander-phi))
               (_ctx83422_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83415_
           _val83416_
           _rebind?83418_
           _phi83420_
           _ctx83422_))))
    (define gx#core-bind!__1
      (lambda (_key83424_ _val83425_ _rebind?83426_)
        (let* ((_phi83428_ (gx#current-expander-phi))
               (_ctx83430_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83424_
           _val83425_
           _rebind?83426_
           _phi83428_
           _ctx83430_))))
    (define gx#core-bind!__2
      (lambda (_key83432_ _val83433_ _rebind?83434_ _phi83435_)
        (let ((_ctx83437_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83432_
           _val83433_
           _rebind?83434_
           _phi83435_
           _ctx83437_))))
    (define gx#core-bind!
      (lambda _g85842_
        (let ((_g85841_ (##length _g85842_)))
          (cond ((##fx= _g85841_ 2)
                 (apply (lambda (_key83415_ _val83416_)
                          (gx#core-bind!__0 _key83415_ _val83416_))
                        _g85842_))
                ((##fx= _g85841_ 3)
                 (apply (lambda (_key83424_ _val83425_ _rebind?83426_)
                          (gx#core-bind!__1
                           _key83424_
                           _val83425_
                           _rebind?83426_))
                        _g85842_))
                ((##fx= _g85841_ 4)
                 (apply (lambda (_key83432_
                                 _val83433_
                                 _rebind?83434_
                                 _phi83435_)
                          (gx#core-bind!__2
                           _key83432_
                           _val83433_
                           _rebind?83434_
                           _phi83435_))
                        _g85842_))
                ((##fx= _g85841_ 5)
                 (apply (lambda (_key83439_
                                 _val83440_
                                 _rebind?83441_
                                 _phi83442_
                                 _ctx83443_)
                          (gx#core-bind!__%
                           _key83439_
                           _val83440_
                           _rebind?83441_
                           _phi83442_
                           _ctx83443_))
                        _g85842_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g85842_))))))
    (define gx#core-identifier-key
      (lambda (_stx83255_)
        (if (symbol? _stx83255_)
            (let* ((_g8325683264_ (gx#current-expander-marks))
                   (_else8325883272_ (lambda () _stx83255_))
                   (_K8326083277_
                    (lambda (_hd83275_) (cons _stx83255_ _hd83275_))))
              (if (##pair? _g8325683264_)
                  (let* ((_hd8326183280_ (##car _g8325683264_))
                         (_hd83283_ _hd8326183280_))
                    (_K8326083277_ _hd83283_))
                  (_else8325883272_)))
            (if (gx#identifier? _stx83255_)
                (let* ((_id83285_ (gx#syntax-local-unwrap _stx83255_))
                       (_eid83287_ (gx#stx-e _id83285_))
                       (_marks83289_ (gx#stx-identifier-marks* _id83285_)))
                  (let* ((_marks8329183299_ _marks83289_)
                         (_else8329383307_ (lambda () _eid83287_))
                         (_K8329583312_
                          (lambda (_hd83310_) (cons _eid83287_ _hd83310_))))
                    (if (##pair? _marks8329183299_)
                        (let* ((_hd8329683315_ (##car _marks8329183299_))
                               (_hd83318_ _hd8329683315_))
                          (_K8329583312_ _hd83318_))
                        (_else8329383307_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx83255_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_ctx83200_ _phi83201_)
        (letrec ((_make-phi83203_
                  (lambda (_super83253_)
                    (let ((__obj85813
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj85813
                       (gensym 'phi)
                       _super83253_)
                      __obj85813)))
                 (_make-phi/up83204_
                  (lambda (_ctx83248_ _super83249_)
                    (let ((_ctx+183251_ (_make-phi83203_ _super83249_)))
                      (##unchecked-structure-set!
                       _ctx83248_
                       _ctx+183251_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+183251_
                       _ctx83248_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+183251_)))
                 (_make-phi/down83205_
                  (lambda (_ctx83243_ _super83244_)
                    (let ((_ctx-183246_ (_make-phi83203_ _super83244_)))
                      (##unchecked-structure-set!
                       _ctx-183246_
                       _ctx83243_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx83243_
                       _ctx-183246_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-183246_)))
                 (_shift83206_
                  (lambda (_ctx83227_
                           _delta83228_
                           _make-delta-context83229_
                           _phi83230_
                           _K83231_)
                    (let ((_$e83233_
                           (##unchecked-structure-ref
                            _ctx83227_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e83233_
                          ((lambda (_super83236_)
                             (let* ((_super83238_
                                     (_K83231_ _super83236_ _delta83228_))
                                    (_ctx+d83240_
                                     (_make-delta-context83229_
                                      _ctx83227_
                                      _super83238_)))
                               (_K83231_
                                _ctx+d83240_
                                (fx- _phi83230_ _delta83228_))))
                           _$e83233_)
                          (error '"Bad context" _ctx83227_))))))
          (let _K83208_ ((_ctx83210_ _ctx83200_) (_phi83211_ _phi83201_))
            (if (fxzero? _phi83211_)
                _ctx83210_
                (if (##structure-instance-of? _ctx83210_ 'gx#context-phi::t)
                    (if (fxpositive? _phi83211_)
                        (let ((_$e83213_
                               (##unchecked-structure-ref
                                _ctx83210_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e83213_
                              ((lambda (_g8321583217_)
                                 (_K83208_ _g8321583217_ (fx- _phi83211_ '1)))
                               _$e83213_)
                              (_shift83206_
                               _ctx83210_
                               '1
                               _make-phi/up83204_
                               _phi83211_
                               _K83208_)))
                        (let ((_$e83220_
                               (##unchecked-structure-ref
                                _ctx83210_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e83220_
                              ((lambda (_g8322283224_)
                                 (_K83208_ _g8322283224_ (fx+ _phi83211_ '1)))
                               _$e83220_)
                              (_shift83206_
                               _ctx83210_
                               '-1
                               _make-phi/down83205_
                               _phi83211_
                               _K83208_))))
                    _ctx83210_))))))
    (define gx#core-context-get
      (lambda (_ctx83197_ _key83198_)
        (hash-get
         (##unchecked-structure-ref _ctx83197_ '2 gx#expander-context::t '#f)
         _key83198_)))
    (define gx#core-context-put!
      (lambda (_ctx83193_ _key83194_ _val83195_)
        (hash-put!
         (##unchecked-structure-ref _ctx83193_ '2 gx#expander-context::t '#f)
         _key83194_
         _val83195_)))
    (define gx#core-context-resolve
      (lambda (_ctx83180_ _key83181_)
        (let _lp83183_ ((_ctx83185_ _ctx83180_))
          (let ((_$e83187_ (gx#core-context-get _ctx83185_ _key83181_)))
            (if _$e83187_
                (values _$e83187_)
                (let ((_$e83190_
                       (if (##structure-instance-of?
                            _ctx83185_
                            'gx#context-phi::t)
                           (##unchecked-structure-ref
                            _ctx83185_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e83190_ (_lp83183_ _$e83190_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx83170_ _key83171_ _val83172_ _rebind83173_)
        (let ((_$e83175_ (gx#core-context-get _ctx83170_ _key83171_)))
          (if _$e83175_
              ((lambda (_xval83178_)
                 (gx#core-context-put!
                  _ctx83170_
                  _key83171_
                  (_rebind83173_ _xval83178_)))
               _$e83175_)
              (gx#core-context-put! _ctx83170_ _key83171_ _val83172_)))))
    (define gx#core-context-top__%
      (lambda (_ctx83148_ _stop?83149_)
        (let _lp83151_ ((_ctx83153_ _ctx83148_))
          (if (_stop?83149_ _ctx83153_)
              _ctx83153_
              (if (##structure-instance-of? _ctx83153_ 'gx#context-phi::t)
                  (_lp83151_
                   (##unchecked-structure-ref
                    _ctx83153_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx83159_ (gx#current-expander-context))
               (_stop?83161_ gx#top-context?))
          (gx#core-context-top__% _ctx83159_ _stop?83161_))))
    (define gx#core-context-top__1
      (lambda (_ctx83163_)
        (let ((_stop?83165_ gx#top-context?))
          (gx#core-context-top__% _ctx83163_ _stop?83165_))))
    (define gx#core-context-top
      (lambda _g85844_
        (let ((_g85843_ (##length _g85844_)))
          (cond ((##fx= _g85843_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g85844_))
                ((##fx= _g85843_ 1)
                 (apply (lambda (_ctx83163_)
                          (gx#core-context-top__1 _ctx83163_))
                        _g85844_))
                ((##fx= _g85843_ 2)
                 (apply (lambda (_ctx83167_ _stop?83168_)
                          (gx#core-context-top__% _ctx83167_ _stop?83168_))
                        _g85844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g85844_))))))
    (define gx#core-context-root__%
      (lambda (_ctx83133_)
        (let _lp83135_ ((_ctx83137_ _ctx83133_))
          (if (##structure-instance-of? _ctx83137_ 'gx#context-phi::t)
              (_lp83135_
               (##unchecked-structure-ref _ctx83137_ '3 gx#phi-context::t '#f))
              _ctx83137_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx83143_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx83143_))))
    (define gx#core-context-root
      (lambda _g85846_
        (let ((_g85845_ (##length _g85846_)))
          (cond ((##fx= _g85845_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g85846_))
                ((##fx= _g85845_ 1)
                 (apply (lambda (_ctx83145_)
                          (gx#core-context-root__% _ctx83145_))
                        _g85846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g85846_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx83114_ . __8311183115_)
        (let ((_$e83118_ (gx#current-expander-allow-rebind?)))
          (if _$e83118_
              _$e83118_
              (if (##structure-instance-of? _ctx83114_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx83114_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx83114_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx83125_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx83125_))))
    (define gx#core-context-rebind?
      (lambda _g85848_
        (let ((_g85847_ (##length _g85848_)))
          (cond ((##fx= _g85847_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g85848_))
                ((##fx= _g85847_ 1)
                 (apply (lambda (_ctx83127_)
                          (gx#core-context-rebind?__% _ctx83127_))
                        _g85848_))
                ((##fx>= _g85847_ 1)
                 (apply gx#core-context-rebind?__% _g85848_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g85848_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx83097_)
        (let ((_$e83099_ (gx#core-context-top__1 _ctx83097_)))
          (if _$e83099_
              ((lambda (_ctx83102_)
                 (if (##structure-instance-of?
                      _ctx83102_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx83102_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e83099_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx83108_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx83108_))))
    (define gx#core-context-namespace
      (lambda _g85850_
        (let ((_g85849_ (##length _g85850_)))
          (cond ((##fx= _g85849_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g85850_))
                ((##fx= _g85849_ 1)
                 (apply (lambda (_ctx83110_)
                          (gx#core-context-namespace__% _ctx83110_))
                        _g85850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g85850_))))))
    (define gx#expander-binding?__%
      (lambda (_bind83083_ _is?83084_)
        (if (##structure-direct-instance-of? _bind83083_ 'gx#syntax-binding::t)
            (_is?83084_
             (##unchecked-structure-ref
              _bind83083_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind83089_)
        (let ((_is?83091_ gx#expander?))
          (gx#expander-binding?__% _bind83089_ _is?83091_))))
    (define gx#expander-binding?
      (lambda _g85852_
        (let ((_g85851_ (##length _g85852_)))
          (cond ((##fx= _g85851_ 1)
                 (apply (lambda (_bind83089_)
                          (gx#expander-binding?__0 _bind83089_))
                        _g85852_))
                ((##fx= _g85851_ 2)
                 (apply (lambda (_bind83093_ _is?83094_)
                          (gx#expander-binding?__% _bind83093_ _is?83094_))
                        _g85852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g85852_))))))
    (define gx#core-expander-binding?
      (lambda (_bind83080_)
        (gx#expander-binding?__% _bind83080_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind83078_)
        (gx#expander-binding?__% _bind83078_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind83072_)
        (letrec ((_direct-special-form?83074_
                  (lambda (_obj83076_)
                    (##structure-direct-instance-of?
                     _obj83076_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind83072_ _direct-special-form?83074_))))
    (define gx#special-form-binding?
      (lambda (_bind83070_)
        (gx#expander-binding?__% _bind83070_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind83061_)
        (letrec ((_feature?83063_
                  (lambda (_e83065_)
                    (let ((_$e83067_
                           (##structure-instance-of?
                            _e83065_
                            'gx#feature-expander::t)))
                      (if _$e83067_
                          _$e83067_
                          (##structure-instance-of?
                           _e83065_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind83061_ _feature?83063_))))
    (define gx#private-feature-binding?
      (lambda (_bind83059_)
        (gx#expander-binding?__% _bind83059_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id83046_ _bound?83047_)
        (if (gx#identifier? _id83046_)
            (_bound?83047_ (gx#resolve-identifier__0 _id83046_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id83052_)
        (let ((_bound?83054_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id83052_ _bound?83054_))))
    (define gx#core-bound-identifier?
      (lambda _g85854_
        (let ((_g85853_ (##length _g85854_)))
          (cond ((##fx= _g85853_ 1)
                 (apply (lambda (_id83052_)
                          (gx#core-bound-identifier?__0 _id83052_))
                        _g85854_))
                ((##fx= _g85853_ 2)
                 (apply (lambda (_id83056_ _bound?83057_)
                          (gx#core-bound-identifier?__%
                           _id83056_
                           _bound?83057_))
                        _g85854_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g85854_))))))
    (define gx#core-identifier=?
      (lambda (_x83036_ _y83037_)
        (letrec ((_y=?83039_
                  (lambda (_xid83043_)
                    ((if (list? _y83037_) memq eq?) _xid83043_ _y83037_))))
          (let ((_bind83041_ (gx#resolve-identifier__0 _x83036_)))
            (if (##structure-instance-of? _bind83041_ 'gx#binding::t)
                (_y=?83039_
                 (##unchecked-structure-ref _bind83041_ '1 gx#binding::t '#f))
                (_y=?83039_ (gx#stx-e _x83036_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e83034_)
        (if (interned-symbol? _e83034_)
            (string-index__0 (symbol->string _e83034_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx82989_ _src82990_ _ctx82991_ _marks82992_)
        (if (##structure? _stx82989_)
            (let ((_$e82994_ (gx#sealed-syntax-unwrap _stx82989_)))
              (if _$e82994_
                  (values _$e82994_)
                  (if (gx#identifier? _stx82989_)
                      (let ((_id82997_
                             (gx#stx-unwrap__% _stx82989_ _marks82992_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id82997_ '1 gx#AST::t '#f)
                         (let ((_$e82999_
                                (##unchecked-structure-ref
                                 _id82997_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e82999_ _$e82999_ _src82990_))
                         _ctx82991_
                         (##unchecked-structure-ref
                          _id82997_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx82989_)
                       (let ((_$e83002_ (gx#stx-source _stx82989_)))
                         (if _$e83002_ _$e83002_ _src82990_))
                       _ctx82991_
                       (reverse _marks82992_)))))
            (##structure
             gx#syntax-quote::t
             _stx82989_
             _src82990_
             _ctx82991_
             (reverse _marks82992_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx83008_)
        (let* ((_src83010_ '#f)
               (_ctx83012_ (gx#current-expander-context))
               (_marks83014_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83008_
           _src83010_
           _ctx83012_
           _marks83014_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx83016_ _src83017_)
        (let* ((_ctx83019_ (gx#current-expander-context))
               (_marks83021_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83016_
           _src83017_
           _ctx83019_
           _marks83021_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx83023_ _src83024_ _ctx83025_)
        (let ((_marks83027_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83023_
           _src83024_
           _ctx83025_
           _marks83027_))))
    (define gx#core-quote-syntax
      (lambda _g85856_
        (let ((_g85855_ (##length _g85856_)))
          (cond ((##fx= _g85855_ 1)
                 (apply (lambda (_stx83008_)
                          (gx#core-quote-syntax__0 _stx83008_))
                        _g85856_))
                ((##fx= _g85855_ 2)
                 (apply (lambda (_stx83016_ _src83017_)
                          (gx#core-quote-syntax__1 _stx83016_ _src83017_))
                        _g85856_))
                ((##fx= _g85855_ 3)
                 (apply (lambda (_stx83023_ _src83024_ _ctx83025_)
                          (gx#core-quote-syntax__2
                           _stx83023_
                           _src83024_
                           _ctx83025_))
                        _g85856_))
                ((##fx= _g85855_ 4)
                 (apply (lambda (_stx83029_ _src83030_ _ctx83031_ _marks83032_)
                          (gx#core-quote-syntax__%
                           _stx83029_
                           _src83030_
                           _ctx83031_
                           _marks83032_))
                        _g85856_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g85856_))))))
    (define gx#core-cons
      (lambda (_hd82985_ _tl82986_)
        (cons (gx#core-quote-syntax__0 _hd82985_) _tl82986_)))
    (define gx#core-list
      (lambda (_hd82982_ . _rest82983_)
        (cons (gx#core-quote-syntax__0 _hd82982_) _rest82983_)))
    (define gx#core-cons*
      (lambda (_hd82979_ . _rest82980_)
        (apply cons* (gx#core-quote-syntax__0 _hd82979_) _rest82980_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path82953_ _rel82954_)
        (let ((_path82966_ (gx#stx-e _stx-path82953_))
              (_reldir82967_
               (let _lp82956_ ((_relsrc82958_
                                (let ((_$e82963_
                                       (gx#stx-source _stx-path82953_)))
                                  (if _$e82963_ _$e82963_ _rel82954_))))
                 (if (##structure-instance-of? _relsrc82958_ 'gerbil#AST::t)
                     (_lp82956_
                      (let ((_$e82960_ (gx#stx-source _relsrc82958_)))
                        (if _$e82960_ _$e82960_ (gx#stx-e _relsrc82958_))))
                     (if (source-location-path? _relsrc82958_)
                         (path-directory (source-location-path _relsrc82958_))
                         (if (string? _relsrc82958_)
                             (path-directory _relsrc82958_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path82966_ (path-normalize _reldir82967_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path82972_)
        (let ((_rel82974_ '#f))
          (gx#core-resolve-path__% _stx-path82972_ _rel82974_))))
    (define gx#core-resolve-path
      (lambda _g85858_
        (let ((_g85857_ (##length _g85858_)))
          (cond ((##fx= _g85857_ 1)
                 (apply (lambda (_stx-path82972_)
                          (gx#core-resolve-path__0 _stx-path82972_))
                        _g85858_))
                ((##fx= _g85857_ 2)
                 (apply (lambda (_stx-path82976_ _rel82977_)
                          (gx#core-resolve-path__% _stx-path82976_ _rel82977_))
                        _g85858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g85858_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr82909_ _ctx82910_)
        (let* ((_repr8291182918_ _repr82909_)
               (_E8291382922_
                (lambda () (error '"No clause matching" _repr8291182918_)))
               (_K8291482930_
                (lambda (_subs82925_ _phi82926_)
                  (let ((_subst82928_
                         (if (not (null? _subs82925_))
                             (list->hash-table-eq _subs82925_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst82928_
                     _ctx82910_
                     _phi82926_
                     '#f)))))
          (if (##pair? _repr8291182918_)
              (let ((_hd8291582933_ (##car _repr8291182918_))
                    (_tl8291682935_ (##cdr _repr8291182918_)))
                (let* ((_phi82938_ _hd8291582933_)
                       (_subs82940_ _tl8291682935_))
                  (_K8291482930_ _subs82940_ _phi82938_)))
              (_E8291382922_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr82945_)
        (let ((_ctx82947_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr82945_ _ctx82947_))))
    (define gx#core-deserialize-mark
      (lambda _g85860_
        (let ((_g85859_ (##length _g85860_)))
          (cond ((##fx= _g85859_ 1)
                 (apply (lambda (_repr82945_)
                          (gx#core-deserialize-mark__0 _repr82945_))
                        _g85860_))
                ((##fx= _g85859_ 2)
                 (apply (lambda (_repr82949_ _ctx82950_)
                          (gx#core-deserialize-mark__% _repr82949_ _ctx82950_))
                        _g85860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g85860_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx82906_)
        (gx#stx-rewrap _stx82906_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx82904_)
        (gx#stx-unwrap__% _stx82904_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx82874_)
        (let* ((_g8287582883_ (gx#current-expander-marks))
               (_else8287782891_ (lambda () _stx82874_))
               (_K8287982896_
                (lambda (_hd82894_) (gx#stx-apply-mark _stx82874_ _hd82894_))))
          (if (##pair? _g8287582883_)
              (let* ((_hd8288082899_ (##car _g8287582883_))
                     (_hd82902_ _hd8288082899_))
                (_K8287982896_ _hd82902_))
              (_else8287782891_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx82859_ _E82860_)
        (let ((_bind82862_ (gx#resolve-identifier__0 _stx82859_)))
          (if (##structure-direct-instance-of?
               _bind82862_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind82862_
               '4
               gx#syntax-binding::t
               '#f)
              (_E82860_ _stx82859_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx82867_)
        (let ((_E82869_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx82867_ _E82869_))))
    (define gx#syntax-local-e
      (lambda _g85862_
        (let ((_g85861_ (##length _g85862_)))
          (cond ((##fx= _g85861_ 1)
                 (apply (lambda (_stx82867_) (gx#syntax-local-e__0 _stx82867_))
                        _g85862_))
                ((##fx= _g85861_ 2)
                 (apply (lambda (_stx82871_ _E82872_)
                          (gx#syntax-local-e__% _stx82871_ _E82872_))
                        _g85862_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g85862_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx82843_ _E82844_)
        (let ((_e82846_ (gx#syntax-local-e__% _stx82843_ _E82844_)))
          (if (##structure-instance-of? _e82846_ 'gx#expander::t)
              (##structure-ref _e82846_ '1 gx#expander::t '#f)
              _e82846_))))
    (define gx#syntax-local-value__0
      (lambda (_stx82851_)
        (let ((_E82853_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx82851_ _E82853_))))
    (define gx#syntax-local-value
      (lambda _g85864_
        (let ((_g85863_ (##length _g85864_)))
          (cond ((##fx= _g85863_ 1)
                 (apply (lambda (_stx82851_)
                          (gx#syntax-local-value__0 _stx82851_))
                        _g85864_))
                ((##fx= _g85863_ 2)
                 (apply (lambda (_stx82855_ _E82856_)
                          (gx#syntax-local-value__% _stx82855_ _E82856_))
                        _g85864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g85864_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx82840_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx82840_)))))
