(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1710833424)
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
      (lambda _$args86055_
        (apply make-instance gx#expander-context::t _$args86055_)))
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
      (lambda _$args86052_
        (apply make-instance gx#root-context::t _$args86052_)))
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
      (lambda _$args86049_
        (apply make-instance gx#phi-context::t _$args86049_)))
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
      (lambda _$args86046_
        (apply make-instance gx#top-context::t _$args86046_)))
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
      (lambda _$args86043_
        (apply make-instance gx#module-context::t _$args86043_)))
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
      (lambda _$args86040_
        (apply make-instance gx#prelude-context::t _$args86040_)))
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
      (lambda _$args86037_
        (apply make-instance gx#local-context::t _$args86037_)))
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
      (lambda (_self86021_ _id86022_ _super86023_)
        (if (##fx< '3 (##structure-length _self86021_))
            (begin
              (##unchecked-structure-set!
               _self86021_
               _id86022_
               '1
               (##structure-type _self86021_)
               '#f)
              (##unchecked-structure-set!
               _self86021_
               (make-hash-table-eq)
               '2
               (##structure-type _self86021_)
               '#f)
              (##unchecked-structure-set!
               _self86021_
               _super86023_
               '3
               (##structure-type _self86021_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self86021_
                   '3
                   (##vector-length _self86021_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self86028_ _id86029_)
        (let ((_super86031_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self86028_ _id86029_ _super86031_))))
    (define gx#phi-context:::init!
      (lambda _g86098_
        (let ((_g86097_ (##length _g86098_)))
          (cond ((##fx= _g86097_ 2)
                 (apply (lambda (_self86028_ _id86029_)
                          (gx#phi-context:::init!__0 _self86028_ _id86029_))
                        _g86098_))
                ((##fx= _g86097_ 3)
                 (apply (lambda (_self86033_ _id86034_ _super86035_)
                          (gx#phi-context:::init!__%
                           _self86033_
                           _id86034_
                           _super86035_))
                        _g86098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g86098_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self85885_ _super85886_)
        (if (##fx< '3 (##structure-length _self85885_))
            (begin
              (##unchecked-structure-set!
               _self85885_
               (gensym 'L)
               '1
               (##structure-type _self85885_)
               '#f)
              (##unchecked-structure-set!
               _self85885_
               (make-hash-table-eq)
               '2
               (##structure-type _self85885_)
               '#f)
              (##unchecked-structure-set!
               _self85885_
               _super85886_
               '3
               (##structure-type _self85885_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self85885_
                   '3
                   (##vector-length _self85885_)))))
    (define gx#local-context:::init!__0
      (lambda (_self85891_)
        (let ((_super85893_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self85891_ _super85893_))))
    (define gx#local-context:::init!
      (lambda _g86100_
        (let ((_g86099_ (##length _g86100_)))
          (cond ((##fx= _g86099_ 1)
                 (apply (lambda (_self85891_)
                          (gx#local-context:::init!__0 _self85891_))
                        _g86100_))
                ((##fx= _g86099_ 2)
                 (apply (lambda (_self85895_ _super85896_)
                          (gx#local-context:::init!__%
                           _self85895_
                           _super85896_))
                        _g86100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g86100_))))))
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
      (lambda _$args85759_ (apply make-instance gx#binding::t _$args85759_)))
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
      (lambda _$args85756_
        (apply make-instance gx#runtime-binding::t _$args85756_)))
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
      (lambda _$args85753_
        (apply make-instance gx#local-binding::t _$args85753_)))
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
      (lambda _$args85750_
        (apply make-instance gx#top-binding::t _$args85750_)))
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
      (lambda _$args85747_
        (apply make-instance gx#module-binding::t _$args85747_)))
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
      (lambda _$args85744_
        (apply make-instance gx#extern-binding::t _$args85744_)))
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
      (lambda _$args85741_
        (apply make-instance gx#syntax-binding::t _$args85741_)))
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
      (lambda _$args85738_
        (apply make-instance gx#import-binding::t _$args85738_)))
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
      (lambda _$args85735_
        (apply make-instance gx#alias-binding::t _$args85735_)))
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
      (lambda _$args85732_ (apply make-instance gx#expander::t _$args85732_)))
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
      (lambda _$args85729_
        (apply make-instance gx#core-expander::t _$args85729_)))
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
      (lambda _$args85726_
        (apply make-instance gx#expression-form::t _$args85726_)))
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
      (lambda _$args85723_
        (apply make-instance gx#special-form::t _$args85723_)))
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
      (lambda _$args85720_
        (apply make-instance gx#definition-form::t _$args85720_)))
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
      (lambda _$args85717_
        (apply make-instance gx#top-special-form::t _$args85717_)))
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
      (lambda _$args85714_
        (apply make-instance gx#module-special-form::t _$args85714_)))
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
      (lambda _$args85711_
        (apply make-instance gx#feature-expander::t _$args85711_)))
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
      (lambda _$args85708_
        (apply make-instance gx#private-feature-expander::t _$args85708_)))
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
      (lambda _$args85705_
        (apply make-instance gx#reserved-expander::t _$args85705_)))
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
      (lambda _$args85702_
        (apply make-instance gx#macro-expander::t _$args85702_)))
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
      (lambda _$args85699_
        (apply make-instance gx#rename-macro-expander::t _$args85699_)))
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
      (lambda _$args85696_
        (apply make-instance gx#user-expander::t _$args85696_)))
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
      (lambda _$args85693_
        (apply make-instance gx#expander-mark::t _$args85693_)))
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
      (lambda (_ctx85678_ _message85679_ _stx85680_ . _details85681_)
        (let ((_ctx85691_
               (let ((_$e85683_ _ctx85678_))
                 (if _$e85683_
                     _$e85683_
                     (let ((_$e85686_ (gx#core-context-top__0)))
                       (if _$e85686_
                           ((lambda (_ctx85689_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx85689_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e85686_)
                           '#f))))))
          (raise (make-syntax-error
                  _message85679_
                  (cons _stx85680_ _details85681_)
                  _ctx85691_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx85665_ _expression?85666_)
        (gx#eval-syntax* (gx#core-expand__% _stx85665_ _expression?85666_))))
    (define gx#eval-syntax__0
      (lambda (_stx85671_)
        (let ((_expression?85673_ '#f))
          (gx#eval-syntax__% _stx85671_ _expression?85673_))))
    (define gx#eval-syntax
      (lambda _g86102_
        (let ((_g86101_ (##length _g86102_)))
          (cond ((##fx= _g86101_ 1)
                 (apply (lambda (_stx85671_) (gx#eval-syntax__0 _stx85671_))
                        _g86102_))
                ((##fx= _g86101_ 2)
                 (apply (lambda (_stx85675_ _expression?85676_)
                          (gx#eval-syntax__% _stx85675_ _expression?85676_))
                        _g86102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g86102_))))))
    (define gx#eval-syntax*
      (lambda (_stx85662_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx85662_))))
    (define gx#core-expand__%
      (lambda (_stx85649_ _expression?85650_)
        (if _expression?85650_
            (gx#core-expand-expression _stx85649_)
            (gx#core-expand-top _stx85649_))))
    (define gx#core-expand__0
      (lambda (_stx85655_)
        (let ((_expression?85657_ '#f))
          (gx#core-expand__% _stx85655_ _expression?85657_))))
    (define gx#core-expand
      (lambda _g86104_
        (let ((_g86103_ (##length _g86104_)))
          (cond ((##fx= _g86103_ 1)
                 (apply (lambda (_stx85655_) (gx#core-expand__0 _stx85655_))
                        _g86104_))
                ((##fx= _g86103_ 2)
                 (apply (lambda (_stx85659_ _expression?85660_)
                          (gx#core-expand__% _stx85659_ _expression?85660_))
                        _g86104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g86104_))))))
    (define gx#core-expand-top
      (lambda (_stx85616_)
        (let* ((_stx85618_ (gx#core-expand*__0 _stx85616_))
               (_e8561985626_ _stx85618_)
               (_E8562185630_
                (lambda () (gx#core-expand-expression _stx85618_)))
               (_E8562085644_
                (lambda ()
                  (if (gx#stx-pair? _e8561985626_)
                      (let ((_e8562285634_ (gx#syntax-e _e8561985626_)))
                        (let ((_hd8562385637_ (##car _e8562285634_))
                              (_tl8562485639_ (##cdr _e8562285634_)))
                          (let ((_form85642_ _hd8562385637_))
                            (if (gx#core-bound-identifier?__0 _form85642_)
                                _stx85618_
                                (_E8562185630_)))))
                      (_E8562185630_)))))
          (_E8562085644_))))
    (define gx#core-expand-expression
      (lambda (_stx85563_)
        (letrec ((_sealed-expression?85565_
                  (lambda (_hd85586_)
                    (if (gx#sealed-syntax? _hd85586_)
                        (let* ((_e8558785594_ _hd85586_)
                               (_E8558985598_ (lambda () '#f))
                               (_E8558885612_
                                (lambda ()
                                  (if (gx#stx-pair? _e8558785594_)
                                      (let ((_e8559085602_
                                             (gx#syntax-e _e8558785594_)))
                                        (let ((_hd8559185605_
                                               (##car _e8559085602_))
                                              (_tl8559285607_
                                               (##cdr _e8559085602_)))
                                          (let ((_form85610_ _hd8559185605_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form85610_
                                                 gx#expression-form-binding?)
                                                (_E8558985598_)))))
                                      (_E8558985598_)))))
                          (_E8558885612_))
                        '#f)))
                 (_illegal-expression85566_
                  (lambda (_hd85584_ . _g86105_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx85563_
                     _hd85584_)))
                 (_expand-e85567_
                  (lambda (_form85579_ _hd85580_)
                    (let ((_bind85582_
                           (if (##structure-instance-of?
                                _form85579_
                                'gx#binding::t)
                               _form85579_
                               (gx#resolve-identifier__0 _form85579_))))
                      (if (gx#core-expander-binding? _bind85582_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind85582_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd85580_
                            (gx#stx-source _stx85563_)))
                          (if (##structure-direct-instance-of?
                               _bind85582_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind85582_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd85580_
                                 (gx#stx-source _stx85563_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx85563_
                               _form85579_)))))))
          (let ((_hd85569_ (gx#core-expand-head _stx85563_)))
            (if (_sealed-expression?85565_ _hd85569_)
                _hd85569_
                (if (gx#stx-pair? _hd85569_)
                    (let* ((_form85571_ (gx#stx-car _hd85569_))
                           (_bind85573_
                            (if (gx#identifier? _form85571_)
                                (gx#resolve-identifier__0 _form85571_)
                                '#f)))
                      (if (or (not _bind85573_)
                              (not (gx#core-expander-binding? _bind85573_)))
                          (_expand-e85567_ '%%app (cons '%%app _hd85569_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind85573_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd85569_
                               _illegal-expression85566_)
                              (if (gx#expression-form-binding? _bind85573_)
                                  (_expand-e85567_ _bind85573_ _hd85569_)
                                  (if (gx#direct-special-form-binding?
                                       _bind85573_)
                                      (gx#core-expand-expression
                                       (_expand-e85567_ _bind85573_ _hd85569_))
                                      (_illegal-expression85566_
                                       _hd85569_))))))
                    (if (gx#core-bound-identifier?__0 _hd85569_)
                        (_illegal-expression85566_ _hd85569_)
                        (if (gx#identifier? _hd85569_)
                            (_expand-e85567_
                             '%%ref
                             (cons '%%ref (cons _hd85569_ '())))
                            (if (gx#stx-datum? _hd85569_)
                                (_expand-e85567_
                                 '%#quote
                                 (cons '%#quote (cons _hd85569_ '())))
                                (_illegal-expression85566_ _hd85569_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx85558_)
        (call-with-parameters
         (lambda ()
           (let ((_stx85561_ (gx#core-expand-expression _stx85558_)))
             (values _stx85561_ (gx#eval-syntax* _stx85561_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx85539_ _stop?85540_)
        (let _lp85542_ ((_stx85544_ _stx85539_))
          (if (_stop?85540_ _stx85544_)
              _stx85544_
              (let ((_rstx85546_ (gx#core-expand1 _stx85544_)))
                (if (eq? _stx85544_ _rstx85546_)
                    _stx85544_
                    (_lp85542_ _rstx85546_)))))))
    (define gx#core-expand*__0
      (lambda (_stx85551_)
        (let ((_stop?85553_ false))
          (gx#core-expand*__% _stx85551_ _stop?85553_))))
    (define gx#core-expand*
      (lambda _g86107_
        (let ((_g86106_ (##length _g86107_)))
          (cond ((##fx= _g86106_ 1)
                 (apply (lambda (_stx85551_) (gx#core-expand*__0 _stx85551_))
                        _g86107_))
                ((##fx= _g86106_ 2)
                 (apply (lambda (_stx85555_ _stop?85556_)
                          (gx#core-expand*__% _stx85555_ _stop?85556_))
                        _g86107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g86107_))))))
    (define gx#core-expand1
      (lambda (_stx85495_)
        (letrec ((_step85497_
                  (lambda (_hd85534_)
                    (let ((_bind85536_ (gx#resolve-identifier__0 _hd85534_)))
                      (if (##structure-instance-of?
                           _bind85536_
                           'gx#runtime-binding::t)
                          _stx85495_
                          (if (##structure-direct-instance-of?
                               _bind85536_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind85536_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx85495_)
                              (if (not _bind85536_)
                                  _stx85495_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx85495_))))))))
          (let* ((_e8549885506_ _stx85495_)
                 (_E8550485510_ (lambda () _stx85495_))
                 (_E8550085516_
                  (lambda ()
                    (let ((_hd85514_ _e8549885506_))
                      (if (gx#identifier? _hd85514_)
                          (_step85497_ _hd85514_)
                          (_E8550485510_)))))
                 (_E8549985530_
                  (lambda ()
                    (if (gx#stx-pair? _e8549885506_)
                        (let ((_e8550185520_ (gx#syntax-e _e8549885506_)))
                          (let ((_hd8550285523_ (##car _e8550185520_))
                                (_tl8550385525_ (##cdr _e8550185520_)))
                            (let ((_hd85528_ _hd8550285523_))
                              (if (gx#identifier? _hd85528_)
                                  (_step85497_ _hd85528_)
                                  (_E8550085516_)))))
                        (_E8550085516_)))))
            (_E8549985530_)))))
    (define gx#core-expand-head
      (lambda (_stx85461_)
        (letrec ((_stop?85463_
                  (lambda (_stx85465_)
                    (let* ((_e8546685473_ _stx85465_)
                           (_E8546885477_ (lambda () '#f))
                           (_E8546785491_
                            (lambda ()
                              (if (gx#stx-pair? _e8546685473_)
                                  (let ((_e8546985481_
                                         (gx#syntax-e _e8546685473_)))
                                    (let ((_hd8547085484_
                                           (##car _e8546985481_))
                                          (_tl8547185486_
                                           (##cdr _e8546985481_)))
                                      (let ((_hd85489_ _hd8547085484_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd85489_)
                                            (_E8546885477_)))))
                                  (_E8546885477_)))))
                      (_E8546785491_)))))
          (gx#core-expand*__% _stx85461_ _stop?85463_))))
    (define gx#core-expand-block__%
      (lambda (_stx85267_
               _expand-special85268_
               _begin-form85269_
               _expand-e85270_)
        (letrec ((_expand-splice85272_
                  (lambda (_hd85435_ _body85436_ _rest85437_ _r85438_)
                    (if (gx#stx-list? _body85436_)
                        (_K85276_
                         (gx#stx-foldr cons _rest85437_ _body85436_)
                         _r85438_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx85267_
                         _hd85435_))))
                 (_expand-cond-expand85273_
                  (lambda (_hd85431_ _rest85432_ _r85433_)
                    (_K85276_
                     (cons (gx#core-expand-cond-expand% _hd85431_) _rest85432_)
                     _r85433_)))
                 (_expand-include85274_
                  (lambda (_hd85380_ _rest85381_ _r85382_)
                    (let* ((_e8538385393_ _hd85380_)
                           (_E8538585397_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8538385393_)))
                           (_E8538485427_
                            (lambda ()
                              (if (gx#stx-pair? _e8538385393_)
                                  (let ((_e8538685401_
                                         (gx#syntax-e _e8538385393_)))
                                    (let ((_hd8538785404_
                                           (##car _e8538685401_))
                                          (_tl8538885406_
                                           (##cdr _e8538685401_)))
                                      (if (gx#stx-pair? _tl8538885406_)
                                          (let ((_e8538985409_
                                                 (gx#syntax-e _tl8538885406_)))
                                            (let ((_hd8539085412_
                                                   (##car _e8538985409_))
                                                  (_tl8539185414_
                                                   (##cdr _e8538985409_)))
                                              (let ((_path85417_
                                                     _hd8539085412_))
                                                (if (gx#stx-null?
                                                     _tl8539185414_)
                                                    (if (gx#stx-string?
                                                         _path85417_)
                                                        (let* ((_rpath85419_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path85417_
                         (gx#stx-source _hd85380_)))
                       (_block85421_
                        (gx#core-expand-include%__% _hd85380_ _rpath85419_))
                       (_rbody85424_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block85421_
                            _expand-special85268_
                            '#f
                            _expand-e85270_))
                         gx#current-expander-path
                         (cons _rpath85419_ (gx#current-expander-path)))))
                  (_K85276_ _rest85381_ (foldr1 cons _r85382_ _rbody85424_)))
                (_E8538585397_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8538585397_)))))
                                          (_E8538585397_))))
                                  (_E8538585397_)))))
                      (_E8538485427_))))
                 (_expand-expression85275_
                  (lambda (_hd85376_ _rest85377_ _r85378_)
                    (_K85276_
                     _rest85377_
                     (cons (_expand-e85270_ _hd85376_) _r85378_))))
                 (_K85276_
                  (lambda (_rest85306_ _r85307_)
                    (let* ((_e8530885315_ _rest85306_)
                           (_E8531085319_
                            (lambda ()
                              (if _begin-form85269_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form85269_
                                    (reverse _r85307_))
                                   (gx#stx-source _stx85267_))
                                  _r85307_)))
                           (_E8530985372_
                            (lambda ()
                              (if (gx#stx-pair? _e8530885315_)
                                  (let ((_e8531185323_
                                         (gx#syntax-e _e8530885315_)))
                                    (let ((_hd8531285326_
                                           (##car _e8531185323_))
                                          (_tl8531385328_
                                           (##cdr _e8531185323_)))
                                      (let* ((_hd85331_ _hd8531285326_)
                                             (_rest85333_ _tl8531385328_))
                                        (if '#t
                                            (let* ((_hd85335_
                                                    (gx#core-expand-head
                                                     _hd85331_))
                                                   (_e8533685343_ _hd85335_)
                                                   (_E8533885347_
                                                    (lambda ()
                                                      (_expand-expression85275_
                                                       _hd85335_
                                                       _rest85333_
                                                       _r85307_)))
                                                   (_E8533785368_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8533685343_)
                                                          (let ((_e8533985351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8533685343_)))
                    (let ((_hd8534085354_ (##car _e8533985351_))
                          (_tl8534185356_ (##cdr _e8533985351_)))
                      (let* ((_form85359_ _hd8534085354_)
                             (_body85361_ _tl8534185356_))
                        (if '#t
                            (let ((_bind85363_
                                   (if (gx#identifier? _form85359_)
                                       (gx#resolve-identifier__0 _form85359_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind85363_)
                                  (let ((_$e85365_
                                         (##unchecked-structure-ref
                                          _bind85363_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e85365_)
                                        (_expand-splice85272_
                                         _hd85335_
                                         _body85361_
                                         _rest85333_
                                         _r85307_)
                                        (if (eq? '%#cond-expand _$e85365_)
                                            (_expand-cond-expand85273_
                                             _hd85335_
                                             _rest85333_
                                             _r85307_)
                                            (if (eq? '%#include _$e85365_)
                                                (_expand-include85274_
                                                 _hd85335_
                                                 _rest85333_
                                                 _r85307_)
                                                (_expand-special85268_
                                                 _hd85335_
                                                 _K85276_
                                                 _rest85333_
                                                 _r85307_)))))
                                  (_expand-expression85275_
                                   _hd85335_
                                   _rest85333_
                                   _r85307_)))
                            (_E8533885347_)))))
                  (_E8533885347_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8533785368_))
                                            (_E8531085319_)))))
                                  (_E8531085319_)))))
                      (_E8530985372_)))))
          (let* ((_e8527785284_ _stx85267_)
                 (_E8527985288_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8527785284_)))
                 (_E8527885302_
                  (lambda ()
                    (if (gx#stx-pair? _e8527785284_)
                        (let ((_e8528085292_ (gx#syntax-e _e8527785284_)))
                          (let ((_hd8528185295_ (##car _e8528085292_))
                                (_tl8528285297_ (##cdr _e8528085292_)))
                            (let ((_body85300_ _tl8528285297_))
                              (if (gx#stx-list? _body85300_)
                                  (_K85276_ _body85300_ '())
                                  (_E8527985288_)))))
                        (_E8527985288_)))))
            (_E8527885302_)))))
    (define gx#core-expand-block__0
      (lambda (_stx85443_ _expand-special85444_)
        (let* ((_begin-form85446_ '%#begin)
               (_expand-e85448_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx85443_
           _expand-special85444_
           _begin-form85446_
           _expand-e85448_))))
    (define gx#core-expand-block__1
      (lambda (_stx85450_ _expand-special85451_ _begin-form85452_)
        (let ((_expand-e85454_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx85450_
           _expand-special85451_
           _begin-form85452_
           _expand-e85454_))))
    (define gx#core-expand-block
      (lambda _g86109_
        (let ((_g86108_ (##length _g86109_)))
          (cond ((##fx= _g86108_ 2)
                 (apply (lambda (_stx85443_ _expand-special85444_)
                          (gx#core-expand-block__0
                           _stx85443_
                           _expand-special85444_))
                        _g86109_))
                ((##fx= _g86108_ 3)
                 (apply (lambda (_stx85450_
                                 _expand-special85451_
                                 _begin-form85452_)
                          (gx#core-expand-block__1
                           _stx85450_
                           _expand-special85451_
                           _begin-form85452_))
                        _g86109_))
                ((##fx= _g86108_ 4)
                 (apply (lambda (_stx85456_
                                 _expand-special85457_
                                 _begin-form85458_
                                 _expand-e85459_)
                          (gx#core-expand-block__%
                           _stx85456_
                           _expand-special85457_
                           _begin-form85458_
                           _expand-e85459_))
                        _g86109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g86109_))))))
    (define gx#core-expand-block*
      (lambda (_stx85215_ _expand-special85216_)
        (let* ((_g8521785228_
                (gx#core-expand-block__1 _stx85215_ _expand-special85216_ '#f))
               (_E8522185232_
                (lambda () (error '"No clause matching" _g8521785228_))))
          (let ((_K8522685263_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx85215_)))
                (_K8522385249_ (lambda (_expr85247_) _expr85247_))
                (_K8522285238_
                 (lambda (_body85236_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body85236_))
                    (gx#stx-source _stx85215_)))))
            (let ((_try-match8521985259_
                   (lambda ()
                     (if (##pair? _g8521785228_)
                         (let ((_tl8522585254_ (##cdr _g8521785228_))
                               (_hd8522485252_ (##car _g8521785228_)))
                           (if (##null? _tl8522585254_)
                               (let ((_expr85257_ _hd8522485252_))
                                 (_K8522385249_ _expr85257_))
                               (let ((_body85241_ _g8521785228_))
                                 (_K8522285238_ _body85241_))))
                         (let ((_body85241_ _g8521785228_))
                           (_K8522285238_ _body85241_))))))
              (if (##null? _g8521785228_)
                  (_K8522685263_)
                  (_try-match8521985259_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx85043_)
        (letrec ((_satisfied?85045_
                  (lambda (_condition85143_)
                    (let* ((_e8514485159_ _condition85143_)
                           (_E8515485163_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8514485159_)))
                           (_E8514785182_
                            (lambda ()
                              (if (gx#stx-pair? _e8514485159_)
                                  (let ((_e8515585167_
                                         (gx#syntax-e _e8514485159_)))
                                    (let ((_hd8515685170_
                                           (##car _e8515585167_))
                                          (_tl8515785172_
                                           (##cdr _e8515585167_)))
                                      (let* ((_combinator85175_ _hd8515685170_)
                                             (_body85177_ _tl8515785172_))
                                        (if (gx#stx-list? _body85177_)
                                            (let ((_$e85179_
                                                   (gx#stx-e
                                                    _combinator85175_)))
                                              (if (eq? 'not _$e85179_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?85045_
                                                        _body85177_))
                                                  (if (eq? 'and _$e85179_)
                                                      (gx#stx-andmap
                                                       _satisfied?85045_
                                                       _body85177_)
                                                      (if (eq? 'or _$e85179_)
                                                          (gx#stx-ormap
                                                           _satisfied?85045_
                                                           _body85177_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e85179_)
                      (gx#stx-andmap gx#core-resolve-identifier _body85177_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx85043_
                       _combinator85175_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8515485163_)))))
                                  (_E8515485163_))))
                           (_E8514685205_
                            (lambda ()
                              (if (gx#stx-pair? _e8514485159_)
                                  (let ((_e8514885186_
                                         (gx#syntax-e _e8514485159_)))
                                    (let ((_hd8514985189_
                                           (##car _e8514885186_))
                                          (_tl8515085191_
                                           (##cdr _e8514885186_)))
                                      (if (and (gx#identifier? _hd8514985189_)
                                               (gx#core-identifier=?
                                                _hd8514985189_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8515085191_)
                                              (let ((_e8515185194_
                                                     (gx#syntax-e
                                                      _tl8515085191_)))
                                                (let ((_hd8515285197_
                                                       (##car _e8515185194_))
                                                      (_tl8515385199_
                                                       (##cdr _e8515185194_)))
                                                  (let ((_expr85202_
                                                         _hd8515285197_))
                                                    (if (gx#stx-null?
                                                         _tl8515385199_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr85202_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8514785182_))
                (_E8514785182_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8514785182_))
                                          (_E8514785182_))))
                                  (_E8514785182_))))
                           (_E8514585211_
                            (lambda ()
                              (let ((_id85209_ _e8514485159_))
                                (if (gx#identifier? _id85209_)
                                    (gx#core-bound-identifier?__%
                                     _id85209_
                                     gx#feature-binding?)
                                    (_E8514685205_))))))
                      (_E8514585211_))))
                 (_loop85046_
                  (lambda (_rest85076_)
                    (let* ((_e8507785085_ _rest85076_)
                           (_E8508385089_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8507785085_)))
                           (_E8507985093_
                            (lambda ()
                              (if (gx#stx-null? _e8507785085_)
                                  (if '#t '() (_E8508385089_))
                                  (_E8508385089_))))
                           (_E8507885139_
                            (lambda ()
                              (if (gx#stx-pair? _e8507785085_)
                                  (let ((_e8508085097_
                                         (gx#syntax-e _e8507785085_)))
                                    (let ((_hd8508185100_
                                           (##car _e8508085097_))
                                          (_tl8508285102_
                                           (##cdr _e8508085097_)))
                                      (let* ((_hd85105_ _hd8508185100_)
                                             (_rest85107_ _tl8508285102_))
                                        (if '#t
                                            (let* ((_e8510885115_ _hd85105_)
                                                   (_E8511085119_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8510885115_)))
                                                   (_E8510985135_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8510885115_)
                                                          (let ((_e8511185123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8510885115_)))
                    (let ((_hd8511285126_ (##car _e8511185123_))
                          (_tl8511385128_ (##cdr _e8511185123_)))
                      (let* ((_condition85131_ _hd8511285126_)
                             (_body85133_ _tl8511385128_))
                        (if '#t
                            (if (gx#stx-eq? _condition85131_ 'else)
                                (if (gx#stx-null? _rest85107_)
                                    _body85133_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx85043_
                                     _hd85105_))
                                (if (_satisfied?85045_ _condition85131_)
                                    _body85133_
                                    (_loop85046_ _rest85107_)))
                            (_E8511085119_)))))
                  (_E8511085119_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8510985135_))
                                            (_E8507985093_)))))
                                  (_E8507985093_)))))
                      (_E8507885139_)))))
          (let* ((_e8504785054_ _stx85043_)
                 (_E8504985058_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8504785054_)))
                 (_E8504885072_
                  (lambda ()
                    (if (gx#stx-pair? _e8504785054_)
                        (let ((_e8505085062_ (gx#syntax-e _e8504785054_)))
                          (let ((_hd8505185065_ (##car _e8505085062_))
                                (_tl8505285067_ (##cdr _e8505085062_)))
                            (let ((_clauses85070_ _tl8505285067_))
                              (if (gx#stx-list? _clauses85070_)
                                  (gx#core-cons
                                   'begin
                                   (_loop85046_ _clauses85070_))
                                  (_E8504985058_)))))
                        (_E8504985058_)))))
            (_E8504885072_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx84986_ _rpath84987_)
        (let* ((_e8498884998_ _stx84986_)
               (_E8499085002_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8498884998_)))
               (_E8498985029_
                (lambda ()
                  (if (gx#stx-pair? _e8498884998_)
                      (let ((_e8499185006_ (gx#syntax-e _e8498884998_)))
                        (let ((_hd8499285009_ (##car _e8499185006_))
                              (_tl8499385011_ (##cdr _e8499185006_)))
                          (if (gx#stx-pair? _tl8499385011_)
                              (let ((_e8499485014_
                                     (gx#syntax-e _tl8499385011_)))
                                (let ((_hd8499585017_ (##car _e8499485014_))
                                      (_tl8499685019_ (##cdr _e8499485014_)))
                                  (let ((_path85022_ _hd8499585017_))
                                    (if (gx#stx-null? _tl8499685019_)
                                        (if (gx#stx-string? _path85022_)
                                            (let ((_rpath85027_
                                                   (let ((_$e85024_
                                                          _rpath84987_))
                                                     (if _$e85024_
                                                         _$e85024_
                                                         (gx#core-resolve-path__%
                                                          _path85022_
                                                          (gx#stx-source
                                                           _stx84986_))))))
                                              (if (member _rpath85027_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx84986_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath85027_))
                                                    (gx#stx-source
                                                     _stx84986_)))))
                                            (_E8499085002_))
                                        (_E8499085002_)))))
                              (_E8499085002_))))
                      (_E8499085002_)))))
          (_E8498985029_))))
    (define gx#core-expand-include%__0
      (lambda (_stx85036_)
        (let ((_rpath85038_ '#f))
          (gx#core-expand-include%__% _stx85036_ _rpath85038_))))
    (define gx#core-expand-include%
      (lambda _g86111_
        (let ((_g86110_ (##length _g86111_)))
          (cond ((##fx= _g86110_ 1)
                 (apply (lambda (_stx85036_)
                          (gx#core-expand-include%__0 _stx85036_))
                        _g86111_))
                ((##fx= _g86110_ 2)
                 (apply (lambda (_stx85040_ _rpath85041_)
                          (gx#core-expand-include%__% _stx85040_ _rpath85041_))
                        _g86111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g86111_))))))
    (define gx#core-apply-expander__%
      (lambda (_K84955_ _stx84956_ _method84957_)
        (if (procedure? _K84955_)
            (let ((_$e84959_ (gx#stx-source _stx84956_)))
              (if _$e84959_
                  ((lambda (_g8496184963_)
                     (gx#stx-wrap-source (_K84955_ _stx84956_) _g8496184963_))
                   _$e84959_)
                  (_K84955_ _stx84956_)))
            (let ((_$e84966_ (bound-method-ref _K84955_ _method84957_)))
              (if _$e84966_
                  ((lambda (_g8496884970_)
                     (gx#core-apply-expander__%
                      _g8496884970_
                      _stx84956_
                      _method84957_))
                   _$e84966_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx84956_
                   _method84957_))))))
    (define gx#core-apply-expander__0
      (lambda (_K84976_ _stx84977_)
        (let ((_method84979_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K84976_ _stx84977_ _method84979_))))
    (define gx#core-apply-expander
      (lambda _g86113_
        (let ((_g86112_ (##length _g86113_)))
          (cond ((##fx= _g86112_ 2)
                 (apply (lambda (_K84976_ _stx84977_)
                          (gx#core-apply-expander__0 _K84976_ _stx84977_))
                        _g86113_))
                ((##fx= _g86112_ 3)
                 (apply (lambda (_K84981_ _stx84982_ _method84983_)
                          (gx#core-apply-expander__%
                           _K84981_
                           _stx84982_
                           _method84983_))
                        _g86113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g86113_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self84951_ _stx84952_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx84952_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self84804_ _stx84805_)
        (let* ((_self8480684812_ _self84804_)
               (_E8480884816_
                (lambda () (error '"No clause matching" _self8480684812_)))
               (_K8480984821_
                (lambda (_K84819_)
                  (gx#core-apply-expander__0 _K84819_ _stx84805_))))
          (if (##structure-instance-of? _self8480684812_ 'gx#core-macro::t)
              (let* ((_e8481084824_
                      (##unchecked-structure-ref
                       _self8480684812_
                       '1
                       gx#expander::t
                       '#f))
                     (_K84827_ _e8481084824_))
                (_K8480984821_ _K84827_))
              (_E8480884816_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self84657_ _stx84658_)
        (if (gx#sealed-syntax? _stx84658_)
            _stx84658_
            (let* ((_self8465984665_ _self84657_)
                   (_E8466184669_
                    (lambda () (error '"No clause matching" _self8465984665_)))
                   (_K8466284674_
                    (lambda (_K84672_)
                      (gx#core-apply-expander__0 _K84672_ _stx84658_))))
              (if (##structure-instance-of?
                   _self8465984665_
                   'gx#core-expander::t)
                  (let* ((_e8466384677_
                          (##unchecked-structure-ref
                           _self8465984665_
                           '1
                           gx#expander::t
                           '#f))
                         (_K84680_ _e8466384677_))
                    (_K8466284674_ _K84680_))
                  (_E8466184669_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self84519_ _stx84520_ _top?84521_)
        (if (_top?84521_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self84519_ _stx84520_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx84520_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self84526_ _stx84527_)
        (let ((_top?84529_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self84526_
           _stx84527_
           _top?84529_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g86115_
        (let ((_g86114_ (##length _g86115_)))
          (cond ((##fx= _g86114_ 2)
                 (apply (lambda (_self84526_ _stx84527_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self84526_
                           _stx84527_))
                        _g86115_))
                ((##fx= _g86114_ 3)
                 (apply (lambda (_self84531_ _stx84532_ _top?84533_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self84531_
                           _stx84532_
                           _top?84533_))
                        _g86115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g86115_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self84393_ _stx84394_)
        (gx#top-special-form::apply-macro-expander__%
         _self84393_
         _stx84394_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self84218_ _stx84219_)
        (let* ((_self8422084226_ _self84218_)
               (_E8422284230_
                (lambda () (error '"No clause matching" _self8422084226_)))
               (_K8422384263_
                (lambda (_id84233_)
                  (let* ((_e8423484241_ _stx84219_)
                         (_E8423684245_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8423484241_)))
                         (_E8423584259_
                          (lambda ()
                            (if (gx#stx-pair? _e8423484241_)
                                (let ((_e8423784249_
                                       (gx#syntax-e _e8423484241_)))
                                  (let ((_hd8423884252_ (##car _e8423784249_))
                                        (_tl8423984254_ (##cdr _e8423784249_)))
                                    (let ((_body84257_ _tl8423984254_))
                                      (if '#t
                                          (gx#core-cons _id84233_ _body84257_)
                                          (_E8423684245_)))))
                                (_E8423684245_)))))
                    (_E8423584259_)))))
          (if (##structure-instance-of?
               _self8422084226_
               'gx#rename-macro-expander::t)
              (let* ((_e8422484266_
                      (##unchecked-structure-ref
                       _self8422084226_
                       '1
                       gx#expander::t
                       '#f))
                     (_id84269_ _e8422484266_))
                (_K8422384263_ _id84269_))
              (_E8422284230_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self84044_ _stx84045_ _method84046_)
        (let* ((_self8404784055_ _self84044_)
               (_E8404984059_
                (lambda () (error '"No clause matching" _self8404784055_)))
               (_K8405084066_
                (lambda (_phi84062_ _ctx84063_ _K84064_)
                  (gx#core-apply-user-macro
                   _K84064_
                   _stx84045_
                   _ctx84063_
                   _phi84062_
                   _method84046_))))
          (if (##structure-instance-of? _self8404784055_ 'gx#macro-expander::t)
              (let* ((_e8405184069_
                      (##unchecked-structure-ref
                       _self8404784055_
                       '1
                       gx#expander::t
                       '#f))
                     (_K84072_ _e8405184069_)
                     (_e8405284074_
                      (##unchecked-structure-ref
                       _self8404784055_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx84077_ _e8405284074_)
                     (_e8405384079_
                      (##unchecked-structure-ref
                       _self8404784055_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi84082_ _e8405384079_))
                (_K8405084066_ _phi84082_ _ctx84077_ _K84072_))
              (_E8404984059_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self84087_ _stx84088_)
        (let ((_method84090_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self84087_
           _stx84088_
           _method84090_))))
    (define gx#core-apply-user-expander
      (lambda _g86117_
        (let ((_g86116_ (##length _g86117_)))
          (cond ((##fx= _g86116_ 2)
                 (apply (lambda (_self84087_ _stx84088_)
                          (gx#core-apply-user-expander__0
                           _self84087_
                           _stx84088_))
                        _g86117_))
                ((##fx= _g86116_ 3)
                 (apply (lambda (_self84092_ _stx84093_ _method84094_)
                          (gx#core-apply-user-expander__%
                           _self84092_
                           _stx84093_
                           _method84094_))
                        _g86117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g86117_))))))
    (define gx#core-apply-user-macro
      (lambda (_K84034_ _stx84035_ _ctx84036_ _phi84037_ _method84038_)
        (let ((_mark84040_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx84036_
                _phi84037_
                _stx84035_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K84034_
               (gx#stx-apply-mark _stx84035_ _mark84040_)
               _method84038_)
              _mark84040_))
           gx#current-expander-marks
           (cons _mark84040_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx83885_ _phi83886_ _ctx83887_)
        (let _lp83889_ ((_bind83891_
                         (gx#core-resolve-identifier__%
                          _stx83885_
                          _phi83886_
                          _ctx83887_)))
          (if (##structure-direct-instance-of?
               _bind83891_
               'gx#import-binding::t)
              (_lp83889_
               (##unchecked-structure-ref
                _bind83891_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind83891_
                   'gx#alias-binding::t)
                  (_lp83889_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind83891_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi83886_
                    _ctx83887_))
                  _bind83891_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx83896_)
        (let* ((_phi83898_ (gx#current-expander-phi))
               (_ctx83900_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx83896_ _phi83898_ _ctx83900_))))
    (define gx#resolve-identifier__1
      (lambda (_stx83902_ _phi83903_)
        (let ((_ctx83905_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx83902_ _phi83903_ _ctx83905_))))
    (define gx#resolve-identifier
      (lambda _g86119_
        (let ((_g86118_ (##length _g86119_)))
          (cond ((##fx= _g86118_ 1)
                 (apply (lambda (_stx83896_)
                          (gx#resolve-identifier__0 _stx83896_))
                        _g86119_))
                ((##fx= _g86118_ 2)
                 (apply (lambda (_stx83902_ _phi83903_)
                          (gx#resolve-identifier__1 _stx83902_ _phi83903_))
                        _g86119_))
                ((##fx= _g86118_ 3)
                 (apply (lambda (_stx83907_ _phi83908_ _ctx83909_)
                          (gx#resolve-identifier__%
                           _stx83907_
                           _phi83908_
                           _ctx83909_))
                        _g86119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g86119_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx83843_ _val83844_ _rebind?83845_ _phi83846_ _ctx83847_)
        (let ((_rebind?83849_
               (if (not _rebind?83845_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?83845_) _rebind?83845_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx83843_)
           _val83844_
           _rebind?83849_
           _phi83846_
           _ctx83847_))))
    (define gx#bind-identifier!__0
      (lambda (_stx83854_ _val83855_)
        (let* ((_rebind?83857_ '#f)
               (_phi83859_ (gx#current-expander-phi))
               (_ctx83861_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83854_
           _val83855_
           _rebind?83857_
           _phi83859_
           _ctx83861_))))
    (define gx#bind-identifier!__1
      (lambda (_stx83863_ _val83864_ _rebind?83865_)
        (let* ((_phi83867_ (gx#current-expander-phi))
               (_ctx83869_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83863_
           _val83864_
           _rebind?83865_
           _phi83867_
           _ctx83869_))))
    (define gx#bind-identifier!__2
      (lambda (_stx83871_ _val83872_ _rebind?83873_ _phi83874_)
        (let ((_ctx83876_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83871_
           _val83872_
           _rebind?83873_
           _phi83874_
           _ctx83876_))))
    (define gx#bind-identifier!
      (lambda _g86121_
        (let ((_g86120_ (##length _g86121_)))
          (cond ((##fx= _g86120_ 2)
                 (apply (lambda (_stx83854_ _val83855_)
                          (gx#bind-identifier!__0 _stx83854_ _val83855_))
                        _g86121_))
                ((##fx= _g86120_ 3)
                 (apply (lambda (_stx83863_ _val83864_ _rebind?83865_)
                          (gx#bind-identifier!__1
                           _stx83863_
                           _val83864_
                           _rebind?83865_))
                        _g86121_))
                ((##fx= _g86120_ 4)
                 (apply (lambda (_stx83871_
                                 _val83872_
                                 _rebind?83873_
                                 _phi83874_)
                          (gx#bind-identifier!__2
                           _stx83871_
                           _val83872_
                           _rebind?83873_
                           _phi83874_))
                        _g86121_))
                ((##fx= _g86120_ 5)
                 (apply (lambda (_stx83878_
                                 _val83879_
                                 _rebind?83880_
                                 _phi83881_
                                 _ctx83882_)
                          (gx#bind-identifier!__%
                           _stx83878_
                           _val83879_
                           _rebind?83880_
                           _phi83881_
                           _ctx83882_))
                        _g86121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g86121_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx83815_ _phi83816_ _ctx83817_)
        (let _lp83819_ ((_e83821_ _stx83815_)
                        (_marks83822_ (gx#current-expander-marks)))
          (if (symbol? _e83821_)
              (gx#core-resolve-binding
               _e83821_
               _phi83816_
               _phi83816_
               _ctx83817_
               (reverse _marks83822_))
              (if (gx#identifier-quote? _e83821_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e83821_ '1 gx#AST::t '#f)
                   _phi83816_
                   '0
                   (##unchecked-structure-ref
                    _e83821_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e83821_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e83821_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e83821_ '1 gx#AST::t '#f)
                       _phi83816_
                       _phi83816_
                       _ctx83817_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e83821_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks83822_))
                      (if (##structure-direct-instance-of?
                           _e83821_
                           'gx#syntax-wrap::t)
                          (_lp83819_
                           (##unchecked-structure-ref
                            _e83821_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e83821_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks83822_))
                          (if (##structure-instance-of?
                               _e83821_
                               'gerbil#AST::t)
                              (_lp83819_
                               (##unchecked-structure-ref
                                _e83821_
                                '1
                                gx#AST::t
                                '#f)
                               _marks83822_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx83815_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx83827_)
        (let* ((_phi83829_ (gx#current-expander-phi))
               (_ctx83831_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx83827_ _phi83829_ _ctx83831_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx83833_ _phi83834_)
        (let ((_ctx83836_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx83833_ _phi83834_ _ctx83836_))))
    (define gx#core-resolve-identifier
      (lambda _g86123_
        (let ((_g86122_ (##length _g86123_)))
          (cond ((##fx= _g86122_ 1)
                 (apply (lambda (_stx83827_)
                          (gx#core-resolve-identifier__0 _stx83827_))
                        _g86123_))
                ((##fx= _g86122_ 2)
                 (apply (lambda (_stx83833_ _phi83834_)
                          (gx#core-resolve-identifier__1
                           _stx83833_
                           _phi83834_))
                        _g86123_))
                ((##fx= _g86122_ 3)
                 (apply (lambda (_stx83838_ _phi83839_ _ctx83840_)
                          (gx#core-resolve-identifier__%
                           _stx83838_
                           _phi83839_
                           _ctx83840_))
                        _g86123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g86123_))))))
    (define gx#core-resolve-binding
      (lambda (_id83728_ _phi83729_ _src-phi83730_ _ctx83731_ _marks83732_)
        (letrec ((_resolve83734_
                  (lambda (_ctx83802_ _src-phi83803_ _key83804_)
                    (let _lp83806_ ((_ctx83808_
                                     (gx#core-context-shift
                                      _ctx83802_
                                      _phi83729_))
                                    (_dphi83809_
                                     (fx- _phi83729_ _src-phi83803_)))
                      (let ((_$e83811_
                             (gx#core-context-resolve _ctx83808_ _key83804_)))
                        (if _$e83811_
                            (values _$e83811_)
                            (if (fxzero? _dphi83809_)
                                '#f
                                (if (fxpositive? _dphi83809_)
                                    (_lp83806_
                                     (gx#core-context-shift _ctx83808_ '-1)
                                     (fx- _dphi83809_ '1))
                                    (_lp83806_
                                     (gx#core-context-shift _ctx83808_ '1)
                                     (fx+ _dphi83809_ '1))))))))))
          (let _lp83736_ ((_ctx83738_ _ctx83731_)
                          (_src-phi83739_ _src-phi83730_)
                          (_rest83740_ _marks83732_))
            (let* ((_rest8374183749_ _rest83740_)
                   (_else8374383757_
                    (lambda ()
                      (_resolve83734_ _ctx83738_ _src-phi83739_ _id83728_)))
                   (_K8374583790_
                    (lambda (_rest83760_ _hd83761_)
                      (let* ((_hd8376283768_ _hd83761_)
                             (_E8376483772_
                              (lambda ()
                                (error '"No clause matching" _hd8376283768_)))
                             (_K8376583782_
                              (lambda (_subst83775_)
                                (let ((_$e83779_
                                       (let ((_key83777_
                                              (if _subst83775_
                                                  (hash-get
                                                   _subst83775_
                                                   _id83728_)
                                                  '#f)))
                                         (if _key83777_
                                             (_resolve83734_
                                              _ctx83738_
                                              _src-phi83739_
                                              _key83777_)
                                             '#f))))
                                  (if _$e83779_
                                      _$e83779_
                                      (_lp83736_
                                       (##unchecked-structure-ref
                                        _hd83761_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd83761_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest83760_))))))
                        (if (##structure-instance-of?
                             _hd8376283768_
                             'gx#expander-mark::t)
                            (let* ((_e8376683785_
                                    (##unchecked-structure-ref
                                     _hd8376283768_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst83788_ _e8376683785_))
                              (_K8376583782_ _subst83788_))
                            (_E8376483772_))))))
              (if (##pair? _rest8374183749_)
                  (let ((_hd8374683793_ (##car _rest8374183749_))
                        (_tl8374783795_ (##cdr _rest8374183749_)))
                    (let* ((_hd83798_ _hd8374683793_)
                           (_rest83800_ _tl8374783795_))
                      (_K8374583790_ _rest83800_ _hd83798_)))
                  (_else8374383757_)))))))
    (define gx#core-bind!__%
      (lambda (_key83604_ _val83605_ _rebind?83606_ _phi83607_ _ctx83608_)
        (letrec ((_update-binding83610_
                  (lambda (_xval83681_)
                    (if (or (_rebind?83606_ _ctx83608_ _xval83681_ _val83605_)
                            (and (##structure-direct-instance-of?
                                  _xval83681_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval83681_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val83605_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val83605_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval83681_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val83605_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val83605_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval83681_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val83605_
                        (if (and (##structure-direct-instance-of?
                                  _val83605_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val83605_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval83681_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val83605_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval83681_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval83681_
                            (if (and (##structure-direct-instance-of?
                                      _val83605_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval83681_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key83604_
                                 (cons (##unchecked-structure-ref
                                        _val83605_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val83605_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval83681_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval83681_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval83681_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval83681_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key83604_
                                 _val83605_
                                 _xval83681_))))))
                 (_gensubst83611_
                  (lambda (_subst83676_ _id83677_)
                    (let ((_eid83679_
                           (gensym (if (uninterned-symbol? _id83677_)
                                       '%
                                       _id83677_))))
                      (hash-put! _subst83676_ _id83677_ _eid83679_)
                      _eid83679_)))
                 (_subst!83612_
                  (lambda (_key83614_)
                    (let* ((_key8361583623_ _key83614_)
                           (_else8361783631_ (lambda () _key83614_))
                           (_K8361983664_
                            (lambda (_mark83634_ _id83635_)
                              (let* ((_mark8363683642_ _mark83634_)
                                     (_E8363883646_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8363683642_)))
                                     (_K8363983656_
                                      (lambda (_subst83649_)
                                        (if (not _subst83649_)
                                            (let ((_subst83651_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark83634_
                                               _subst83651_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst83611_
                                               _subst83651_
                                               _id83635_))
                                            (let ((_$e83653_
                                                   (hash-get
                                                    _subst83649_
                                                    _id83635_)))
                                              (if _$e83653_
                                                  (values _$e83653_)
                                                  (_gensubst83611_
                                                   _subst83649_
                                                   _id83635_)))))))
                                (if (##structure-instance-of?
                                     _mark8363683642_
                                     'gx#expander-mark::t)
                                    (let* ((_e8364083659_
                                            (##unchecked-structure-ref
                                             _mark8363683642_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst83662_ _e8364083659_))
                                      (_K8363983656_ _subst83662_))
                                    (_E8363883646_))))))
                      (if (##pair? _key8361583623_)
                          (let ((_hd8362083667_ (##car _key8361583623_))
                                (_tl8362183669_ (##cdr _key8361583623_)))
                            (let* ((_id83672_ _hd8362083667_)
                                   (_mark83674_ _tl8362183669_))
                              (_K8361983664_ _mark83674_ _id83672_)))
                          (_else8361783631_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx83608_ _phi83607_)
           (_subst!83612_ _key83604_)
           _val83605_
           _update-binding83610_))))
    (define gx#core-bind!__0
      (lambda (_key83698_ _val83699_)
        (let* ((_rebind?83701_ false)
               (_phi83703_ (gx#current-expander-phi))
               (_ctx83705_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83698_
           _val83699_
           _rebind?83701_
           _phi83703_
           _ctx83705_))))
    (define gx#core-bind!__1
      (lambda (_key83707_ _val83708_ _rebind?83709_)
        (let* ((_phi83711_ (gx#current-expander-phi))
               (_ctx83713_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83707_
           _val83708_
           _rebind?83709_
           _phi83711_
           _ctx83713_))))
    (define gx#core-bind!__2
      (lambda (_key83715_ _val83716_ _rebind?83717_ _phi83718_)
        (let ((_ctx83720_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83715_
           _val83716_
           _rebind?83717_
           _phi83718_
           _ctx83720_))))
    (define gx#core-bind!
      (lambda _g86125_
        (let ((_g86124_ (##length _g86125_)))
          (cond ((##fx= _g86124_ 2)
                 (apply (lambda (_key83698_ _val83699_)
                          (gx#core-bind!__0 _key83698_ _val83699_))
                        _g86125_))
                ((##fx= _g86124_ 3)
                 (apply (lambda (_key83707_ _val83708_ _rebind?83709_)
                          (gx#core-bind!__1
                           _key83707_
                           _val83708_
                           _rebind?83709_))
                        _g86125_))
                ((##fx= _g86124_ 4)
                 (apply (lambda (_key83715_
                                 _val83716_
                                 _rebind?83717_
                                 _phi83718_)
                          (gx#core-bind!__2
                           _key83715_
                           _val83716_
                           _rebind?83717_
                           _phi83718_))
                        _g86125_))
                ((##fx= _g86124_ 5)
                 (apply (lambda (_key83722_
                                 _val83723_
                                 _rebind?83724_
                                 _phi83725_
                                 _ctx83726_)
                          (gx#core-bind!__%
                           _key83722_
                           _val83723_
                           _rebind?83724_
                           _phi83725_
                           _ctx83726_))
                        _g86125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g86125_))))))
    (define gx#core-identifier-key
      (lambda (_stx83538_)
        (if (symbol? _stx83538_)
            (let* ((_g8353983547_ (gx#current-expander-marks))
                   (_else8354183555_ (lambda () _stx83538_))
                   (_K8354383560_
                    (lambda (_hd83558_) (cons _stx83538_ _hd83558_))))
              (if (##pair? _g8353983547_)
                  (let* ((_hd8354483563_ (##car _g8353983547_))
                         (_hd83566_ _hd8354483563_))
                    (_K8354383560_ _hd83566_))
                  (_else8354183555_)))
            (if (gx#identifier? _stx83538_)
                (let* ((_id83568_ (gx#syntax-local-unwrap _stx83538_))
                       (_eid83570_ (gx#stx-e _id83568_))
                       (_marks83572_ (gx#stx-identifier-marks* _id83568_)))
                  (let* ((_marks8357483582_ _marks83572_)
                         (_else8357683590_ (lambda () _eid83570_))
                         (_K8357883595_
                          (lambda (_hd83593_) (cons _eid83570_ _hd83593_))))
                    (if (##pair? _marks8357483582_)
                        (let* ((_hd8357983598_ (##car _marks8357483582_))
                               (_hd83601_ _hd8357983598_))
                          (_K8357883595_ _hd83601_))
                        (_else8357683590_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx83538_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_ctx83483_ _phi83484_)
        (letrec ((_make-phi83486_
                  (lambda (_super83536_)
                    (let ((__obj86096
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj86096
                       (gensym 'phi)
                       _super83536_)
                      __obj86096)))
                 (_make-phi/up83487_
                  (lambda (_ctx83531_ _super83532_)
                    (let ((_ctx+183534_ (_make-phi83486_ _super83532_)))
                      (##unchecked-structure-set!
                       _ctx83531_
                       _ctx+183534_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+183534_
                       _ctx83531_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+183534_)))
                 (_make-phi/down83488_
                  (lambda (_ctx83526_ _super83527_)
                    (let ((_ctx-183529_ (_make-phi83486_ _super83527_)))
                      (##unchecked-structure-set!
                       _ctx-183529_
                       _ctx83526_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx83526_
                       _ctx-183529_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-183529_)))
                 (_shift83489_
                  (lambda (_ctx83510_
                           _delta83511_
                           _make-delta-context83512_
                           _phi83513_
                           _K83514_)
                    (let ((_$e83516_
                           (##unchecked-structure-ref
                            _ctx83510_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e83516_
                          ((lambda (_super83519_)
                             (let* ((_super83521_
                                     (_K83514_ _super83519_ _delta83511_))
                                    (_ctx+d83523_
                                     (_make-delta-context83512_
                                      _ctx83510_
                                      _super83521_)))
                               (_K83514_
                                _ctx+d83523_
                                (fx- _phi83513_ _delta83511_))))
                           _$e83516_)
                          (error '"Bad context" _ctx83510_))))))
          (let _K83491_ ((_ctx83493_ _ctx83483_) (_phi83494_ _phi83484_))
            (if (fxzero? _phi83494_)
                _ctx83493_
                (if (##structure-instance-of? _ctx83493_ 'gx#context-phi::t)
                    (if (fxpositive? _phi83494_)
                        (let ((_$e83496_
                               (##unchecked-structure-ref
                                _ctx83493_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e83496_
                              ((lambda (_g8349883500_)
                                 (_K83491_ _g8349883500_ (fx- _phi83494_ '1)))
                               _$e83496_)
                              (_shift83489_
                               _ctx83493_
                               '1
                               _make-phi/up83487_
                               _phi83494_
                               _K83491_)))
                        (let ((_$e83503_
                               (##unchecked-structure-ref
                                _ctx83493_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e83503_
                              ((lambda (_g8350583507_)
                                 (_K83491_ _g8350583507_ (fx+ _phi83494_ '1)))
                               _$e83503_)
                              (_shift83489_
                               _ctx83493_
                               '-1
                               _make-phi/down83488_
                               _phi83494_
                               _K83491_))))
                    _ctx83493_))))))
    (define gx#core-context-get
      (lambda (_ctx83480_ _key83481_)
        (hash-get
         (##unchecked-structure-ref _ctx83480_ '2 gx#expander-context::t '#f)
         _key83481_)))
    (define gx#core-context-put!
      (lambda (_ctx83476_ _key83477_ _val83478_)
        (hash-put!
         (##unchecked-structure-ref _ctx83476_ '2 gx#expander-context::t '#f)
         _key83477_
         _val83478_)))
    (define gx#core-context-resolve
      (lambda (_ctx83463_ _key83464_)
        (let _lp83466_ ((_ctx83468_ _ctx83463_))
          (let ((_$e83470_ (gx#core-context-get _ctx83468_ _key83464_)))
            (if _$e83470_
                (values _$e83470_)
                (let ((_$e83473_
                       (if (##structure-instance-of?
                            _ctx83468_
                            'gx#context-phi::t)
                           (##unchecked-structure-ref
                            _ctx83468_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e83473_ (_lp83466_ _$e83473_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx83453_ _key83454_ _val83455_ _rebind83456_)
        (let ((_$e83458_ (gx#core-context-get _ctx83453_ _key83454_)))
          (if _$e83458_
              ((lambda (_xval83461_)
                 (gx#core-context-put!
                  _ctx83453_
                  _key83454_
                  (_rebind83456_ _xval83461_)))
               _$e83458_)
              (gx#core-context-put! _ctx83453_ _key83454_ _val83455_)))))
    (define gx#core-context-top__%
      (lambda (_ctx83431_ _stop?83432_)
        (let _lp83434_ ((_ctx83436_ _ctx83431_))
          (if (_stop?83432_ _ctx83436_)
              _ctx83436_
              (if (##structure-instance-of? _ctx83436_ 'gx#context-phi::t)
                  (_lp83434_
                   (##unchecked-structure-ref
                    _ctx83436_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx83442_ (gx#current-expander-context))
               (_stop?83444_ gx#top-context?))
          (gx#core-context-top__% _ctx83442_ _stop?83444_))))
    (define gx#core-context-top__1
      (lambda (_ctx83446_)
        (let ((_stop?83448_ gx#top-context?))
          (gx#core-context-top__% _ctx83446_ _stop?83448_))))
    (define gx#core-context-top
      (lambda _g86127_
        (let ((_g86126_ (##length _g86127_)))
          (cond ((##fx= _g86126_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g86127_))
                ((##fx= _g86126_ 1)
                 (apply (lambda (_ctx83446_)
                          (gx#core-context-top__1 _ctx83446_))
                        _g86127_))
                ((##fx= _g86126_ 2)
                 (apply (lambda (_ctx83450_ _stop?83451_)
                          (gx#core-context-top__% _ctx83450_ _stop?83451_))
                        _g86127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g86127_))))))
    (define gx#core-context-root__%
      (lambda (_ctx83416_)
        (let _lp83418_ ((_ctx83420_ _ctx83416_))
          (if (##structure-instance-of? _ctx83420_ 'gx#context-phi::t)
              (_lp83418_
               (##unchecked-structure-ref _ctx83420_ '3 gx#phi-context::t '#f))
              _ctx83420_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx83426_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx83426_))))
    (define gx#core-context-root
      (lambda _g86129_
        (let ((_g86128_ (##length _g86129_)))
          (cond ((##fx= _g86128_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g86129_))
                ((##fx= _g86128_ 1)
                 (apply (lambda (_ctx83428_)
                          (gx#core-context-root__% _ctx83428_))
                        _g86129_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g86129_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx83397_ . __8339483398_)
        (let ((_$e83401_ (gx#current-expander-allow-rebind?)))
          (if _$e83401_
              _$e83401_
              (if (##structure-instance-of? _ctx83397_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx83397_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx83397_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx83408_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx83408_))))
    (define gx#core-context-rebind?
      (lambda _g86131_
        (let ((_g86130_ (##length _g86131_)))
          (cond ((##fx= _g86130_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g86131_))
                ((##fx= _g86130_ 1)
                 (apply (lambda (_ctx83410_)
                          (gx#core-context-rebind?__% _ctx83410_))
                        _g86131_))
                ((##fx>= _g86130_ 1)
                 (apply gx#core-context-rebind?__% _g86131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g86131_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx83380_)
        (let ((_$e83382_ (gx#core-context-top__1 _ctx83380_)))
          (if _$e83382_
              ((lambda (_ctx83385_)
                 (if (##structure-instance-of?
                      _ctx83385_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx83385_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e83382_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx83391_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx83391_))))
    (define gx#core-context-namespace
      (lambda _g86133_
        (let ((_g86132_ (##length _g86133_)))
          (cond ((##fx= _g86132_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g86133_))
                ((##fx= _g86132_ 1)
                 (apply (lambda (_ctx83393_)
                          (gx#core-context-namespace__% _ctx83393_))
                        _g86133_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g86133_))))))
    (define gx#expander-binding?__%
      (lambda (_bind83366_ _is?83367_)
        (if (##structure-direct-instance-of? _bind83366_ 'gx#syntax-binding::t)
            (_is?83367_
             (##unchecked-structure-ref
              _bind83366_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind83372_)
        (let ((_is?83374_ gx#expander?))
          (gx#expander-binding?__% _bind83372_ _is?83374_))))
    (define gx#expander-binding?
      (lambda _g86135_
        (let ((_g86134_ (##length _g86135_)))
          (cond ((##fx= _g86134_ 1)
                 (apply (lambda (_bind83372_)
                          (gx#expander-binding?__0 _bind83372_))
                        _g86135_))
                ((##fx= _g86134_ 2)
                 (apply (lambda (_bind83376_ _is?83377_)
                          (gx#expander-binding?__% _bind83376_ _is?83377_))
                        _g86135_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g86135_))))))
    (define gx#core-expander-binding?
      (lambda (_bind83363_)
        (gx#expander-binding?__% _bind83363_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind83361_)
        (gx#expander-binding?__% _bind83361_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind83355_)
        (letrec ((_direct-special-form?83357_
                  (lambda (_obj83359_)
                    (##structure-direct-instance-of?
                     _obj83359_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind83355_ _direct-special-form?83357_))))
    (define gx#special-form-binding?
      (lambda (_bind83353_)
        (gx#expander-binding?__% _bind83353_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind83344_)
        (letrec ((_feature?83346_
                  (lambda (_e83348_)
                    (let ((_$e83350_
                           (##structure-instance-of?
                            _e83348_
                            'gx#feature-expander::t)))
                      (if _$e83350_
                          _$e83350_
                          (##structure-instance-of?
                           _e83348_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind83344_ _feature?83346_))))
    (define gx#private-feature-binding?
      (lambda (_bind83342_)
        (gx#expander-binding?__% _bind83342_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id83329_ _bound?83330_)
        (if (gx#identifier? _id83329_)
            (_bound?83330_ (gx#resolve-identifier__0 _id83329_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id83335_)
        (let ((_bound?83337_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id83335_ _bound?83337_))))
    (define gx#core-bound-identifier?
      (lambda _g86137_
        (let ((_g86136_ (##length _g86137_)))
          (cond ((##fx= _g86136_ 1)
                 (apply (lambda (_id83335_)
                          (gx#core-bound-identifier?__0 _id83335_))
                        _g86137_))
                ((##fx= _g86136_ 2)
                 (apply (lambda (_id83339_ _bound?83340_)
                          (gx#core-bound-identifier?__%
                           _id83339_
                           _bound?83340_))
                        _g86137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g86137_))))))
    (define gx#core-identifier=?
      (lambda (_x83319_ _y83320_)
        (letrec ((_y=?83322_
                  (lambda (_xid83326_)
                    ((if (list? _y83320_) memq eq?) _xid83326_ _y83320_))))
          (let ((_bind83324_ (gx#resolve-identifier__0 _x83319_)))
            (if (##structure-instance-of? _bind83324_ 'gx#binding::t)
                (_y=?83322_
                 (##unchecked-structure-ref _bind83324_ '1 gx#binding::t '#f))
                (_y=?83322_ (gx#stx-e _x83319_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e83317_)
        (if (interned-symbol? _e83317_)
            (string-index__0 (symbol->string _e83317_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx83272_ _src83273_ _ctx83274_ _marks83275_)
        (if (##structure? _stx83272_)
            (let ((_$e83277_ (gx#sealed-syntax-unwrap _stx83272_)))
              (if _$e83277_
                  (values _$e83277_)
                  (if (gx#identifier? _stx83272_)
                      (let ((_id83280_
                             (gx#stx-unwrap__% _stx83272_ _marks83275_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id83280_ '1 gx#AST::t '#f)
                         (let ((_$e83282_
                                (##unchecked-structure-ref
                                 _id83280_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e83282_ _$e83282_ _src83273_))
                         _ctx83274_
                         (##unchecked-structure-ref
                          _id83280_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx83272_)
                       (let ((_$e83285_ (gx#stx-source _stx83272_)))
                         (if _$e83285_ _$e83285_ _src83273_))
                       _ctx83274_
                       (reverse _marks83275_)))))
            (##structure
             gx#syntax-quote::t
             _stx83272_
             _src83273_
             _ctx83274_
             (reverse _marks83275_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx83291_)
        (let* ((_src83293_ '#f)
               (_ctx83295_ (gx#current-expander-context))
               (_marks83297_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83291_
           _src83293_
           _ctx83295_
           _marks83297_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx83299_ _src83300_)
        (let* ((_ctx83302_ (gx#current-expander-context))
               (_marks83304_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83299_
           _src83300_
           _ctx83302_
           _marks83304_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx83306_ _src83307_ _ctx83308_)
        (let ((_marks83310_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx83306_
           _src83307_
           _ctx83308_
           _marks83310_))))
    (define gx#core-quote-syntax
      (lambda _g86139_
        (let ((_g86138_ (##length _g86139_)))
          (cond ((##fx= _g86138_ 1)
                 (apply (lambda (_stx83291_)
                          (gx#core-quote-syntax__0 _stx83291_))
                        _g86139_))
                ((##fx= _g86138_ 2)
                 (apply (lambda (_stx83299_ _src83300_)
                          (gx#core-quote-syntax__1 _stx83299_ _src83300_))
                        _g86139_))
                ((##fx= _g86138_ 3)
                 (apply (lambda (_stx83306_ _src83307_ _ctx83308_)
                          (gx#core-quote-syntax__2
                           _stx83306_
                           _src83307_
                           _ctx83308_))
                        _g86139_))
                ((##fx= _g86138_ 4)
                 (apply (lambda (_stx83312_ _src83313_ _ctx83314_ _marks83315_)
                          (gx#core-quote-syntax__%
                           _stx83312_
                           _src83313_
                           _ctx83314_
                           _marks83315_))
                        _g86139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g86139_))))))
    (define gx#core-cons
      (lambda (_hd83268_ _tl83269_)
        (cons (gx#core-quote-syntax__0 _hd83268_) _tl83269_)))
    (define gx#core-list
      (lambda (_hd83265_ . _rest83266_)
        (cons (gx#core-quote-syntax__0 _hd83265_) _rest83266_)))
    (define gx#core-cons*
      (lambda (_hd83262_ . _rest83263_)
        (apply cons* (gx#core-quote-syntax__0 _hd83262_) _rest83263_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path83236_ _rel83237_)
        (let ((_path83249_ (gx#stx-e _stx-path83236_))
              (_reldir83250_
               (let _lp83239_ ((_relsrc83241_
                                (let ((_$e83246_
                                       (gx#stx-source _stx-path83236_)))
                                  (if _$e83246_ _$e83246_ _rel83237_))))
                 (if (##structure-instance-of? _relsrc83241_ 'gerbil#AST::t)
                     (_lp83239_
                      (let ((_$e83243_ (gx#stx-source _relsrc83241_)))
                        (if _$e83243_ _$e83243_ (gx#stx-e _relsrc83241_))))
                     (if (source-location-path? _relsrc83241_)
                         (path-directory (source-location-path _relsrc83241_))
                         (if (string? _relsrc83241_)
                             (path-directory _relsrc83241_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path83249_ (path-normalize _reldir83250_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path83255_)
        (let ((_rel83257_ '#f))
          (gx#core-resolve-path__% _stx-path83255_ _rel83257_))))
    (define gx#core-resolve-path
      (lambda _g86141_
        (let ((_g86140_ (##length _g86141_)))
          (cond ((##fx= _g86140_ 1)
                 (apply (lambda (_stx-path83255_)
                          (gx#core-resolve-path__0 _stx-path83255_))
                        _g86141_))
                ((##fx= _g86140_ 2)
                 (apply (lambda (_stx-path83259_ _rel83260_)
                          (gx#core-resolve-path__% _stx-path83259_ _rel83260_))
                        _g86141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g86141_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr83192_ _ctx83193_)
        (let* ((_repr8319483201_ _repr83192_)
               (_E8319683205_
                (lambda () (error '"No clause matching" _repr8319483201_)))
               (_K8319783213_
                (lambda (_subs83208_ _phi83209_)
                  (let ((_subst83211_
                         (if (not (null? _subs83208_))
                             (list->hash-table-eq _subs83208_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst83211_
                     _ctx83193_
                     _phi83209_
                     '#f)))))
          (if (##pair? _repr8319483201_)
              (let ((_hd8319883216_ (##car _repr8319483201_))
                    (_tl8319983218_ (##cdr _repr8319483201_)))
                (let* ((_phi83221_ _hd8319883216_)
                       (_subs83223_ _tl8319983218_))
                  (_K8319783213_ _subs83223_ _phi83221_)))
              (_E8319683205_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr83228_)
        (let ((_ctx83230_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr83228_ _ctx83230_))))
    (define gx#core-deserialize-mark
      (lambda _g86143_
        (let ((_g86142_ (##length _g86143_)))
          (cond ((##fx= _g86142_ 1)
                 (apply (lambda (_repr83228_)
                          (gx#core-deserialize-mark__0 _repr83228_))
                        _g86143_))
                ((##fx= _g86142_ 2)
                 (apply (lambda (_repr83232_ _ctx83233_)
                          (gx#core-deserialize-mark__% _repr83232_ _ctx83233_))
                        _g86143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g86143_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx83189_)
        (gx#stx-rewrap _stx83189_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx83187_)
        (gx#stx-unwrap__% _stx83187_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx83157_)
        (let* ((_g8315883166_ (gx#current-expander-marks))
               (_else8316083174_ (lambda () _stx83157_))
               (_K8316283179_
                (lambda (_hd83177_) (gx#stx-apply-mark _stx83157_ _hd83177_))))
          (if (##pair? _g8315883166_)
              (let* ((_hd8316383182_ (##car _g8315883166_))
                     (_hd83185_ _hd8316383182_))
                (_K8316283179_ _hd83185_))
              (_else8316083174_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx83142_ _E83143_)
        (let ((_bind83145_ (gx#resolve-identifier__0 _stx83142_)))
          (if (##structure-direct-instance-of?
               _bind83145_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind83145_
               '4
               gx#syntax-binding::t
               '#f)
              (_E83143_ _stx83142_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx83150_)
        (let ((_E83152_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx83150_ _E83152_))))
    (define gx#syntax-local-e
      (lambda _g86145_
        (let ((_g86144_ (##length _g86145_)))
          (cond ((##fx= _g86144_ 1)
                 (apply (lambda (_stx83150_) (gx#syntax-local-e__0 _stx83150_))
                        _g86145_))
                ((##fx= _g86144_ 2)
                 (apply (lambda (_stx83154_ _E83155_)
                          (gx#syntax-local-e__% _stx83154_ _E83155_))
                        _g86145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g86145_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx83126_ _E83127_)
        (let ((_e83129_ (gx#syntax-local-e__% _stx83126_ _E83127_)))
          (if (##structure-instance-of? _e83129_ 'gx#expander::t)
              (##structure-ref _e83129_ '1 gx#expander::t '#f)
              _e83129_))))
    (define gx#syntax-local-value__0
      (lambda (_stx83134_)
        (let ((_E83136_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx83134_ _E83136_))))
    (define gx#syntax-local-value
      (lambda _g86147_
        (let ((_g86146_ (##length _g86147_)))
          (cond ((##fx= _g86146_ 1)
                 (apply (lambda (_stx83134_)
                          (gx#syntax-local-value__0 _stx83134_))
                        _g86147_))
                ((##fx= _g86146_ 2)
                 (apply (lambda (_stx83138_ _E83139_)
                          (gx#syntax-local-value__% _stx83138_ _E83139_))
                        _g86147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g86147_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx83123_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx83123_)))))
