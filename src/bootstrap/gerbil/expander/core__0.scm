(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1710699091)
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
      (make-class-type
       'gx#expander-context::t
       'expander-context
       (list)
       '(id table)
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#expander-context? (make-class-predicate gx#expander-context::t))
    (define gx#make-expander-context
      (lambda _$args85684_
        (apply make-instance gx#expander-context::t _$args85684_)))
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
      (lambda _$args85681_
        (apply make-instance gx#root-context::t _$args85681_)))
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
      (lambda _$args85678_
        (apply make-instance gx#phi-context::t _$args85678_)))
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
      (lambda _$args85675_
        (apply make-instance gx#top-context::t _$args85675_)))
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
      (lambda _$args85672_
        (apply make-instance gx#module-context::t _$args85672_)))
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
      (lambda _$args85669_
        (apply make-instance gx#prelude-context::t _$args85669_)))
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
      (lambda _$args85666_
        (apply make-instance gx#local-context::t _$args85666_)))
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
      (lambda (_self85650_ _id85651_ _super85652_)
        (if (##fx< '3 (##structure-length _self85650_))
            (begin
              (##unchecked-structure-set!
               _self85650_
               _id85651_
               '1
               (##structure-type _self85650_)
               '#f)
              (##unchecked-structure-set!
               _self85650_
               (make-hash-table-eq)
               '2
               (##structure-type _self85650_)
               '#f)
              (##unchecked-structure-set!
               _self85650_
               _super85652_
               '3
               (##structure-type _self85650_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self85650_
                   '3
                   (##vector-length _self85650_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self85657_ _id85658_)
        (let ((_super85660_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self85657_ _id85658_ _super85660_))))
    (define gx#phi-context:::init!
      (lambda _g85727_
        (let ((_g85726_ (##length _g85727_)))
          (cond ((##fx= _g85726_ 2)
                 (apply (lambda (_self85657_ _id85658_)
                          (gx#phi-context:::init!__0 _self85657_ _id85658_))
                        _g85727_))
                ((##fx= _g85726_ 3)
                 (apply (lambda (_self85662_ _id85663_ _super85664_)
                          (gx#phi-context:::init!__%
                           _self85662_
                           _id85663_
                           _super85664_))
                        _g85727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g85727_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self85514_ _super85515_)
        (if (##fx< '3 (##structure-length _self85514_))
            (begin
              (##unchecked-structure-set!
               _self85514_
               (gensym 'L)
               '1
               (##structure-type _self85514_)
               '#f)
              (##unchecked-structure-set!
               _self85514_
               (make-hash-table-eq)
               '2
               (##structure-type _self85514_)
               '#f)
              (##unchecked-structure-set!
               _self85514_
               _super85515_
               '3
               (##structure-type _self85514_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self85514_
                   '3
                   (##vector-length _self85514_)))))
    (define gx#local-context:::init!__0
      (lambda (_self85520_)
        (let ((_super85522_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self85520_ _super85522_))))
    (define gx#local-context:::init!
      (lambda _g85729_
        (let ((_g85728_ (##length _g85729_)))
          (cond ((##fx= _g85728_ 1)
                 (apply (lambda (_self85520_)
                          (gx#local-context:::init!__0 _self85520_))
                        _g85729_))
                ((##fx= _g85728_ 2)
                 (apply (lambda (_self85524_ _super85525_)
                          (gx#local-context:::init!__%
                           _self85524_
                           _super85525_))
                        _g85729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g85729_))))))
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
      (lambda _$args85388_ (apply make-instance gx#binding::t _$args85388_)))
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
      (lambda _$args85385_
        (apply make-instance gx#runtime-binding::t _$args85385_)))
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
      (lambda _$args85382_
        (apply make-instance gx#local-binding::t _$args85382_)))
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
      (lambda _$args85379_
        (apply make-instance gx#top-binding::t _$args85379_)))
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
      (lambda _$args85376_
        (apply make-instance gx#module-binding::t _$args85376_)))
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
      (lambda _$args85373_
        (apply make-instance gx#extern-binding::t _$args85373_)))
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
      (lambda _$args85370_
        (apply make-instance gx#syntax-binding::t _$args85370_)))
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
      (lambda _$args85367_
        (apply make-instance gx#import-binding::t _$args85367_)))
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
      (lambda _$args85364_
        (apply make-instance gx#alias-binding::t _$args85364_)))
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
      (lambda _$args85361_ (apply make-instance gx#expander::t _$args85361_)))
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
      (lambda _$args85358_
        (apply make-instance gx#core-expander::t _$args85358_)))
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
      (lambda _$args85355_
        (apply make-instance gx#expression-form::t _$args85355_)))
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
      (lambda _$args85352_
        (apply make-instance gx#special-form::t _$args85352_)))
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
      (lambda _$args85349_
        (apply make-instance gx#definition-form::t _$args85349_)))
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
      (lambda _$args85346_
        (apply make-instance gx#top-special-form::t _$args85346_)))
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
      (lambda _$args85343_
        (apply make-instance gx#module-special-form::t _$args85343_)))
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
      (lambda _$args85340_
        (apply make-instance gx#feature-expander::t _$args85340_)))
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
      (lambda _$args85337_
        (apply make-instance gx#private-feature-expander::t _$args85337_)))
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
      (lambda _$args85334_
        (apply make-instance gx#reserved-expander::t _$args85334_)))
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
      (lambda _$args85331_
        (apply make-instance gx#macro-expander::t _$args85331_)))
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
      (lambda _$args85328_
        (apply make-instance gx#rename-macro-expander::t _$args85328_)))
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
      (lambda _$args85325_
        (apply make-instance gx#user-expander::t _$args85325_)))
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
      (lambda _$args85322_
        (apply make-instance gx#expander-mark::t _$args85322_)))
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
      (lambda (_ctx85307_ _message85308_ _stx85309_ . _details85310_)
        (let ((_ctx85320_
               (let ((_$e85312_ _ctx85307_))
                 (if _$e85312_
                     _$e85312_
                     (let ((_$e85315_ (gx#core-context-top__0)))
                       (if _$e85315_
                           ((lambda (_ctx85318_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx85318_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e85315_)
                           '#f))))))
          (raise (make-syntax-error
                  _message85308_
                  (cons _stx85309_ _details85310_)
                  _ctx85320_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx85294_ _expression?85295_)
        (gx#eval-syntax* (gx#core-expand__% _stx85294_ _expression?85295_))))
    (define gx#eval-syntax__0
      (lambda (_stx85300_)
        (let ((_expression?85302_ '#f))
          (gx#eval-syntax__% _stx85300_ _expression?85302_))))
    (define gx#eval-syntax
      (lambda _g85731_
        (let ((_g85730_ (##length _g85731_)))
          (cond ((##fx= _g85730_ 1)
                 (apply (lambda (_stx85300_) (gx#eval-syntax__0 _stx85300_))
                        _g85731_))
                ((##fx= _g85730_ 2)
                 (apply (lambda (_stx85304_ _expression?85305_)
                          (gx#eval-syntax__% _stx85304_ _expression?85305_))
                        _g85731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g85731_))))))
    (define gx#eval-syntax*
      (lambda (_stx85291_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx85291_))))
    (define gx#core-expand__%
      (lambda (_stx85278_ _expression?85279_)
        (if _expression?85279_
            (gx#core-expand-expression _stx85278_)
            (gx#core-expand-top _stx85278_))))
    (define gx#core-expand__0
      (lambda (_stx85284_)
        (let ((_expression?85286_ '#f))
          (gx#core-expand__% _stx85284_ _expression?85286_))))
    (define gx#core-expand
      (lambda _g85733_
        (let ((_g85732_ (##length _g85733_)))
          (cond ((##fx= _g85732_ 1)
                 (apply (lambda (_stx85284_) (gx#core-expand__0 _stx85284_))
                        _g85733_))
                ((##fx= _g85732_ 2)
                 (apply (lambda (_stx85288_ _expression?85289_)
                          (gx#core-expand__% _stx85288_ _expression?85289_))
                        _g85733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g85733_))))))
    (define gx#core-expand-top
      (lambda (_stx85245_)
        (let* ((_stx85247_ (gx#core-expand*__0 _stx85245_))
               (_e8524885255_ _stx85247_)
               (_E8525085259_
                (lambda () (gx#core-expand-expression _stx85247_)))
               (_E8524985273_
                (lambda ()
                  (if (gx#stx-pair? _e8524885255_)
                      (let ((_e8525185263_ (gx#syntax-e _e8524885255_)))
                        (let ((_hd8525285266_ (##car _e8525185263_))
                              (_tl8525385268_ (##cdr _e8525185263_)))
                          (let ((_form85271_ _hd8525285266_))
                            (if (gx#core-bound-identifier?__0 _form85271_)
                                _stx85247_
                                (_E8525085259_)))))
                      (_E8525085259_)))))
          (_E8524985273_))))
    (define gx#core-expand-expression
      (lambda (_stx85192_)
        (letrec ((_sealed-expression?85194_
                  (lambda (_hd85215_)
                    (if (gx#sealed-syntax? _hd85215_)
                        (let* ((_e8521685223_ _hd85215_)
                               (_E8521885227_ (lambda () '#f))
                               (_E8521785241_
                                (lambda ()
                                  (if (gx#stx-pair? _e8521685223_)
                                      (let ((_e8521985231_
                                             (gx#syntax-e _e8521685223_)))
                                        (let ((_hd8522085234_
                                               (##car _e8521985231_))
                                              (_tl8522185236_
                                               (##cdr _e8521985231_)))
                                          (let ((_form85239_ _hd8522085234_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form85239_
                                                 gx#expression-form-binding?)
                                                (_E8521885227_)))))
                                      (_E8521885227_)))))
                          (_E8521785241_))
                        '#f)))
                 (_illegal-expression85195_
                  (lambda (_hd85213_ . _g85734_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx85192_
                     _hd85213_)))
                 (_expand-e85196_
                  (lambda (_form85208_ _hd85209_)
                    (let ((_bind85211_
                           (if (##structure-instance-of?
                                _form85208_
                                'gx#binding::t)
                               _form85208_
                               (gx#resolve-identifier__0 _form85208_))))
                      (if (gx#core-expander-binding? _bind85211_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind85211_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd85209_
                            (gx#stx-source _stx85192_)))
                          (if (##structure-direct-instance-of?
                               _bind85211_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind85211_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd85209_
                                 (gx#stx-source _stx85192_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx85192_
                               _form85208_)))))))
          (let ((_hd85198_ (gx#core-expand-head _stx85192_)))
            (if (_sealed-expression?85194_ _hd85198_)
                _hd85198_
                (if (gx#stx-pair? _hd85198_)
                    (let* ((_form85200_ (gx#stx-car _hd85198_))
                           (_bind85202_
                            (if (gx#identifier? _form85200_)
                                (gx#resolve-identifier__0 _form85200_)
                                '#f)))
                      (if (or (not _bind85202_)
                              (not (gx#core-expander-binding? _bind85202_)))
                          (_expand-e85196_ '%%app (cons '%%app _hd85198_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind85202_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd85198_
                               _illegal-expression85195_)
                              (if (gx#expression-form-binding? _bind85202_)
                                  (_expand-e85196_ _bind85202_ _hd85198_)
                                  (if (gx#direct-special-form-binding?
                                       _bind85202_)
                                      (gx#core-expand-expression
                                       (_expand-e85196_ _bind85202_ _hd85198_))
                                      (_illegal-expression85195_
                                       _hd85198_))))))
                    (if (gx#core-bound-identifier?__0 _hd85198_)
                        (_illegal-expression85195_ _hd85198_)
                        (if (gx#identifier? _hd85198_)
                            (_expand-e85196_
                             '%%ref
                             (cons '%%ref (cons _hd85198_ '())))
                            (if (gx#stx-datum? _hd85198_)
                                (_expand-e85196_
                                 '%#quote
                                 (cons '%#quote (cons _hd85198_ '())))
                                (_illegal-expression85195_ _hd85198_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx85187_)
        (call-with-parameters
         (lambda ()
           (let ((_stx85190_ (gx#core-expand-expression _stx85187_)))
             (values _stx85190_ (gx#eval-syntax* _stx85190_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx85168_ _stop?85169_)
        (let _lp85171_ ((_stx85173_ _stx85168_))
          (if (_stop?85169_ _stx85173_)
              _stx85173_
              (let ((_rstx85175_ (gx#core-expand1 _stx85173_)))
                (if (eq? _stx85173_ _rstx85175_)
                    _stx85173_
                    (_lp85171_ _rstx85175_)))))))
    (define gx#core-expand*__0
      (lambda (_stx85180_)
        (let ((_stop?85182_ false))
          (gx#core-expand*__% _stx85180_ _stop?85182_))))
    (define gx#core-expand*
      (lambda _g85736_
        (let ((_g85735_ (##length _g85736_)))
          (cond ((##fx= _g85735_ 1)
                 (apply (lambda (_stx85180_) (gx#core-expand*__0 _stx85180_))
                        _g85736_))
                ((##fx= _g85735_ 2)
                 (apply (lambda (_stx85184_ _stop?85185_)
                          (gx#core-expand*__% _stx85184_ _stop?85185_))
                        _g85736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g85736_))))))
    (define gx#core-expand1
      (lambda (_stx85124_)
        (letrec ((_step85126_
                  (lambda (_hd85163_)
                    (let ((_bind85165_ (gx#resolve-identifier__0 _hd85163_)))
                      (if (##structure-instance-of?
                           _bind85165_
                           'gx#runtime-binding::t)
                          _stx85124_
                          (if (##structure-direct-instance-of?
                               _bind85165_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind85165_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx85124_)
                              (if (not _bind85165_)
                                  _stx85124_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx85124_))))))))
          (let* ((_e8512785135_ _stx85124_)
                 (_E8513385139_ (lambda () _stx85124_))
                 (_E8512985145_
                  (lambda ()
                    (let ((_hd85143_ _e8512785135_))
                      (if (gx#identifier? _hd85143_)
                          (_step85126_ _hd85143_)
                          (_E8513385139_)))))
                 (_E8512885159_
                  (lambda ()
                    (if (gx#stx-pair? _e8512785135_)
                        (let ((_e8513085149_ (gx#syntax-e _e8512785135_)))
                          (let ((_hd8513185152_ (##car _e8513085149_))
                                (_tl8513285154_ (##cdr _e8513085149_)))
                            (let ((_hd85157_ _hd8513185152_))
                              (if (gx#identifier? _hd85157_)
                                  (_step85126_ _hd85157_)
                                  (_E8512985145_)))))
                        (_E8512985145_)))))
            (_E8512885159_)))))
    (define gx#core-expand-head
      (lambda (_stx85090_)
        (letrec ((_stop?85092_
                  (lambda (_stx85094_)
                    (let* ((_e8509585102_ _stx85094_)
                           (_E8509785106_ (lambda () '#f))
                           (_E8509685120_
                            (lambda ()
                              (if (gx#stx-pair? _e8509585102_)
                                  (let ((_e8509885110_
                                         (gx#syntax-e _e8509585102_)))
                                    (let ((_hd8509985113_
                                           (##car _e8509885110_))
                                          (_tl8510085115_
                                           (##cdr _e8509885110_)))
                                      (let ((_hd85118_ _hd8509985113_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd85118_)
                                            (_E8509785106_)))))
                                  (_E8509785106_)))))
                      (_E8509685120_)))))
          (gx#core-expand*__% _stx85090_ _stop?85092_))))
    (define gx#core-expand-block__%
      (lambda (_stx84896_
               _expand-special84897_
               _begin-form84898_
               _expand-e84899_)
        (letrec ((_expand-splice84901_
                  (lambda (_hd85064_ _body85065_ _rest85066_ _r85067_)
                    (if (gx#stx-list? _body85065_)
                        (_K84905_
                         (gx#stx-foldr cons _rest85066_ _body85065_)
                         _r85067_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx84896_
                         _hd85064_))))
                 (_expand-cond-expand84902_
                  (lambda (_hd85060_ _rest85061_ _r85062_)
                    (_K84905_
                     (cons (gx#core-expand-cond-expand% _hd85060_) _rest85061_)
                     _r85062_)))
                 (_expand-include84903_
                  (lambda (_hd85009_ _rest85010_ _r85011_)
                    (let* ((_e8501285022_ _hd85009_)
                           (_E8501485026_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8501285022_)))
                           (_E8501385056_
                            (lambda ()
                              (if (gx#stx-pair? _e8501285022_)
                                  (let ((_e8501585030_
                                         (gx#syntax-e _e8501285022_)))
                                    (let ((_hd8501685033_
                                           (##car _e8501585030_))
                                          (_tl8501785035_
                                           (##cdr _e8501585030_)))
                                      (if (gx#stx-pair? _tl8501785035_)
                                          (let ((_e8501885038_
                                                 (gx#syntax-e _tl8501785035_)))
                                            (let ((_hd8501985041_
                                                   (##car _e8501885038_))
                                                  (_tl8502085043_
                                                   (##cdr _e8501885038_)))
                                              (let ((_path85046_
                                                     _hd8501985041_))
                                                (if (gx#stx-null?
                                                     _tl8502085043_)
                                                    (if (gx#stx-string?
                                                         _path85046_)
                                                        (let* ((_rpath85048_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path85046_
                         (gx#stx-source _hd85009_)))
                       (_block85050_
                        (gx#core-expand-include%__% _hd85009_ _rpath85048_))
                       (_rbody85053_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block85050_
                            _expand-special84897_
                            '#f
                            _expand-e84899_))
                         gx#current-expander-path
                         (cons _rpath85048_ (gx#current-expander-path)))))
                  (_K84905_ _rest85010_ (foldr1 cons _r85011_ _rbody85053_)))
                (_E8501485026_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8501485026_)))))
                                          (_E8501485026_))))
                                  (_E8501485026_)))))
                      (_E8501385056_))))
                 (_expand-expression84904_
                  (lambda (_hd85005_ _rest85006_ _r85007_)
                    (_K84905_
                     _rest85006_
                     (cons (_expand-e84899_ _hd85005_) _r85007_))))
                 (_K84905_
                  (lambda (_rest84935_ _r84936_)
                    (let* ((_e8493784944_ _rest84935_)
                           (_E8493984948_
                            (lambda ()
                              (if _begin-form84898_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form84898_
                                    (reverse _r84936_))
                                   (gx#stx-source _stx84896_))
                                  _r84936_)))
                           (_E8493885001_
                            (lambda ()
                              (if (gx#stx-pair? _e8493784944_)
                                  (let ((_e8494084952_
                                         (gx#syntax-e _e8493784944_)))
                                    (let ((_hd8494184955_
                                           (##car _e8494084952_))
                                          (_tl8494284957_
                                           (##cdr _e8494084952_)))
                                      (let* ((_hd84960_ _hd8494184955_)
                                             (_rest84962_ _tl8494284957_))
                                        (if '#t
                                            (let* ((_hd84964_
                                                    (gx#core-expand-head
                                                     _hd84960_))
                                                   (_e8496584972_ _hd84964_)
                                                   (_E8496784976_
                                                    (lambda ()
                                                      (_expand-expression84904_
                                                       _hd84964_
                                                       _rest84962_
                                                       _r84936_)))
                                                   (_E8496684997_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8496584972_)
                                                          (let ((_e8496884980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8496584972_)))
                    (let ((_hd8496984983_ (##car _e8496884980_))
                          (_tl8497084985_ (##cdr _e8496884980_)))
                      (let* ((_form84988_ _hd8496984983_)
                             (_body84990_ _tl8497084985_))
                        (if '#t
                            (let ((_bind84992_
                                   (if (gx#identifier? _form84988_)
                                       (gx#resolve-identifier__0 _form84988_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind84992_)
                                  (let ((_$e84994_
                                         (##unchecked-structure-ref
                                          _bind84992_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e84994_)
                                        (_expand-splice84901_
                                         _hd84964_
                                         _body84990_
                                         _rest84962_
                                         _r84936_)
                                        (if (eq? '%#cond-expand _$e84994_)
                                            (_expand-cond-expand84902_
                                             _hd84964_
                                             _rest84962_
                                             _r84936_)
                                            (if (eq? '%#include _$e84994_)
                                                (_expand-include84903_
                                                 _hd84964_
                                                 _rest84962_
                                                 _r84936_)
                                                (_expand-special84897_
                                                 _hd84964_
                                                 _K84905_
                                                 _rest84962_
                                                 _r84936_)))))
                                  (_expand-expression84904_
                                   _hd84964_
                                   _rest84962_
                                   _r84936_)))
                            (_E8496784976_)))))
                  (_E8496784976_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8496684997_))
                                            (_E8493984948_)))))
                                  (_E8493984948_)))))
                      (_E8493885001_)))))
          (let* ((_e8490684913_ _stx84896_)
                 (_E8490884917_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8490684913_)))
                 (_E8490784931_
                  (lambda ()
                    (if (gx#stx-pair? _e8490684913_)
                        (let ((_e8490984921_ (gx#syntax-e _e8490684913_)))
                          (let ((_hd8491084924_ (##car _e8490984921_))
                                (_tl8491184926_ (##cdr _e8490984921_)))
                            (let ((_body84929_ _tl8491184926_))
                              (if (gx#stx-list? _body84929_)
                                  (_K84905_ _body84929_ '())
                                  (_E8490884917_)))))
                        (_E8490884917_)))))
            (_E8490784931_)))))
    (define gx#core-expand-block__0
      (lambda (_stx85072_ _expand-special85073_)
        (let* ((_begin-form85075_ '%#begin)
               (_expand-e85077_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx85072_
           _expand-special85073_
           _begin-form85075_
           _expand-e85077_))))
    (define gx#core-expand-block__1
      (lambda (_stx85079_ _expand-special85080_ _begin-form85081_)
        (let ((_expand-e85083_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx85079_
           _expand-special85080_
           _begin-form85081_
           _expand-e85083_))))
    (define gx#core-expand-block
      (lambda _g85738_
        (let ((_g85737_ (##length _g85738_)))
          (cond ((##fx= _g85737_ 2)
                 (apply (lambda (_stx85072_ _expand-special85073_)
                          (gx#core-expand-block__0
                           _stx85072_
                           _expand-special85073_))
                        _g85738_))
                ((##fx= _g85737_ 3)
                 (apply (lambda (_stx85079_
                                 _expand-special85080_
                                 _begin-form85081_)
                          (gx#core-expand-block__1
                           _stx85079_
                           _expand-special85080_
                           _begin-form85081_))
                        _g85738_))
                ((##fx= _g85737_ 4)
                 (apply (lambda (_stx85085_
                                 _expand-special85086_
                                 _begin-form85087_
                                 _expand-e85088_)
                          (gx#core-expand-block__%
                           _stx85085_
                           _expand-special85086_
                           _begin-form85087_
                           _expand-e85088_))
                        _g85738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g85738_))))))
    (define gx#core-expand-block*
      (lambda (_stx84844_ _expand-special84845_)
        (let* ((_g8484684857_
                (gx#core-expand-block__1 _stx84844_ _expand-special84845_ '#f))
               (_E8485084861_
                (lambda () (error '"No clause matching" _g8484684857_))))
          (let ((_K8485584892_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx84844_)))
                (_K8485284878_ (lambda (_expr84876_) _expr84876_))
                (_K8485184867_
                 (lambda (_body84865_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body84865_))
                    (gx#stx-source _stx84844_)))))
            (let ((_try-match8484884888_
                   (lambda ()
                     (if (##pair? _g8484684857_)
                         (let ((_tl8485484883_ (##cdr _g8484684857_))
                               (_hd8485384881_ (##car _g8484684857_)))
                           (if (##null? _tl8485484883_)
                               (let ((_expr84886_ _hd8485384881_))
                                 (_K8485284878_ _expr84886_))
                               (let ((_body84870_ _g8484684857_))
                                 (_K8485184867_ _body84870_))))
                         (let ((_body84870_ _g8484684857_))
                           (_K8485184867_ _body84870_))))))
              (if (##null? _g8484684857_)
                  (_K8485584892_)
                  (_try-match8484884888_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx84672_)
        (letrec ((_satisfied?84674_
                  (lambda (_condition84772_)
                    (let* ((_e8477384788_ _condition84772_)
                           (_E8478384792_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8477384788_)))
                           (_E8477684811_
                            (lambda ()
                              (if (gx#stx-pair? _e8477384788_)
                                  (let ((_e8478484796_
                                         (gx#syntax-e _e8477384788_)))
                                    (let ((_hd8478584799_
                                           (##car _e8478484796_))
                                          (_tl8478684801_
                                           (##cdr _e8478484796_)))
                                      (let* ((_combinator84804_ _hd8478584799_)
                                             (_body84806_ _tl8478684801_))
                                        (if (gx#stx-list? _body84806_)
                                            (let ((_$e84808_
                                                   (gx#stx-e
                                                    _combinator84804_)))
                                              (if (eq? 'not _$e84808_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?84674_
                                                        _body84806_))
                                                  (if (eq? 'and _$e84808_)
                                                      (gx#stx-andmap
                                                       _satisfied?84674_
                                                       _body84806_)
                                                      (if (eq? 'or _$e84808_)
                                                          (gx#stx-ormap
                                                           _satisfied?84674_
                                                           _body84806_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e84808_)
                      (gx#stx-andmap gx#core-resolve-identifier _body84806_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx84672_
                       _combinator84804_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8478384792_)))))
                                  (_E8478384792_))))
                           (_E8477584834_
                            (lambda ()
                              (if (gx#stx-pair? _e8477384788_)
                                  (let ((_e8477784815_
                                         (gx#syntax-e _e8477384788_)))
                                    (let ((_hd8477884818_
                                           (##car _e8477784815_))
                                          (_tl8477984820_
                                           (##cdr _e8477784815_)))
                                      (if (and (gx#identifier? _hd8477884818_)
                                               (gx#core-identifier=?
                                                _hd8477884818_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8477984820_)
                                              (let ((_e8478084823_
                                                     (gx#syntax-e
                                                      _tl8477984820_)))
                                                (let ((_hd8478184826_
                                                       (##car _e8478084823_))
                                                      (_tl8478284828_
                                                       (##cdr _e8478084823_)))
                                                  (let ((_expr84831_
                                                         _hd8478184826_))
                                                    (if (gx#stx-null?
                                                         _tl8478284828_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr84831_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8477684811_))
                (_E8477684811_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8477684811_))
                                          (_E8477684811_))))
                                  (_E8477684811_))))
                           (_E8477484840_
                            (lambda ()
                              (let ((_id84838_ _e8477384788_))
                                (if (gx#identifier? _id84838_)
                                    (gx#core-bound-identifier?__%
                                     _id84838_
                                     gx#feature-binding?)
                                    (_E8477584834_))))))
                      (_E8477484840_))))
                 (_loop84675_
                  (lambda (_rest84705_)
                    (let* ((_e8470684714_ _rest84705_)
                           (_E8471284718_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8470684714_)))
                           (_E8470884722_
                            (lambda ()
                              (if (gx#stx-null? _e8470684714_)
                                  (if '#t '() (_E8471284718_))
                                  (_E8471284718_))))
                           (_E8470784768_
                            (lambda ()
                              (if (gx#stx-pair? _e8470684714_)
                                  (let ((_e8470984726_
                                         (gx#syntax-e _e8470684714_)))
                                    (let ((_hd8471084729_
                                           (##car _e8470984726_))
                                          (_tl8471184731_
                                           (##cdr _e8470984726_)))
                                      (let* ((_hd84734_ _hd8471084729_)
                                             (_rest84736_ _tl8471184731_))
                                        (if '#t
                                            (let* ((_e8473784744_ _hd84734_)
                                                   (_E8473984748_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8473784744_)))
                                                   (_E8473884764_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8473784744_)
                                                          (let ((_e8474084752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8473784744_)))
                    (let ((_hd8474184755_ (##car _e8474084752_))
                          (_tl8474284757_ (##cdr _e8474084752_)))
                      (let* ((_condition84760_ _hd8474184755_)
                             (_body84762_ _tl8474284757_))
                        (if '#t
                            (if (gx#stx-eq? _condition84760_ 'else)
                                (if (gx#stx-null? _rest84736_)
                                    _body84762_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx84672_
                                     _hd84734_))
                                (if (_satisfied?84674_ _condition84760_)
                                    _body84762_
                                    (_loop84675_ _rest84736_)))
                            (_E8473984748_)))))
                  (_E8473984748_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8473884764_))
                                            (_E8470884722_)))))
                                  (_E8470884722_)))))
                      (_E8470784768_)))))
          (let* ((_e8467684683_ _stx84672_)
                 (_E8467884687_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8467684683_)))
                 (_E8467784701_
                  (lambda ()
                    (if (gx#stx-pair? _e8467684683_)
                        (let ((_e8467984691_ (gx#syntax-e _e8467684683_)))
                          (let ((_hd8468084694_ (##car _e8467984691_))
                                (_tl8468184696_ (##cdr _e8467984691_)))
                            (let ((_clauses84699_ _tl8468184696_))
                              (if (gx#stx-list? _clauses84699_)
                                  (gx#core-cons
                                   'begin
                                   (_loop84675_ _clauses84699_))
                                  (_E8467884687_)))))
                        (_E8467884687_)))))
            (_E8467784701_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx84615_ _rpath84616_)
        (let* ((_e8461784627_ _stx84615_)
               (_E8461984631_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8461784627_)))
               (_E8461884658_
                (lambda ()
                  (if (gx#stx-pair? _e8461784627_)
                      (let ((_e8462084635_ (gx#syntax-e _e8461784627_)))
                        (let ((_hd8462184638_ (##car _e8462084635_))
                              (_tl8462284640_ (##cdr _e8462084635_)))
                          (if (gx#stx-pair? _tl8462284640_)
                              (let ((_e8462384643_
                                     (gx#syntax-e _tl8462284640_)))
                                (let ((_hd8462484646_ (##car _e8462384643_))
                                      (_tl8462584648_ (##cdr _e8462384643_)))
                                  (let ((_path84651_ _hd8462484646_))
                                    (if (gx#stx-null? _tl8462584648_)
                                        (if (gx#stx-string? _path84651_)
                                            (let ((_rpath84656_
                                                   (let ((_$e84653_
                                                          _rpath84616_))
                                                     (if _$e84653_
                                                         _$e84653_
                                                         (gx#core-resolve-path__%
                                                          _path84651_
                                                          (gx#stx-source
                                                           _stx84615_))))))
                                              (if (member _rpath84656_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx84615_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath84656_))
                                                    (gx#stx-source
                                                     _stx84615_)))))
                                            (_E8461984631_))
                                        (_E8461984631_)))))
                              (_E8461984631_))))
                      (_E8461984631_)))))
          (_E8461884658_))))
    (define gx#core-expand-include%__0
      (lambda (_stx84665_)
        (let ((_rpath84667_ '#f))
          (gx#core-expand-include%__% _stx84665_ _rpath84667_))))
    (define gx#core-expand-include%
      (lambda _g85740_
        (let ((_g85739_ (##length _g85740_)))
          (cond ((##fx= _g85739_ 1)
                 (apply (lambda (_stx84665_)
                          (gx#core-expand-include%__0 _stx84665_))
                        _g85740_))
                ((##fx= _g85739_ 2)
                 (apply (lambda (_stx84669_ _rpath84670_)
                          (gx#core-expand-include%__% _stx84669_ _rpath84670_))
                        _g85740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g85740_))))))
    (define gx#core-apply-expander__%
      (lambda (_K84584_ _stx84585_ _method84586_)
        (if (procedure? _K84584_)
            (let ((_$e84588_ (gx#stx-source _stx84585_)))
              (if _$e84588_
                  ((lambda (_g8459084592_)
                     (gx#stx-wrap-source (_K84584_ _stx84585_) _g8459084592_))
                   _$e84588_)
                  (_K84584_ _stx84585_)))
            (let ((_$e84595_ (bound-method-ref _K84584_ _method84586_)))
              (if _$e84595_
                  ((lambda (_g8459784599_)
                     (gx#core-apply-expander__%
                      _g8459784599_
                      _stx84585_
                      _method84586_))
                   _$e84595_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx84585_
                   _method84586_))))))
    (define gx#core-apply-expander__0
      (lambda (_K84605_ _stx84606_)
        (let ((_method84608_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K84605_ _stx84606_ _method84608_))))
    (define gx#core-apply-expander
      (lambda _g85742_
        (let ((_g85741_ (##length _g85742_)))
          (cond ((##fx= _g85741_ 2)
                 (apply (lambda (_K84605_ _stx84606_)
                          (gx#core-apply-expander__0 _K84605_ _stx84606_))
                        _g85742_))
                ((##fx= _g85741_ 3)
                 (apply (lambda (_K84610_ _stx84611_ _method84612_)
                          (gx#core-apply-expander__%
                           _K84610_
                           _stx84611_
                           _method84612_))
                        _g85742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g85742_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self84580_ _stx84581_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx84581_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self84433_ _stx84434_)
        (let* ((_self8443584441_ _self84433_)
               (_E8443784445_
                (lambda () (error '"No clause matching" _self8443584441_)))
               (_K8443884450_
                (lambda (_K84448_)
                  (gx#core-apply-expander__0 _K84448_ _stx84434_))))
          (if (##structure-instance-of? _self8443584441_ 'gx#core-macro::t)
              (let* ((_e8443984453_
                      (##unchecked-structure-ref
                       _self8443584441_
                       '1
                       gx#expander::t
                       '#f))
                     (_K84456_ _e8443984453_))
                (_K8443884450_ _K84456_))
              (_E8443784445_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self84286_ _stx84287_)
        (if (gx#sealed-syntax? _stx84287_)
            _stx84287_
            (let* ((_self8428884294_ _self84286_)
                   (_E8429084298_
                    (lambda () (error '"No clause matching" _self8428884294_)))
                   (_K8429184303_
                    (lambda (_K84301_)
                      (gx#core-apply-expander__0 _K84301_ _stx84287_))))
              (if (##structure-instance-of?
                   _self8428884294_
                   'gx#core-expander::t)
                  (let* ((_e8429284306_
                          (##unchecked-structure-ref
                           _self8428884294_
                           '1
                           gx#expander::t
                           '#f))
                         (_K84309_ _e8429284306_))
                    (_K8429184303_ _K84309_))
                  (_E8429084298_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self84148_ _stx84149_ _top?84150_)
        (if (_top?84150_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self84148_ _stx84149_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx84149_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self84155_ _stx84156_)
        (let ((_top?84158_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self84155_
           _stx84156_
           _top?84158_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g85744_
        (let ((_g85743_ (##length _g85744_)))
          (cond ((##fx= _g85743_ 2)
                 (apply (lambda (_self84155_ _stx84156_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self84155_
                           _stx84156_))
                        _g85744_))
                ((##fx= _g85743_ 3)
                 (apply (lambda (_self84160_ _stx84161_ _top?84162_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self84160_
                           _stx84161_
                           _top?84162_))
                        _g85744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g85744_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self84022_ _stx84023_)
        (gx#top-special-form::apply-macro-expander__%
         _self84022_
         _stx84023_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self83847_ _stx83848_)
        (let* ((_self8384983855_ _self83847_)
               (_E8385183859_
                (lambda () (error '"No clause matching" _self8384983855_)))
               (_K8385283892_
                (lambda (_id83862_)
                  (let* ((_e8386383870_ _stx83848_)
                         (_E8386583874_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8386383870_)))
                         (_E8386483888_
                          (lambda ()
                            (if (gx#stx-pair? _e8386383870_)
                                (let ((_e8386683878_
                                       (gx#syntax-e _e8386383870_)))
                                  (let ((_hd8386783881_ (##car _e8386683878_))
                                        (_tl8386883883_ (##cdr _e8386683878_)))
                                    (let ((_body83886_ _tl8386883883_))
                                      (if '#t
                                          (gx#core-cons _id83862_ _body83886_)
                                          (_E8386583874_)))))
                                (_E8386583874_)))))
                    (_E8386483888_)))))
          (if (##structure-instance-of?
               _self8384983855_
               'gx#rename-macro-expander::t)
              (let* ((_e8385383895_
                      (##unchecked-structure-ref
                       _self8384983855_
                       '1
                       gx#expander::t
                       '#f))
                     (_id83898_ _e8385383895_))
                (_K8385283892_ _id83898_))
              (_E8385183859_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self83673_ _stx83674_ _method83675_)
        (let* ((_self8367683684_ _self83673_)
               (_E8367883688_
                (lambda () (error '"No clause matching" _self8367683684_)))
               (_K8367983695_
                (lambda (_phi83691_ _ctx83692_ _K83693_)
                  (gx#core-apply-user-macro
                   _K83693_
                   _stx83674_
                   _ctx83692_
                   _phi83691_
                   _method83675_))))
          (if (##structure-instance-of? _self8367683684_ 'gx#macro-expander::t)
              (let* ((_e8368083698_
                      (##unchecked-structure-ref
                       _self8367683684_
                       '1
                       gx#expander::t
                       '#f))
                     (_K83701_ _e8368083698_)
                     (_e8368183703_
                      (##unchecked-structure-ref
                       _self8367683684_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx83706_ _e8368183703_)
                     (_e8368283708_
                      (##unchecked-structure-ref
                       _self8367683684_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi83711_ _e8368283708_))
                (_K8367983695_ _phi83711_ _ctx83706_ _K83701_))
              (_E8367883688_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self83716_ _stx83717_)
        (let ((_method83719_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self83716_
           _stx83717_
           _method83719_))))
    (define gx#core-apply-user-expander
      (lambda _g85746_
        (let ((_g85745_ (##length _g85746_)))
          (cond ((##fx= _g85745_ 2)
                 (apply (lambda (_self83716_ _stx83717_)
                          (gx#core-apply-user-expander__0
                           _self83716_
                           _stx83717_))
                        _g85746_))
                ((##fx= _g85745_ 3)
                 (apply (lambda (_self83721_ _stx83722_ _method83723_)
                          (gx#core-apply-user-expander__%
                           _self83721_
                           _stx83722_
                           _method83723_))
                        _g85746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g85746_))))))
    (define gx#core-apply-user-macro
      (lambda (_K83663_ _stx83664_ _ctx83665_ _phi83666_ _method83667_)
        (let ((_mark83669_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx83665_
                _phi83666_
                _stx83664_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K83663_
               (gx#stx-apply-mark _stx83664_ _mark83669_)
               _method83667_)
              _mark83669_))
           gx#current-expander-marks
           (cons _mark83669_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx83514_ _phi83515_ _ctx83516_)
        (let _lp83518_ ((_bind83520_
                         (gx#core-resolve-identifier__%
                          _stx83514_
                          _phi83515_
                          _ctx83516_)))
          (if (##structure-direct-instance-of?
               _bind83520_
               'gx#import-binding::t)
              (_lp83518_
               (##unchecked-structure-ref
                _bind83520_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind83520_
                   'gx#alias-binding::t)
                  (_lp83518_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind83520_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi83515_
                    _ctx83516_))
                  _bind83520_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx83525_)
        (let* ((_phi83527_ (gx#current-expander-phi))
               (_ctx83529_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx83525_ _phi83527_ _ctx83529_))))
    (define gx#resolve-identifier__1
      (lambda (_stx83531_ _phi83532_)
        (let ((_ctx83534_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx83531_ _phi83532_ _ctx83534_))))
    (define gx#resolve-identifier
      (lambda _g85748_
        (let ((_g85747_ (##length _g85748_)))
          (cond ((##fx= _g85747_ 1)
                 (apply (lambda (_stx83525_)
                          (gx#resolve-identifier__0 _stx83525_))
                        _g85748_))
                ((##fx= _g85747_ 2)
                 (apply (lambda (_stx83531_ _phi83532_)
                          (gx#resolve-identifier__1 _stx83531_ _phi83532_))
                        _g85748_))
                ((##fx= _g85747_ 3)
                 (apply (lambda (_stx83536_ _phi83537_ _ctx83538_)
                          (gx#resolve-identifier__%
                           _stx83536_
                           _phi83537_
                           _ctx83538_))
                        _g85748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g85748_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx83472_ _val83473_ _rebind?83474_ _phi83475_ _ctx83476_)
        (let ((_rebind?83478_
               (if (not _rebind?83474_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?83474_) _rebind?83474_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx83472_)
           _val83473_
           _rebind?83478_
           _phi83475_
           _ctx83476_))))
    (define gx#bind-identifier!__0
      (lambda (_stx83483_ _val83484_)
        (let* ((_rebind?83486_ '#f)
               (_phi83488_ (gx#current-expander-phi))
               (_ctx83490_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83483_
           _val83484_
           _rebind?83486_
           _phi83488_
           _ctx83490_))))
    (define gx#bind-identifier!__1
      (lambda (_stx83492_ _val83493_ _rebind?83494_)
        (let* ((_phi83496_ (gx#current-expander-phi))
               (_ctx83498_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83492_
           _val83493_
           _rebind?83494_
           _phi83496_
           _ctx83498_))))
    (define gx#bind-identifier!__2
      (lambda (_stx83500_ _val83501_ _rebind?83502_ _phi83503_)
        (let ((_ctx83505_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83500_
           _val83501_
           _rebind?83502_
           _phi83503_
           _ctx83505_))))
    (define gx#bind-identifier!
      (lambda _g85750_
        (let ((_g85749_ (##length _g85750_)))
          (cond ((##fx= _g85749_ 2)
                 (apply (lambda (_stx83483_ _val83484_)
                          (gx#bind-identifier!__0 _stx83483_ _val83484_))
                        _g85750_))
                ((##fx= _g85749_ 3)
                 (apply (lambda (_stx83492_ _val83493_ _rebind?83494_)
                          (gx#bind-identifier!__1
                           _stx83492_
                           _val83493_
                           _rebind?83494_))
                        _g85750_))
                ((##fx= _g85749_ 4)
                 (apply (lambda (_stx83500_
                                 _val83501_
                                 _rebind?83502_
                                 _phi83503_)
                          (gx#bind-identifier!__2
                           _stx83500_
                           _val83501_
                           _rebind?83502_
                           _phi83503_))
                        _g85750_))
                ((##fx= _g85749_ 5)
                 (apply (lambda (_stx83507_
                                 _val83508_
                                 _rebind?83509_
                                 _phi83510_
                                 _ctx83511_)
                          (gx#bind-identifier!__%
                           _stx83507_
                           _val83508_
                           _rebind?83509_
                           _phi83510_
                           _ctx83511_))
                        _g85750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g85750_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx83444_ _phi83445_ _ctx83446_)
        (let _lp83448_ ((_e83450_ _stx83444_)
                        (_marks83451_ (gx#current-expander-marks)))
          (if (symbol? _e83450_)
              (gx#core-resolve-binding
               _e83450_
               _phi83445_
               _phi83445_
               _ctx83446_
               (reverse _marks83451_))
              (if (gx#identifier-quote? _e83450_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e83450_ '1 gx#AST::t '#f)
                   _phi83445_
                   '0
                   (##unchecked-structure-ref
                    _e83450_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e83450_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e83450_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e83450_ '1 gx#AST::t '#f)
                       _phi83445_
                       _phi83445_
                       _ctx83446_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e83450_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks83451_))
                      (if (##structure-direct-instance-of?
                           _e83450_
                           'gx#syntax-wrap::t)
                          (_lp83448_
                           (##unchecked-structure-ref
                            _e83450_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e83450_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks83451_))
                          (if (##structure-instance-of?
                               _e83450_
                               'gerbil#AST::t)
                              (_lp83448_
                               (##unchecked-structure-ref
                                _e83450_
                                '1
                                gx#AST::t
                                '#f)
                               _marks83451_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx83444_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx83456_)
        (let* ((_phi83458_ (gx#current-expander-phi))
               (_ctx83460_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx83456_ _phi83458_ _ctx83460_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx83462_ _phi83463_)
        (let ((_ctx83465_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx83462_ _phi83463_ _ctx83465_))))
    (define gx#core-resolve-identifier
      (lambda _g85752_
        (let ((_g85751_ (##length _g85752_)))
          (cond ((##fx= _g85751_ 1)
                 (apply (lambda (_stx83456_)
                          (gx#core-resolve-identifier__0 _stx83456_))
                        _g85752_))
                ((##fx= _g85751_ 2)
                 (apply (lambda (_stx83462_ _phi83463_)
                          (gx#core-resolve-identifier__1
                           _stx83462_
                           _phi83463_))
                        _g85752_))
                ((##fx= _g85751_ 3)
                 (apply (lambda (_stx83467_ _phi83468_ _ctx83469_)
                          (gx#core-resolve-identifier__%
                           _stx83467_
                           _phi83468_
                           _ctx83469_))
                        _g85752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g85752_))))))
    (define gx#core-resolve-binding
      (lambda (_id83357_ _phi83358_ _src-phi83359_ _ctx83360_ _marks83361_)
        (letrec ((_resolve83363_
                  (lambda (_ctx83431_ _src-phi83432_ _key83433_)
                    (let _lp83435_ ((_ctx83437_
                                     (gx#core-context-shift
                                      _ctx83431_
                                      _phi83358_))
                                    (_dphi83438_
                                     (fx- _phi83358_ _src-phi83432_)))
                      (let ((_$e83440_
                             (gx#core-context-resolve _ctx83437_ _key83433_)))
                        (if _$e83440_
                            (values _$e83440_)
                            (if (fxzero? _dphi83438_)
                                '#f
                                (if (fxpositive? _dphi83438_)
                                    (_lp83435_
                                     (gx#core-context-shift _ctx83437_ '-1)
                                     (fx- _dphi83438_ '1))
                                    (_lp83435_
                                     (gx#core-context-shift _ctx83437_ '1)
                                     (fx+ _dphi83438_ '1))))))))))
          (let _lp83365_ ((_ctx83367_ _ctx83360_)
                          (_src-phi83368_ _src-phi83359_)
                          (_rest83369_ _marks83361_))
            (let* ((_rest8337083378_ _rest83369_)
                   (_else8337283386_
                    (lambda ()
                      (_resolve83363_ _ctx83367_ _src-phi83368_ _id83357_)))
                   (_K8337483419_
                    (lambda (_rest83389_ _hd83390_)
                      (let* ((_hd8339183397_ _hd83390_)
                             (_E8339383401_
                              (lambda ()
                                (error '"No clause matching" _hd8339183397_)))
                             (_K8339483411_
                              (lambda (_subst83404_)
                                (let ((_$e83408_
                                       (let ((_key83406_
                                              (if _subst83404_
                                                  (hash-get
                                                   _subst83404_
                                                   _id83357_)
                                                  '#f)))
                                         (if _key83406_
                                             (_resolve83363_
                                              _ctx83367_
                                              _src-phi83368_
                                              _key83406_)
                                             '#f))))
                                  (if _$e83408_
                                      _$e83408_
                                      (_lp83365_
                                       (##unchecked-structure-ref
                                        _hd83390_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd83390_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest83389_))))))
                        (if (##structure-instance-of?
                             _hd8339183397_
                             'gx#expander-mark::t)
                            (let* ((_e8339583414_
                                    (##unchecked-structure-ref
                                     _hd8339183397_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst83417_ _e8339583414_))
                              (_K8339483411_ _subst83417_))
                            (_E8339383401_))))))
              (if (##pair? _rest8337083378_)
                  (let ((_hd8337583422_ (##car _rest8337083378_))
                        (_tl8337683424_ (##cdr _rest8337083378_)))
                    (let* ((_hd83427_ _hd8337583422_)
                           (_rest83429_ _tl8337683424_))
                      (_K8337483419_ _rest83429_ _hd83427_)))
                  (_else8337283386_)))))))
    (define gx#core-bind!__%
      (lambda (_key83233_ _val83234_ _rebind?83235_ _phi83236_ _ctx83237_)
        (letrec ((_update-binding83239_
                  (lambda (_xval83310_)
                    (if (or (_rebind?83235_ _ctx83237_ _xval83310_ _val83234_)
                            (and (##structure-direct-instance-of?
                                  _xval83310_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval83310_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val83234_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val83234_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval83310_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val83234_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val83234_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval83310_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val83234_
                        (if (and (##structure-direct-instance-of?
                                  _val83234_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val83234_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval83310_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val83234_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval83310_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval83310_
                            (if (and (##structure-direct-instance-of?
                                      _val83234_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval83310_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key83233_
                                 (cons (##unchecked-structure-ref
                                        _val83234_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val83234_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval83310_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval83310_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval83310_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval83310_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key83233_
                                 _val83234_
                                 _xval83310_))))))
                 (_gensubst83240_
                  (lambda (_subst83305_ _id83306_)
                    (let ((_eid83308_
                           (gensym (if (uninterned-symbol? _id83306_)
                                       '%
                                       _id83306_))))
                      (hash-put! _subst83305_ _id83306_ _eid83308_)
                      _eid83308_)))
                 (_subst!83241_
                  (lambda (_key83243_)
                    (let* ((_key8324483252_ _key83243_)
                           (_else8324683260_ (lambda () _key83243_))
                           (_K8324883293_
                            (lambda (_mark83263_ _id83264_)
                              (let* ((_mark8326583271_ _mark83263_)
                                     (_E8326783275_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8326583271_)))
                                     (_K8326883285_
                                      (lambda (_subst83278_)
                                        (if (not _subst83278_)
                                            (let ((_subst83280_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark83263_
                                               _subst83280_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst83240_
                                               _subst83280_
                                               _id83264_))
                                            (let ((_$e83282_
                                                   (hash-get
                                                    _subst83278_
                                                    _id83264_)))
                                              (if _$e83282_
                                                  (values _$e83282_)
                                                  (_gensubst83240_
                                                   _subst83278_
                                                   _id83264_)))))))
                                (if (##structure-instance-of?
                                     _mark8326583271_
                                     'gx#expander-mark::t)
                                    (let* ((_e8326983288_
                                            (##unchecked-structure-ref
                                             _mark8326583271_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst83291_ _e8326983288_))
                                      (_K8326883285_ _subst83291_))
                                    (_E8326783275_))))))
                      (if (##pair? _key8324483252_)
                          (let ((_hd8324983296_ (##car _key8324483252_))
                                (_tl8325083298_ (##cdr _key8324483252_)))
                            (let* ((_id83301_ _hd8324983296_)
                                   (_mark83303_ _tl8325083298_))
                              (_K8324883293_ _mark83303_ _id83301_)))
                          (_else8324683260_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx83237_ _phi83236_)
           (_subst!83241_ _key83233_)
           _val83234_
           _update-binding83239_))))
    (define gx#core-bind!__0
      (lambda (_key83327_ _val83328_)
        (let* ((_rebind?83330_ false)
               (_phi83332_ (gx#current-expander-phi))
               (_ctx83334_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83327_
           _val83328_
           _rebind?83330_
           _phi83332_
           _ctx83334_))))
    (define gx#core-bind!__1
      (lambda (_key83336_ _val83337_ _rebind?83338_)
        (let* ((_phi83340_ (gx#current-expander-phi))
               (_ctx83342_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83336_
           _val83337_
           _rebind?83338_
           _phi83340_
           _ctx83342_))))
    (define gx#core-bind!__2
      (lambda (_key83344_ _val83345_ _rebind?83346_ _phi83347_)
        (let ((_ctx83349_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83344_
           _val83345_
           _rebind?83346_
           _phi83347_
           _ctx83349_))))
    (define gx#core-bind!
      (lambda _g85754_
        (let ((_g85753_ (##length _g85754_)))
          (cond ((##fx= _g85753_ 2)
                 (apply (lambda (_key83327_ _val83328_)
                          (gx#core-bind!__0 _key83327_ _val83328_))
                        _g85754_))
                ((##fx= _g85753_ 3)
                 (apply (lambda (_key83336_ _val83337_ _rebind?83338_)
                          (gx#core-bind!__1
                           _key83336_
                           _val83337_
                           _rebind?83338_))
                        _g85754_))
                ((##fx= _g85753_ 4)
                 (apply (lambda (_key83344_
                                 _val83345_
                                 _rebind?83346_
                                 _phi83347_)
                          (gx#core-bind!__2
                           _key83344_
                           _val83345_
                           _rebind?83346_
                           _phi83347_))
                        _g85754_))
                ((##fx= _g85753_ 5)
                 (apply (lambda (_key83351_
                                 _val83352_
                                 _rebind?83353_
                                 _phi83354_
                                 _ctx83355_)
                          (gx#core-bind!__%
                           _key83351_
                           _val83352_
                           _rebind?83353_
                           _phi83354_
                           _ctx83355_))
                        _g85754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g85754_))))))
    (define gx#core-identifier-key
      (lambda (_stx83167_)
        (if (symbol? _stx83167_)
            (let* ((_g8316883176_ (gx#current-expander-marks))
                   (_else8317083184_ (lambda () _stx83167_))
                   (_K8317283189_
                    (lambda (_hd83187_) (cons _stx83167_ _hd83187_))))
              (if (##pair? _g8316883176_)
                  (let* ((_hd8317383192_ (##car _g8316883176_))
                         (_hd83195_ _hd8317383192_))
                    (_K8317283189_ _hd83195_))
                  (_else8317083184_)))
            (if (gx#identifier? _stx83167_)
                (let* ((_id83197_ (gx#syntax-local-unwrap _stx83167_))
                       (_eid83199_ (gx#stx-e _id83197_))
                       (_marks83201_ (gx#stx-identifier-marks* _id83197_)))
                  (let* ((_marks8320383211_ _marks83201_)
                         (_else8320583219_ (lambda () _eid83199_))
                         (_K8320783224_
                          (lambda (_hd83222_) (cons _eid83199_ _hd83222_))))
                    (if (##pair? _marks8320383211_)
                        (let* ((_hd8320883227_ (##car _marks8320383211_))
                               (_hd83230_ _hd8320883227_))
                          (_K8320783224_ _hd83230_))
                        (_else8320583219_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx83167_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_ctx83112_ _phi83113_)
        (letrec ((_make-phi83115_
                  (lambda (_super83165_)
                    (let ((__obj85725
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj85725
                       (gensym 'phi)
                       _super83165_)
                      __obj85725)))
                 (_make-phi/up83116_
                  (lambda (_ctx83160_ _super83161_)
                    (let ((_ctx+183163_ (_make-phi83115_ _super83161_)))
                      (##unchecked-structure-set!
                       _ctx83160_
                       _ctx+183163_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+183163_
                       _ctx83160_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+183163_)))
                 (_make-phi/down83117_
                  (lambda (_ctx83155_ _super83156_)
                    (let ((_ctx-183158_ (_make-phi83115_ _super83156_)))
                      (##unchecked-structure-set!
                       _ctx-183158_
                       _ctx83155_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx83155_
                       _ctx-183158_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-183158_)))
                 (_shift83118_
                  (lambda (_ctx83139_
                           _delta83140_
                           _make-delta-context83141_
                           _phi83142_
                           _K83143_)
                    (let ((_$e83145_
                           (##unchecked-structure-ref
                            _ctx83139_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e83145_
                          ((lambda (_super83148_)
                             (let* ((_super83150_
                                     (_K83143_ _super83148_ _delta83140_))
                                    (_ctx+d83152_
                                     (_make-delta-context83141_
                                      _ctx83139_
                                      _super83150_)))
                               (_K83143_
                                _ctx+d83152_
                                (fx- _phi83142_ _delta83140_))))
                           _$e83145_)
                          (error '"Bad context" _ctx83139_))))))
          (let _K83120_ ((_ctx83122_ _ctx83112_) (_phi83123_ _phi83113_))
            (if (fxzero? _phi83123_)
                _ctx83122_
                (if (##structure-instance-of? _ctx83122_ 'gx#context-phi::t)
                    (if (fxpositive? _phi83123_)
                        (let ((_$e83125_
                               (##unchecked-structure-ref
                                _ctx83122_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e83125_
                              ((lambda (_g8312783129_)
                                 (_K83120_ _g8312783129_ (fx- _phi83123_ '1)))
                               _$e83125_)
                              (_shift83118_
                               _ctx83122_
                               '1
                               _make-phi/up83116_
                               _phi83123_
                               _K83120_)))
                        (let ((_$e83132_
                               (##unchecked-structure-ref
                                _ctx83122_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e83132_
                              ((lambda (_g8313483136_)
                                 (_K83120_ _g8313483136_ (fx+ _phi83123_ '1)))
                               _$e83132_)
                              (_shift83118_
                               _ctx83122_
                               '-1
                               _make-phi/down83117_
                               _phi83123_
                               _K83120_))))
                    _ctx83122_))))))
    (define gx#core-context-get
      (lambda (_ctx83109_ _key83110_)
        (hash-get
         (##unchecked-structure-ref _ctx83109_ '2 gx#expander-context::t '#f)
         _key83110_)))
    (define gx#core-context-put!
      (lambda (_ctx83105_ _key83106_ _val83107_)
        (hash-put!
         (##unchecked-structure-ref _ctx83105_ '2 gx#expander-context::t '#f)
         _key83106_
         _val83107_)))
    (define gx#core-context-resolve
      (lambda (_ctx83092_ _key83093_)
        (let _lp83095_ ((_ctx83097_ _ctx83092_))
          (let ((_$e83099_ (gx#core-context-get _ctx83097_ _key83093_)))
            (if _$e83099_
                (values _$e83099_)
                (let ((_$e83102_
                       (if (##structure-instance-of?
                            _ctx83097_
                            'gx#context-phi::t)
                           (##unchecked-structure-ref
                            _ctx83097_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e83102_ (_lp83095_ _$e83102_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx83082_ _key83083_ _val83084_ _rebind83085_)
        (let ((_$e83087_ (gx#core-context-get _ctx83082_ _key83083_)))
          (if _$e83087_
              ((lambda (_xval83090_)
                 (gx#core-context-put!
                  _ctx83082_
                  _key83083_
                  (_rebind83085_ _xval83090_)))
               _$e83087_)
              (gx#core-context-put! _ctx83082_ _key83083_ _val83084_)))))
    (define gx#core-context-top__%
      (lambda (_ctx83060_ _stop?83061_)
        (let _lp83063_ ((_ctx83065_ _ctx83060_))
          (if (_stop?83061_ _ctx83065_)
              _ctx83065_
              (if (##structure-instance-of? _ctx83065_ 'gx#context-phi::t)
                  (_lp83063_
                   (##unchecked-structure-ref
                    _ctx83065_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx83071_ (gx#current-expander-context))
               (_stop?83073_ gx#top-context?))
          (gx#core-context-top__% _ctx83071_ _stop?83073_))))
    (define gx#core-context-top__1
      (lambda (_ctx83075_)
        (let ((_stop?83077_ gx#top-context?))
          (gx#core-context-top__% _ctx83075_ _stop?83077_))))
    (define gx#core-context-top
      (lambda _g85756_
        (let ((_g85755_ (##length _g85756_)))
          (cond ((##fx= _g85755_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g85756_))
                ((##fx= _g85755_ 1)
                 (apply (lambda (_ctx83075_)
                          (gx#core-context-top__1 _ctx83075_))
                        _g85756_))
                ((##fx= _g85755_ 2)
                 (apply (lambda (_ctx83079_ _stop?83080_)
                          (gx#core-context-top__% _ctx83079_ _stop?83080_))
                        _g85756_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g85756_))))))
    (define gx#core-context-root__%
      (lambda (_ctx83045_)
        (let _lp83047_ ((_ctx83049_ _ctx83045_))
          (if (##structure-instance-of? _ctx83049_ 'gx#context-phi::t)
              (_lp83047_
               (##unchecked-structure-ref _ctx83049_ '3 gx#phi-context::t '#f))
              _ctx83049_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx83055_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx83055_))))
    (define gx#core-context-root
      (lambda _g85758_
        (let ((_g85757_ (##length _g85758_)))
          (cond ((##fx= _g85757_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g85758_))
                ((##fx= _g85757_ 1)
                 (apply (lambda (_ctx83057_)
                          (gx#core-context-root__% _ctx83057_))
                        _g85758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g85758_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx83026_ . __8302383027_)
        (let ((_$e83030_ (gx#current-expander-allow-rebind?)))
          (if _$e83030_
              _$e83030_
              (if (##structure-instance-of? _ctx83026_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx83026_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx83026_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx83037_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx83037_))))
    (define gx#core-context-rebind?
      (lambda _g85760_
        (let ((_g85759_ (##length _g85760_)))
          (cond ((##fx= _g85759_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g85760_))
                ((##fx= _g85759_ 1)
                 (apply (lambda (_ctx83039_)
                          (gx#core-context-rebind?__% _ctx83039_))
                        _g85760_))
                ((##fx>= _g85759_ 1)
                 (apply gx#core-context-rebind?__% _g85760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g85760_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx83009_)
        (let ((_$e83011_ (gx#core-context-top__1 _ctx83009_)))
          (if _$e83011_
              ((lambda (_ctx83014_)
                 (if (##structure-instance-of?
                      _ctx83014_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx83014_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e83011_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx83020_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx83020_))))
    (define gx#core-context-namespace
      (lambda _g85762_
        (let ((_g85761_ (##length _g85762_)))
          (cond ((##fx= _g85761_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g85762_))
                ((##fx= _g85761_ 1)
                 (apply (lambda (_ctx83022_)
                          (gx#core-context-namespace__% _ctx83022_))
                        _g85762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g85762_))))))
    (define gx#expander-binding?__%
      (lambda (_bind82995_ _is?82996_)
        (if (##structure-direct-instance-of? _bind82995_ 'gx#syntax-binding::t)
            (_is?82996_
             (##unchecked-structure-ref
              _bind82995_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind83001_)
        (let ((_is?83003_ gx#expander?))
          (gx#expander-binding?__% _bind83001_ _is?83003_))))
    (define gx#expander-binding?
      (lambda _g85764_
        (let ((_g85763_ (##length _g85764_)))
          (cond ((##fx= _g85763_ 1)
                 (apply (lambda (_bind83001_)
                          (gx#expander-binding?__0 _bind83001_))
                        _g85764_))
                ((##fx= _g85763_ 2)
                 (apply (lambda (_bind83005_ _is?83006_)
                          (gx#expander-binding?__% _bind83005_ _is?83006_))
                        _g85764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g85764_))))))
    (define gx#core-expander-binding?
      (lambda (_bind82992_)
        (gx#expander-binding?__% _bind82992_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind82990_)
        (gx#expander-binding?__% _bind82990_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind82984_)
        (letrec ((_direct-special-form?82986_
                  (lambda (_obj82988_)
                    (##structure-direct-instance-of?
                     _obj82988_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind82984_ _direct-special-form?82986_))))
    (define gx#special-form-binding?
      (lambda (_bind82982_)
        (gx#expander-binding?__% _bind82982_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind82973_)
        (letrec ((_feature?82975_
                  (lambda (_e82977_)
                    (let ((_$e82979_
                           (##structure-instance-of?
                            _e82977_
                            'gx#feature-expander::t)))
                      (if _$e82979_
                          _$e82979_
                          (##structure-instance-of?
                           _e82977_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind82973_ _feature?82975_))))
    (define gx#private-feature-binding?
      (lambda (_bind82971_)
        (gx#expander-binding?__% _bind82971_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id82958_ _bound?82959_)
        (if (gx#identifier? _id82958_)
            (_bound?82959_ (gx#resolve-identifier__0 _id82958_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id82964_)
        (let ((_bound?82966_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id82964_ _bound?82966_))))
    (define gx#core-bound-identifier?
      (lambda _g85766_
        (let ((_g85765_ (##length _g85766_)))
          (cond ((##fx= _g85765_ 1)
                 (apply (lambda (_id82964_)
                          (gx#core-bound-identifier?__0 _id82964_))
                        _g85766_))
                ((##fx= _g85765_ 2)
                 (apply (lambda (_id82968_ _bound?82969_)
                          (gx#core-bound-identifier?__%
                           _id82968_
                           _bound?82969_))
                        _g85766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g85766_))))))
    (define gx#core-identifier=?
      (lambda (_x82948_ _y82949_)
        (letrec ((_y=?82951_
                  (lambda (_xid82955_)
                    ((if (list? _y82949_) memq eq?) _xid82955_ _y82949_))))
          (let ((_bind82953_ (gx#resolve-identifier__0 _x82948_)))
            (if (##structure-instance-of? _bind82953_ 'gx#binding::t)
                (_y=?82951_
                 (##unchecked-structure-ref _bind82953_ '1 gx#binding::t '#f))
                (_y=?82951_ (gx#stx-e _x82948_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e82946_)
        (if (interned-symbol? _e82946_)
            (string-index__0 (symbol->string _e82946_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx82901_ _src82902_ _ctx82903_ _marks82904_)
        (if (##structure? _stx82901_)
            (let ((_$e82906_ (gx#sealed-syntax-unwrap _stx82901_)))
              (if _$e82906_
                  (values _$e82906_)
                  (if (gx#identifier? _stx82901_)
                      (let ((_id82909_
                             (gx#stx-unwrap__% _stx82901_ _marks82904_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id82909_ '1 gx#AST::t '#f)
                         (let ((_$e82911_
                                (##unchecked-structure-ref
                                 _id82909_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e82911_ _$e82911_ _src82902_))
                         _ctx82903_
                         (##unchecked-structure-ref
                          _id82909_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx82901_)
                       (let ((_$e82914_ (gx#stx-source _stx82901_)))
                         (if _$e82914_ _$e82914_ _src82902_))
                       _ctx82903_
                       (reverse _marks82904_)))))
            (##structure
             gx#syntax-quote::t
             _stx82901_
             _src82902_
             _ctx82903_
             (reverse _marks82904_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx82920_)
        (let* ((_src82922_ '#f)
               (_ctx82924_ (gx#current-expander-context))
               (_marks82926_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx82920_
           _src82922_
           _ctx82924_
           _marks82926_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx82928_ _src82929_)
        (let* ((_ctx82931_ (gx#current-expander-context))
               (_marks82933_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx82928_
           _src82929_
           _ctx82931_
           _marks82933_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx82935_ _src82936_ _ctx82937_)
        (let ((_marks82939_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx82935_
           _src82936_
           _ctx82937_
           _marks82939_))))
    (define gx#core-quote-syntax
      (lambda _g85768_
        (let ((_g85767_ (##length _g85768_)))
          (cond ((##fx= _g85767_ 1)
                 (apply (lambda (_stx82920_)
                          (gx#core-quote-syntax__0 _stx82920_))
                        _g85768_))
                ((##fx= _g85767_ 2)
                 (apply (lambda (_stx82928_ _src82929_)
                          (gx#core-quote-syntax__1 _stx82928_ _src82929_))
                        _g85768_))
                ((##fx= _g85767_ 3)
                 (apply (lambda (_stx82935_ _src82936_ _ctx82937_)
                          (gx#core-quote-syntax__2
                           _stx82935_
                           _src82936_
                           _ctx82937_))
                        _g85768_))
                ((##fx= _g85767_ 4)
                 (apply (lambda (_stx82941_ _src82942_ _ctx82943_ _marks82944_)
                          (gx#core-quote-syntax__%
                           _stx82941_
                           _src82942_
                           _ctx82943_
                           _marks82944_))
                        _g85768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g85768_))))))
    (define gx#core-cons
      (lambda (_hd82897_ _tl82898_)
        (cons (gx#core-quote-syntax__0 _hd82897_) _tl82898_)))
    (define gx#core-list
      (lambda (_hd82894_ . _rest82895_)
        (cons (gx#core-quote-syntax__0 _hd82894_) _rest82895_)))
    (define gx#core-cons*
      (lambda (_hd82891_ . _rest82892_)
        (apply cons* (gx#core-quote-syntax__0 _hd82891_) _rest82892_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path82865_ _rel82866_)
        (let ((_path82878_ (gx#stx-e _stx-path82865_))
              (_reldir82879_
               (let _lp82868_ ((_relsrc82870_
                                (let ((_$e82875_
                                       (gx#stx-source _stx-path82865_)))
                                  (if _$e82875_ _$e82875_ _rel82866_))))
                 (if (##structure-instance-of? _relsrc82870_ 'gerbil#AST::t)
                     (_lp82868_
                      (let ((_$e82872_ (gx#stx-source _relsrc82870_)))
                        (if _$e82872_ _$e82872_ (gx#stx-e _relsrc82870_))))
                     (if (source-location-path? _relsrc82870_)
                         (path-directory (source-location-path _relsrc82870_))
                         (if (string? _relsrc82870_)
                             (path-directory _relsrc82870_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path82878_ (path-normalize _reldir82879_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path82884_)
        (let ((_rel82886_ '#f))
          (gx#core-resolve-path__% _stx-path82884_ _rel82886_))))
    (define gx#core-resolve-path
      (lambda _g85770_
        (let ((_g85769_ (##length _g85770_)))
          (cond ((##fx= _g85769_ 1)
                 (apply (lambda (_stx-path82884_)
                          (gx#core-resolve-path__0 _stx-path82884_))
                        _g85770_))
                ((##fx= _g85769_ 2)
                 (apply (lambda (_stx-path82888_ _rel82889_)
                          (gx#core-resolve-path__% _stx-path82888_ _rel82889_))
                        _g85770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g85770_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr82821_ _ctx82822_)
        (let* ((_repr8282382830_ _repr82821_)
               (_E8282582834_
                (lambda () (error '"No clause matching" _repr8282382830_)))
               (_K8282682842_
                (lambda (_subs82837_ _phi82838_)
                  (let ((_subst82840_
                         (if (not (null? _subs82837_))
                             (list->hash-table-eq _subs82837_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst82840_
                     _ctx82822_
                     _phi82838_
                     '#f)))))
          (if (##pair? _repr8282382830_)
              (let ((_hd8282782845_ (##car _repr8282382830_))
                    (_tl8282882847_ (##cdr _repr8282382830_)))
                (let* ((_phi82850_ _hd8282782845_)
                       (_subs82852_ _tl8282882847_))
                  (_K8282682842_ _subs82852_ _phi82850_)))
              (_E8282582834_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr82857_)
        (let ((_ctx82859_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr82857_ _ctx82859_))))
    (define gx#core-deserialize-mark
      (lambda _g85772_
        (let ((_g85771_ (##length _g85772_)))
          (cond ((##fx= _g85771_ 1)
                 (apply (lambda (_repr82857_)
                          (gx#core-deserialize-mark__0 _repr82857_))
                        _g85772_))
                ((##fx= _g85771_ 2)
                 (apply (lambda (_repr82861_ _ctx82862_)
                          (gx#core-deserialize-mark__% _repr82861_ _ctx82862_))
                        _g85772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g85772_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx82818_)
        (gx#stx-rewrap _stx82818_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx82816_)
        (gx#stx-unwrap__% _stx82816_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx82786_)
        (let* ((_g8278782795_ (gx#current-expander-marks))
               (_else8278982803_ (lambda () _stx82786_))
               (_K8279182808_
                (lambda (_hd82806_) (gx#stx-apply-mark _stx82786_ _hd82806_))))
          (if (##pair? _g8278782795_)
              (let* ((_hd8279282811_ (##car _g8278782795_))
                     (_hd82814_ _hd8279282811_))
                (_K8279182808_ _hd82814_))
              (_else8278982803_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx82771_ _E82772_)
        (let ((_bind82774_ (gx#resolve-identifier__0 _stx82771_)))
          (if (##structure-direct-instance-of?
               _bind82774_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind82774_
               '4
               gx#syntax-binding::t
               '#f)
              (_E82772_ _stx82771_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx82779_)
        (let ((_E82781_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx82779_ _E82781_))))
    (define gx#syntax-local-e
      (lambda _g85774_
        (let ((_g85773_ (##length _g85774_)))
          (cond ((##fx= _g85773_ 1)
                 (apply (lambda (_stx82779_) (gx#syntax-local-e__0 _stx82779_))
                        _g85774_))
                ((##fx= _g85773_ 2)
                 (apply (lambda (_stx82783_ _E82784_)
                          (gx#syntax-local-e__% _stx82783_ _E82784_))
                        _g85774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g85774_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx82755_ _E82756_)
        (let ((_e82758_ (gx#syntax-local-e__% _stx82755_ _E82756_)))
          (if (##structure-instance-of? _e82758_ 'gx#expander::t)
              (##structure-ref _e82758_ '1 gx#expander::t '#f)
              _e82758_))))
    (define gx#syntax-local-value__0
      (lambda (_stx82763_)
        (let ((_E82765_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx82763_ _E82765_))))
    (define gx#syntax-local-value
      (lambda _g85776_
        (let ((_g85775_ (##length _g85776_)))
          (cond ((##fx= _g85775_ 1)
                 (apply (lambda (_stx82763_)
                          (gx#syntax-local-value__0 _stx82763_))
                        _g85776_))
                ((##fx= _g85775_ 2)
                 (apply (lambda (_stx82767_ _E82768_)
                          (gx#syntax-local-value__% _stx82767_ _E82768_))
                        _g85776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g85776_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx82752_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx82752_)))))
