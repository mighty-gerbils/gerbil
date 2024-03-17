(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1710715075)
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
      (lambda _$args85674_
        (apply make-instance gx#expander-context::t _$args85674_)))
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
      (lambda _$args85671_
        (apply make-instance gx#root-context::t _$args85671_)))
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
      (lambda _$args85668_
        (apply make-instance gx#phi-context::t _$args85668_)))
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
      (lambda _$args85665_
        (apply make-instance gx#top-context::t _$args85665_)))
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
      (lambda _$args85662_
        (apply make-instance gx#module-context::t _$args85662_)))
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
      (lambda _$args85659_
        (apply make-instance gx#prelude-context::t _$args85659_)))
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
      (lambda _$args85656_
        (apply make-instance gx#local-context::t _$args85656_)))
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
      (lambda (_self85640_ _id85641_ _super85642_)
        (if (##fx< '3 (##structure-length _self85640_))
            (begin
              (##unchecked-structure-set!
               _self85640_
               _id85641_
               '1
               (##structure-type _self85640_)
               '#f)
              (##unchecked-structure-set!
               _self85640_
               (make-hash-table-eq)
               '2
               (##structure-type _self85640_)
               '#f)
              (##unchecked-structure-set!
               _self85640_
               _super85642_
               '3
               (##structure-type _self85640_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self85640_
                   '3
                   (##vector-length _self85640_)))))
    (define gx#phi-context:::init!__0
      (lambda (_self85647_ _id85648_)
        (let ((_super85650_ (gx#current-expander-context)))
          (gx#phi-context:::init!__% _self85647_ _id85648_ _super85650_))))
    (define gx#phi-context:::init!
      (lambda _g85717_
        (let ((_g85716_ (##length _g85717_)))
          (cond ((##fx= _g85716_ 2)
                 (apply (lambda (_self85647_ _id85648_)
                          (gx#phi-context:::init!__0 _self85647_ _id85648_))
                        _g85717_))
                ((##fx= _g85716_ 3)
                 (apply (lambda (_self85652_ _id85653_ _super85654_)
                          (gx#phi-context:::init!__%
                           _self85652_
                           _id85653_
                           _super85654_))
                        _g85717_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g85717_))))))
    (bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_self85504_ _super85505_)
        (if (##fx< '3 (##structure-length _self85504_))
            (begin
              (##unchecked-structure-set!
               _self85504_
               (gensym 'L)
               '1
               (##structure-type _self85504_)
               '#f)
              (##unchecked-structure-set!
               _self85504_
               (make-hash-table-eq)
               '2
               (##structure-type _self85504_)
               '#f)
              (##unchecked-structure-set!
               _self85504_
               _super85505_
               '3
               (##structure-type _self85504_)
               '#f))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self85504_
                   '3
                   (##vector-length _self85504_)))))
    (define gx#local-context:::init!__0
      (lambda (_self85510_)
        (let ((_super85512_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _self85510_ _super85512_))))
    (define gx#local-context:::init!
      (lambda _g85719_
        (let ((_g85718_ (##length _g85719_)))
          (cond ((##fx= _g85718_ 1)
                 (apply (lambda (_self85510_)
                          (gx#local-context:::init!__0 _self85510_))
                        _g85719_))
                ((##fx= _g85718_ 2)
                 (apply (lambda (_self85514_ _super85515_)
                          (gx#local-context:::init!__%
                           _self85514_
                           _super85515_))
                        _g85719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g85719_))))))
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
      (lambda _$args85378_ (apply make-instance gx#binding::t _$args85378_)))
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
      (lambda _$args85375_
        (apply make-instance gx#runtime-binding::t _$args85375_)))
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
      (lambda _$args85372_
        (apply make-instance gx#local-binding::t _$args85372_)))
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
      (lambda _$args85369_
        (apply make-instance gx#top-binding::t _$args85369_)))
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
      (lambda _$args85366_
        (apply make-instance gx#module-binding::t _$args85366_)))
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
      (lambda _$args85363_
        (apply make-instance gx#extern-binding::t _$args85363_)))
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
      (lambda _$args85360_
        (apply make-instance gx#syntax-binding::t _$args85360_)))
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
      (lambda _$args85357_
        (apply make-instance gx#import-binding::t _$args85357_)))
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
      (lambda _$args85354_
        (apply make-instance gx#alias-binding::t _$args85354_)))
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
      (lambda _$args85351_ (apply make-instance gx#expander::t _$args85351_)))
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
      (lambda _$args85348_
        (apply make-instance gx#core-expander::t _$args85348_)))
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
      (lambda _$args85345_
        (apply make-instance gx#expression-form::t _$args85345_)))
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
      (lambda _$args85342_
        (apply make-instance gx#special-form::t _$args85342_)))
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
      (lambda _$args85339_
        (apply make-instance gx#definition-form::t _$args85339_)))
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
      (lambda _$args85336_
        (apply make-instance gx#top-special-form::t _$args85336_)))
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
      (lambda _$args85333_
        (apply make-instance gx#module-special-form::t _$args85333_)))
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
      (lambda _$args85330_
        (apply make-instance gx#feature-expander::t _$args85330_)))
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
      (lambda _$args85327_
        (apply make-instance gx#private-feature-expander::t _$args85327_)))
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
      (lambda _$args85324_
        (apply make-instance gx#reserved-expander::t _$args85324_)))
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
      (lambda _$args85321_
        (apply make-instance gx#macro-expander::t _$args85321_)))
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
      (lambda _$args85318_
        (apply make-instance gx#rename-macro-expander::t _$args85318_)))
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
      (lambda _$args85315_
        (apply make-instance gx#user-expander::t _$args85315_)))
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
      (lambda _$args85312_
        (apply make-instance gx#expander-mark::t _$args85312_)))
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
      (lambda (_ctx85297_ _message85298_ _stx85299_ . _details85300_)
        (let ((_ctx85310_
               (let ((_$e85302_ _ctx85297_))
                 (if _$e85302_
                     _$e85302_
                     (let ((_$e85305_ (gx#core-context-top__0)))
                       (if _$e85305_
                           ((lambda (_ctx85308_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _ctx85308_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _$e85305_)
                           '#f))))))
          (raise (make-syntax-error
                  _message85298_
                  (cons _stx85299_ _details85300_)
                  _ctx85310_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_stx85284_ _expression?85285_)
        (gx#eval-syntax* (gx#core-expand__% _stx85284_ _expression?85285_))))
    (define gx#eval-syntax__0
      (lambda (_stx85290_)
        (let ((_expression?85292_ '#f))
          (gx#eval-syntax__% _stx85290_ _expression?85292_))))
    (define gx#eval-syntax
      (lambda _g85721_
        (let ((_g85720_ (##length _g85721_)))
          (cond ((##fx= _g85720_ 1)
                 (apply (lambda (_stx85290_) (gx#eval-syntax__0 _stx85290_))
                        _g85721_))
                ((##fx= _g85720_ 2)
                 (apply (lambda (_stx85294_ _expression?85295_)
                          (gx#eval-syntax__% _stx85294_ _expression?85295_))
                        _g85721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g85721_))))))
    (define gx#eval-syntax*
      (lambda (_stx85281_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _stx85281_))))
    (define gx#core-expand__%
      (lambda (_stx85268_ _expression?85269_)
        (if _expression?85269_
            (gx#core-expand-expression _stx85268_)
            (gx#core-expand-top _stx85268_))))
    (define gx#core-expand__0
      (lambda (_stx85274_)
        (let ((_expression?85276_ '#f))
          (gx#core-expand__% _stx85274_ _expression?85276_))))
    (define gx#core-expand
      (lambda _g85723_
        (let ((_g85722_ (##length _g85723_)))
          (cond ((##fx= _g85722_ 1)
                 (apply (lambda (_stx85274_) (gx#core-expand__0 _stx85274_))
                        _g85723_))
                ((##fx= _g85722_ 2)
                 (apply (lambda (_stx85278_ _expression?85279_)
                          (gx#core-expand__% _stx85278_ _expression?85279_))
                        _g85723_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g85723_))))))
    (define gx#core-expand-top
      (lambda (_stx85235_)
        (let* ((_stx85237_ (gx#core-expand*__0 _stx85235_))
               (_e8523885245_ _stx85237_)
               (_E8524085249_
                (lambda () (gx#core-expand-expression _stx85237_)))
               (_E8523985263_
                (lambda ()
                  (if (gx#stx-pair? _e8523885245_)
                      (let ((_e8524185253_ (gx#syntax-e _e8523885245_)))
                        (let ((_hd8524285256_ (##car _e8524185253_))
                              (_tl8524385258_ (##cdr _e8524185253_)))
                          (let ((_form85261_ _hd8524285256_))
                            (if (gx#core-bound-identifier?__0 _form85261_)
                                _stx85237_
                                (_E8524085249_)))))
                      (_E8524085249_)))))
          (_E8523985263_))))
    (define gx#core-expand-expression
      (lambda (_stx85182_)
        (letrec ((_sealed-expression?85184_
                  (lambda (_hd85205_)
                    (if (gx#sealed-syntax? _hd85205_)
                        (let* ((_e8520685213_ _hd85205_)
                               (_E8520885217_ (lambda () '#f))
                               (_E8520785231_
                                (lambda ()
                                  (if (gx#stx-pair? _e8520685213_)
                                      (let ((_e8520985221_
                                             (gx#syntax-e _e8520685213_)))
                                        (let ((_hd8521085224_
                                               (##car _e8520985221_))
                                              (_tl8521185226_
                                               (##cdr _e8520985221_)))
                                          (let ((_form85229_ _hd8521085224_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _form85229_
                                                 gx#expression-form-binding?)
                                                (_E8520885217_)))))
                                      (_E8520885217_)))))
                          (_E8520785231_))
                        '#f)))
                 (_illegal-expression85185_
                  (lambda (_hd85203_ . _g85724_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _stx85182_
                     _hd85203_)))
                 (_expand-e85186_
                  (lambda (_form85198_ _hd85199_)
                    (let ((_bind85201_
                           (if (##structure-instance-of?
                                _form85198_
                                'gx#binding::t)
                               _form85198_
                               (gx#resolve-identifier__0 _form85198_))))
                      (if (gx#core-expander-binding? _bind85201_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _bind85201_
                            '4
                            gx#syntax-binding::t
                            '#f)
                           (gx#stx-wrap-source
                            _hd85199_
                            (gx#stx-source _stx85182_)))
                          (if (##structure-direct-instance-of?
                               _bind85201_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _bind85201_
                                 '4
                                 gx#syntax-binding::t
                                 '#f)
                                (gx#stx-wrap-source
                                 _hd85199_
                                 (gx#stx-source _stx85182_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _stx85182_
                               _form85198_)))))))
          (let ((_hd85188_ (gx#core-expand-head _stx85182_)))
            (if (_sealed-expression?85184_ _hd85188_)
                _hd85188_
                (if (gx#stx-pair? _hd85188_)
                    (let* ((_form85190_ (gx#stx-car _hd85188_))
                           (_bind85192_
                            (if (gx#identifier? _form85190_)
                                (gx#resolve-identifier__0 _form85190_)
                                '#f)))
                      (if (or (not _bind85192_)
                              (not (gx#core-expander-binding? _bind85192_)))
                          (_expand-e85186_ '%%app (cons '%%app _hd85188_))
                          (if (eq? (##unchecked-structure-ref
                                    _bind85192_
                                    '1
                                    gx#binding::t
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _hd85188_
                               _illegal-expression85185_)
                              (if (gx#expression-form-binding? _bind85192_)
                                  (_expand-e85186_ _bind85192_ _hd85188_)
                                  (if (gx#direct-special-form-binding?
                                       _bind85192_)
                                      (gx#core-expand-expression
                                       (_expand-e85186_ _bind85192_ _hd85188_))
                                      (_illegal-expression85185_
                                       _hd85188_))))))
                    (if (gx#core-bound-identifier?__0 _hd85188_)
                        (_illegal-expression85185_ _hd85188_)
                        (if (gx#identifier? _hd85188_)
                            (_expand-e85186_
                             '%%ref
                             (cons '%%ref (cons _hd85188_ '())))
                            (if (gx#stx-datum? _hd85188_)
                                (_expand-e85186_
                                 '%#quote
                                 (cons '%#quote (cons _hd85188_ '())))
                                (_illegal-expression85185_ _hd85188_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_stx85177_)
        (call-with-parameters
         (lambda ()
           (let ((_stx85180_ (gx#core-expand-expression _stx85177_)))
             (values _stx85180_ (gx#eval-syntax* _stx85180_))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_stx85158_ _stop?85159_)
        (let _lp85161_ ((_stx85163_ _stx85158_))
          (if (_stop?85159_ _stx85163_)
              _stx85163_
              (let ((_rstx85165_ (gx#core-expand1 _stx85163_)))
                (if (eq? _stx85163_ _rstx85165_)
                    _stx85163_
                    (_lp85161_ _rstx85165_)))))))
    (define gx#core-expand*__0
      (lambda (_stx85170_)
        (let ((_stop?85172_ false))
          (gx#core-expand*__% _stx85170_ _stop?85172_))))
    (define gx#core-expand*
      (lambda _g85726_
        (let ((_g85725_ (##length _g85726_)))
          (cond ((##fx= _g85725_ 1)
                 (apply (lambda (_stx85170_) (gx#core-expand*__0 _stx85170_))
                        _g85726_))
                ((##fx= _g85725_ 2)
                 (apply (lambda (_stx85174_ _stop?85175_)
                          (gx#core-expand*__% _stx85174_ _stop?85175_))
                        _g85726_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g85726_))))))
    (define gx#core-expand1
      (lambda (_stx85114_)
        (letrec ((_step85116_
                  (lambda (_hd85153_)
                    (let ((_bind85155_ (gx#resolve-identifier__0 _hd85153_)))
                      (if (##structure-instance-of?
                           _bind85155_
                           'gx#runtime-binding::t)
                          _stx85114_
                          (if (##structure-direct-instance-of?
                               _bind85155_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _bind85155_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               _stx85114_)
                              (if (not _bind85155_)
                                  _stx85114_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _stx85114_))))))))
          (let* ((_e8511785125_ _stx85114_)
                 (_E8512385129_ (lambda () _stx85114_))
                 (_E8511985135_
                  (lambda ()
                    (let ((_hd85133_ _e8511785125_))
                      (if (gx#identifier? _hd85133_)
                          (_step85116_ _hd85133_)
                          (_E8512385129_)))))
                 (_E8511885149_
                  (lambda ()
                    (if (gx#stx-pair? _e8511785125_)
                        (let ((_e8512085139_ (gx#syntax-e _e8511785125_)))
                          (let ((_hd8512185142_ (##car _e8512085139_))
                                (_tl8512285144_ (##cdr _e8512085139_)))
                            (let ((_hd85147_ _hd8512185142_))
                              (if (gx#identifier? _hd85147_)
                                  (_step85116_ _hd85147_)
                                  (_E8511985135_)))))
                        (_E8511985135_)))))
            (_E8511885149_)))))
    (define gx#core-expand-head
      (lambda (_stx85080_)
        (letrec ((_stop?85082_
                  (lambda (_stx85084_)
                    (let* ((_e8508585092_ _stx85084_)
                           (_E8508785096_ (lambda () '#f))
                           (_E8508685110_
                            (lambda ()
                              (if (gx#stx-pair? _e8508585092_)
                                  (let ((_e8508885100_
                                         (gx#syntax-e _e8508585092_)))
                                    (let ((_hd8508985103_
                                           (##car _e8508885100_))
                                          (_tl8509085105_
                                           (##cdr _e8508885100_)))
                                      (let ((_hd85108_ _hd8508985103_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _hd85108_)
                                            (_E8508785096_)))))
                                  (_E8508785096_)))))
                      (_E8508685110_)))))
          (gx#core-expand*__% _stx85080_ _stop?85082_))))
    (define gx#core-expand-block__%
      (lambda (_stx84886_
               _expand-special84887_
               _begin-form84888_
               _expand-e84889_)
        (letrec ((_expand-splice84891_
                  (lambda (_hd85054_ _body85055_ _rest85056_ _r85057_)
                    (if (gx#stx-list? _body85055_)
                        (_K84895_
                         (gx#stx-foldr cons _rest85056_ _body85055_)
                         _r85057_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _stx84886_
                         _hd85054_))))
                 (_expand-cond-expand84892_
                  (lambda (_hd85050_ _rest85051_ _r85052_)
                    (_K84895_
                     (cons (gx#core-expand-cond-expand% _hd85050_) _rest85051_)
                     _r85052_)))
                 (_expand-include84893_
                  (lambda (_hd84999_ _rest85000_ _r85001_)
                    (let* ((_e8500285012_ _hd84999_)
                           (_E8500485016_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8500285012_)))
                           (_E8500385046_
                            (lambda ()
                              (if (gx#stx-pair? _e8500285012_)
                                  (let ((_e8500585020_
                                         (gx#syntax-e _e8500285012_)))
                                    (let ((_hd8500685023_
                                           (##car _e8500585020_))
                                          (_tl8500785025_
                                           (##cdr _e8500585020_)))
                                      (if (gx#stx-pair? _tl8500785025_)
                                          (let ((_e8500885028_
                                                 (gx#syntax-e _tl8500785025_)))
                                            (let ((_hd8500985031_
                                                   (##car _e8500885028_))
                                                  (_tl8501085033_
                                                   (##cdr _e8500885028_)))
                                              (let ((_path85036_
                                                     _hd8500985031_))
                                                (if (gx#stx-null?
                                                     _tl8501085033_)
                                                    (if (gx#stx-string?
                                                         _path85036_)
                                                        (let* ((_rpath85038_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _path85036_
                         (gx#stx-source _hd84999_)))
                       (_block85040_
                        (gx#core-expand-include%__% _hd84999_ _rpath85038_))
                       (_rbody85043_
                        (call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _block85040_
                            _expand-special84887_
                            '#f
                            _expand-e84889_))
                         gx#current-expander-path
                         (cons _rpath85038_ (gx#current-expander-path)))))
                  (_K84895_ _rest85000_ (foldr1 cons _r85001_ _rbody85043_)))
                (_E8500485016_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8500485016_)))))
                                          (_E8500485016_))))
                                  (_E8500485016_)))))
                      (_E8500385046_))))
                 (_expand-expression84894_
                  (lambda (_hd84995_ _rest84996_ _r84997_)
                    (_K84895_
                     _rest84996_
                     (cons (_expand-e84889_ _hd84995_) _r84997_))))
                 (_K84895_
                  (lambda (_rest84925_ _r84926_)
                    (let* ((_e8492784934_ _rest84925_)
                           (_E8492984938_
                            (lambda ()
                              (if _begin-form84888_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _begin-form84888_
                                    (reverse _r84926_))
                                   (gx#stx-source _stx84886_))
                                  _r84926_)))
                           (_E8492884991_
                            (lambda ()
                              (if (gx#stx-pair? _e8492784934_)
                                  (let ((_e8493084942_
                                         (gx#syntax-e _e8492784934_)))
                                    (let ((_hd8493184945_
                                           (##car _e8493084942_))
                                          (_tl8493284947_
                                           (##cdr _e8493084942_)))
                                      (let* ((_hd84950_ _hd8493184945_)
                                             (_rest84952_ _tl8493284947_))
                                        (if '#t
                                            (let* ((_hd84954_
                                                    (gx#core-expand-head
                                                     _hd84950_))
                                                   (_e8495584962_ _hd84954_)
                                                   (_E8495784966_
                                                    (lambda ()
                                                      (_expand-expression84894_
                                                       _hd84954_
                                                       _rest84952_
                                                       _r84926_)))
                                                   (_E8495684987_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8495584962_)
                                                          (let ((_e8495884970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8495584962_)))
                    (let ((_hd8495984973_ (##car _e8495884970_))
                          (_tl8496084975_ (##cdr _e8495884970_)))
                      (let* ((_form84978_ _hd8495984973_)
                             (_body84980_ _tl8496084975_))
                        (if '#t
                            (let ((_bind84982_
                                   (if (gx#identifier? _form84978_)
                                       (gx#resolve-identifier__0 _form84978_)
                                       '#f)))
                              (if (gx#special-form-binding? _bind84982_)
                                  (let ((_$e84984_
                                         (##unchecked-structure-ref
                                          _bind84982_
                                          '1
                                          gx#binding::t
                                          '#f)))
                                    (if (eq? '%#begin _$e84984_)
                                        (_expand-splice84891_
                                         _hd84954_
                                         _body84980_
                                         _rest84952_
                                         _r84926_)
                                        (if (eq? '%#cond-expand _$e84984_)
                                            (_expand-cond-expand84892_
                                             _hd84954_
                                             _rest84952_
                                             _r84926_)
                                            (if (eq? '%#include _$e84984_)
                                                (_expand-include84893_
                                                 _hd84954_
                                                 _rest84952_
                                                 _r84926_)
                                                (_expand-special84887_
                                                 _hd84954_
                                                 _K84895_
                                                 _rest84952_
                                                 _r84926_)))))
                                  (_expand-expression84894_
                                   _hd84954_
                                   _rest84952_
                                   _r84926_)))
                            (_E8495784966_)))))
                  (_E8495784966_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8495684987_))
                                            (_E8492984938_)))))
                                  (_E8492984938_)))))
                      (_E8492884991_)))))
          (let* ((_e8489684903_ _stx84886_)
                 (_E8489884907_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8489684903_)))
                 (_E8489784921_
                  (lambda ()
                    (if (gx#stx-pair? _e8489684903_)
                        (let ((_e8489984911_ (gx#syntax-e _e8489684903_)))
                          (let ((_hd8490084914_ (##car _e8489984911_))
                                (_tl8490184916_ (##cdr _e8489984911_)))
                            (let ((_body84919_ _tl8490184916_))
                              (if (gx#stx-list? _body84919_)
                                  (_K84895_ _body84919_ '())
                                  (_E8489884907_)))))
                        (_E8489884907_)))))
            (_E8489784921_)))))
    (define gx#core-expand-block__0
      (lambda (_stx85062_ _expand-special85063_)
        (let* ((_begin-form85065_ '%#begin)
               (_expand-e85067_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx85062_
           _expand-special85063_
           _begin-form85065_
           _expand-e85067_))))
    (define gx#core-expand-block__1
      (lambda (_stx85069_ _expand-special85070_ _begin-form85071_)
        (let ((_expand-e85073_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _stx85069_
           _expand-special85070_
           _begin-form85071_
           _expand-e85073_))))
    (define gx#core-expand-block
      (lambda _g85728_
        (let ((_g85727_ (##length _g85728_)))
          (cond ((##fx= _g85727_ 2)
                 (apply (lambda (_stx85062_ _expand-special85063_)
                          (gx#core-expand-block__0
                           _stx85062_
                           _expand-special85063_))
                        _g85728_))
                ((##fx= _g85727_ 3)
                 (apply (lambda (_stx85069_
                                 _expand-special85070_
                                 _begin-form85071_)
                          (gx#core-expand-block__1
                           _stx85069_
                           _expand-special85070_
                           _begin-form85071_))
                        _g85728_))
                ((##fx= _g85727_ 4)
                 (apply (lambda (_stx85075_
                                 _expand-special85076_
                                 _begin-form85077_
                                 _expand-e85078_)
                          (gx#core-expand-block__%
                           _stx85075_
                           _expand-special85076_
                           _begin-form85077_
                           _expand-e85078_))
                        _g85728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g85728_))))))
    (define gx#core-expand-block*
      (lambda (_stx84834_ _expand-special84835_)
        (let* ((_g8483684847_
                (gx#core-expand-block__1 _stx84834_ _expand-special84835_ '#f))
               (_E8484084851_
                (lambda () (error '"No clause matching" _g8483684847_))))
          (let ((_K8484584882_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _stx84834_)))
                (_K8484284868_ (lambda (_expr84866_) _expr84866_))
                (_K8484184857_
                 (lambda (_body84855_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _body84855_))
                    (gx#stx-source _stx84834_)))))
            (let ((_try-match8483884878_
                   (lambda ()
                     (if (##pair? _g8483684847_)
                         (let ((_tl8484484873_ (##cdr _g8483684847_))
                               (_hd8484384871_ (##car _g8483684847_)))
                           (if (##null? _tl8484484873_)
                               (let ((_expr84876_ _hd8484384871_))
                                 (_K8484284868_ _expr84876_))
                               (let ((_body84860_ _g8483684847_))
                                 (_K8484184857_ _body84860_))))
                         (let ((_body84860_ _g8483684847_))
                           (_K8484184857_ _body84860_))))))
              (if (##null? _g8483684847_)
                  (_K8484584882_)
                  (_try-match8483884878_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_stx84662_)
        (letrec ((_satisfied?84664_
                  (lambda (_condition84762_)
                    (let* ((_e8476384778_ _condition84762_)
                           (_E8477384782_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8476384778_)))
                           (_E8476684801_
                            (lambda ()
                              (if (gx#stx-pair? _e8476384778_)
                                  (let ((_e8477484786_
                                         (gx#syntax-e _e8476384778_)))
                                    (let ((_hd8477584789_
                                           (##car _e8477484786_))
                                          (_tl8477684791_
                                           (##cdr _e8477484786_)))
                                      (let* ((_combinator84794_ _hd8477584789_)
                                             (_body84796_ _tl8477684791_))
                                        (if (gx#stx-list? _body84796_)
                                            (let ((_$e84798_
                                                   (gx#stx-e
                                                    _combinator84794_)))
                                              (if (eq? 'not _$e84798_)
                                                  (not (gx#stx-ormap
                                                        _satisfied?84664_
                                                        _body84796_))
                                                  (if (eq? 'and _$e84798_)
                                                      (gx#stx-andmap
                                                       _satisfied?84664_
                                                       _body84796_)
                                                      (if (eq? 'or _$e84798_)
                                                          (gx#stx-ormap
                                                           _satisfied?84664_
                                                           _body84796_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e84798_)
                      (gx#stx-andmap gx#core-resolve-identifier _body84796_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _stx84662_
                       _combinator84794_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8477384782_)))))
                                  (_E8477384782_))))
                           (_E8476584824_
                            (lambda ()
                              (if (gx#stx-pair? _e8476384778_)
                                  (let ((_e8476784805_
                                         (gx#syntax-e _e8476384778_)))
                                    (let ((_hd8476884808_
                                           (##car _e8476784805_))
                                          (_tl8476984810_
                                           (##cdr _e8476784805_)))
                                      (if (and (gx#identifier? _hd8476884808_)
                                               (gx#core-identifier=?
                                                _hd8476884808_
                                                'unquote))
                                          (if (gx#stx-pair? _tl8476984810_)
                                              (let ((_e8477084813_
                                                     (gx#syntax-e
                                                      _tl8476984810_)))
                                                (let ((_hd8477184816_
                                                       (##car _e8477084813_))
                                                      (_tl8477284818_
                                                       (##cdr _e8477084813_)))
                                                  (let ((_expr84821_
                                                         _hd8477184816_))
                                                    (if (gx#stx-null?
                                                         _tl8477284818_)
                                                        (if '#t
                                                            (call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _expr84821_))
                                                             gx#current-expander-phi
                                                             (fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1))
                    (_E8476684801_))
                (_E8476684801_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8476684801_))
                                          (_E8476684801_))))
                                  (_E8476684801_))))
                           (_E8476484830_
                            (lambda ()
                              (let ((_id84828_ _e8476384778_))
                                (if (gx#identifier? _id84828_)
                                    (gx#core-bound-identifier?__%
                                     _id84828_
                                     gx#feature-binding?)
                                    (_E8476584824_))))))
                      (_E8476484830_))))
                 (_loop84665_
                  (lambda (_rest84695_)
                    (let* ((_e8469684704_ _rest84695_)
                           (_E8470284708_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8469684704_)))
                           (_E8469884712_
                            (lambda ()
                              (if (gx#stx-null? _e8469684704_)
                                  (if '#t '() (_E8470284708_))
                                  (_E8470284708_))))
                           (_E8469784758_
                            (lambda ()
                              (if (gx#stx-pair? _e8469684704_)
                                  (let ((_e8469984716_
                                         (gx#syntax-e _e8469684704_)))
                                    (let ((_hd8470084719_
                                           (##car _e8469984716_))
                                          (_tl8470184721_
                                           (##cdr _e8469984716_)))
                                      (let* ((_hd84724_ _hd8470084719_)
                                             (_rest84726_ _tl8470184721_))
                                        (if '#t
                                            (let* ((_e8472784734_ _hd84724_)
                                                   (_E8472984738_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _e8472784734_)))
                                                   (_E8472884754_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e8472784734_)
                                                          (let ((_e8473084742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e8472784734_)))
                    (let ((_hd8473184745_ (##car _e8473084742_))
                          (_tl8473284747_ (##cdr _e8473084742_)))
                      (let* ((_condition84750_ _hd8473184745_)
                             (_body84752_ _tl8473284747_))
                        (if '#t
                            (if (gx#stx-eq? _condition84750_ 'else)
                                (if (gx#stx-null? _rest84726_)
                                    _body84752_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _stx84662_
                                     _hd84724_))
                                (if (_satisfied?84664_ _condition84750_)
                                    _body84752_
                                    (_loop84665_ _rest84726_)))
                            (_E8472984738_)))))
                  (_E8472984738_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8472884754_))
                                            (_E8469884712_)))))
                                  (_E8469884712_)))))
                      (_E8469784758_)))))
          (let* ((_e8466684673_ _stx84662_)
                 (_E8466884677_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8466684673_)))
                 (_E8466784691_
                  (lambda ()
                    (if (gx#stx-pair? _e8466684673_)
                        (let ((_e8466984681_ (gx#syntax-e _e8466684673_)))
                          (let ((_hd8467084684_ (##car _e8466984681_))
                                (_tl8467184686_ (##cdr _e8466984681_)))
                            (let ((_clauses84689_ _tl8467184686_))
                              (if (gx#stx-list? _clauses84689_)
                                  (gx#core-cons
                                   'begin
                                   (_loop84665_ _clauses84689_))
                                  (_E8466884677_)))))
                        (_E8466884677_)))))
            (_E8466784691_)))))
    (define gx#core-expand-include%__%
      (lambda (_stx84605_ _rpath84606_)
        (let* ((_e8460784617_ _stx84605_)
               (_E8460984621_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8460784617_)))
               (_E8460884648_
                (lambda ()
                  (if (gx#stx-pair? _e8460784617_)
                      (let ((_e8461084625_ (gx#syntax-e _e8460784617_)))
                        (let ((_hd8461184628_ (##car _e8461084625_))
                              (_tl8461284630_ (##cdr _e8461084625_)))
                          (if (gx#stx-pair? _tl8461284630_)
                              (let ((_e8461384633_
                                     (gx#syntax-e _tl8461284630_)))
                                (let ((_hd8461484636_ (##car _e8461384633_))
                                      (_tl8461584638_ (##cdr _e8461384633_)))
                                  (let ((_path84641_ _hd8461484636_))
                                    (if (gx#stx-null? _tl8461584638_)
                                        (if (gx#stx-string? _path84641_)
                                            (let ((_rpath84646_
                                                   (let ((_$e84643_
                                                          _rpath84606_))
                                                     (if _$e84643_
                                                         _$e84643_
                                                         (gx#core-resolve-path__%
                                                          _path84641_
                                                          (gx#stx-source
                                                           _stx84605_))))))
                                              (if (member _rpath84646_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _stx84605_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _rpath84646_))
                                                    (gx#stx-source
                                                     _stx84605_)))))
                                            (_E8460984621_))
                                        (_E8460984621_)))))
                              (_E8460984621_))))
                      (_E8460984621_)))))
          (_E8460884648_))))
    (define gx#core-expand-include%__0
      (lambda (_stx84655_)
        (let ((_rpath84657_ '#f))
          (gx#core-expand-include%__% _stx84655_ _rpath84657_))))
    (define gx#core-expand-include%
      (lambda _g85730_
        (let ((_g85729_ (##length _g85730_)))
          (cond ((##fx= _g85729_ 1)
                 (apply (lambda (_stx84655_)
                          (gx#core-expand-include%__0 _stx84655_))
                        _g85730_))
                ((##fx= _g85729_ 2)
                 (apply (lambda (_stx84659_ _rpath84660_)
                          (gx#core-expand-include%__% _stx84659_ _rpath84660_))
                        _g85730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g85730_))))))
    (define gx#core-apply-expander__%
      (lambda (_K84574_ _stx84575_ _method84576_)
        (if (procedure? _K84574_)
            (let ((_$e84578_ (gx#stx-source _stx84575_)))
              (if _$e84578_
                  ((lambda (_g8458084582_)
                     (gx#stx-wrap-source (_K84574_ _stx84575_) _g8458084582_))
                   _$e84578_)
                  (_K84574_ _stx84575_)))
            (let ((_$e84585_ (bound-method-ref _K84574_ _method84576_)))
              (if _$e84585_
                  ((lambda (_g8458784589_)
                     (gx#core-apply-expander__%
                      _g8458784589_
                      _stx84575_
                      _method84576_))
                   _$e84585_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _stx84575_
                   _method84576_))))))
    (define gx#core-apply-expander__0
      (lambda (_K84595_ _stx84596_)
        (let ((_method84598_ 'apply-macro-expander))
          (gx#core-apply-expander__% _K84595_ _stx84596_ _method84598_))))
    (define gx#core-apply-expander
      (lambda _g85732_
        (let ((_g85731_ (##length _g85732_)))
          (cond ((##fx= _g85731_ 2)
                 (apply (lambda (_K84595_ _stx84596_)
                          (gx#core-apply-expander__0 _K84595_ _stx84596_))
                        _g85732_))
                ((##fx= _g85731_ 3)
                 (apply (lambda (_K84600_ _stx84601_ _method84602_)
                          (gx#core-apply-expander__%
                           _K84600_
                           _stx84601_
                           _method84602_))
                        _g85732_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g85732_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_self84570_ _stx84571_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; bottom method for apply-macro-expander"
         _stx84571_)))
    (bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_self84423_ _stx84424_)
        (let* ((_self8442584431_ _self84423_)
               (_E8442784435_
                (lambda () (error '"No clause matching" _self8442584431_)))
               (_K8442884440_
                (lambda (_K84438_)
                  (gx#core-apply-expander__0 _K84438_ _stx84424_))))
          (if (##structure-instance-of? _self8442584431_ 'gx#core-macro::t)
              (let* ((_e8442984443_
                      (##unchecked-structure-ref
                       _self8442584431_
                       '1
                       gx#expander::t
                       '#f))
                     (_K84446_ _e8442984443_))
                (_K8442884440_ _K84446_))
              (_E8442784435_)))))
    (bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_self84276_ _stx84277_)
        (if (gx#sealed-syntax? _stx84277_)
            _stx84277_
            (let* ((_self8427884284_ _self84276_)
                   (_E8428084288_
                    (lambda () (error '"No clause matching" _self8427884284_)))
                   (_K8428184293_
                    (lambda (_K84291_)
                      (gx#core-apply-expander__0 _K84291_ _stx84277_))))
              (if (##structure-instance-of?
                   _self8427884284_
                   'gx#core-expander::t)
                  (let* ((_e8428284296_
                          (##unchecked-structure-ref
                           _self8427884284_
                           '1
                           gx#expander::t
                           '#f))
                         (_K84299_ _e8428284296_))
                    (_K8428184293_ _K84299_))
                  (_E8428084288_))))))
    (bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_self84138_ _stx84139_ _top?84140_)
        (if (_top?84140_ (gx#current-expander-context))
            (gx#core-expander::apply-macro-expander _self84138_ _stx84139_)
            (gx#raise-syntax-error
             '#f
             '"Bad syntax; illegal context"
             _stx84139_))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_self84145_ _stx84146_)
        (let ((_top?84148_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _self84145_
           _stx84146_
           _top?84148_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g85734_
        (let ((_g85733_ (##length _g85734_)))
          (cond ((##fx= _g85733_ 2)
                 (apply (lambda (_self84145_ _stx84146_)
                          (gx#top-special-form::apply-macro-expander__0
                           _self84145_
                           _stx84146_))
                        _g85734_))
                ((##fx= _g85733_ 3)
                 (apply (lambda (_self84150_ _stx84151_ _top?84152_)
                          (gx#top-special-form::apply-macro-expander__%
                           _self84150_
                           _stx84151_
                           _top?84152_))
                        _g85734_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g85734_))))))
    (bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_self84012_ _stx84013_)
        (gx#top-special-form::apply-macro-expander__%
         _self84012_
         _stx84013_
         gx#module-context?)))
    (bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_self83837_ _stx83838_)
        (let* ((_self8383983845_ _self83837_)
               (_E8384183849_
                (lambda () (error '"No clause matching" _self8383983845_)))
               (_K8384283882_
                (lambda (_id83852_)
                  (let* ((_e8385383860_ _stx83838_)
                         (_E8385583864_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _e8385383860_)))
                         (_E8385483878_
                          (lambda ()
                            (if (gx#stx-pair? _e8385383860_)
                                (let ((_e8385683868_
                                       (gx#syntax-e _e8385383860_)))
                                  (let ((_hd8385783871_ (##car _e8385683868_))
                                        (_tl8385883873_ (##cdr _e8385683868_)))
                                    (let ((_body83876_ _tl8385883873_))
                                      (if '#t
                                          (gx#core-cons _id83852_ _body83876_)
                                          (_E8385583864_)))))
                                (_E8385583864_)))))
                    (_E8385483878_)))))
          (if (##structure-instance-of?
               _self8383983845_
               'gx#rename-macro-expander::t)
              (let* ((_e8384383885_
                      (##unchecked-structure-ref
                       _self8383983845_
                       '1
                       gx#expander::t
                       '#f))
                     (_id83888_ _e8384383885_))
                (_K8384283882_ _id83888_))
              (_E8384183849_)))))
    (bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_self83663_ _stx83664_ _method83665_)
        (let* ((_self8366683674_ _self83663_)
               (_E8366883678_
                (lambda () (error '"No clause matching" _self8366683674_)))
               (_K8366983685_
                (lambda (_phi83681_ _ctx83682_ _K83683_)
                  (gx#core-apply-user-macro
                   _K83683_
                   _stx83664_
                   _ctx83682_
                   _phi83681_
                   _method83665_))))
          (if (##structure-instance-of? _self8366683674_ 'gx#macro-expander::t)
              (let* ((_e8367083688_
                      (##unchecked-structure-ref
                       _self8366683674_
                       '1
                       gx#expander::t
                       '#f))
                     (_K83691_ _e8367083688_)
                     (_e8367183693_
                      (##unchecked-structure-ref
                       _self8366683674_
                       '2
                       gx#user-expander::t
                       '#f))
                     (_ctx83696_ _e8367183693_)
                     (_e8367283698_
                      (##unchecked-structure-ref
                       _self8366683674_
                       '3
                       gx#user-expander::t
                       '#f))
                     (_phi83701_ _e8367283698_))
                (_K8366983685_ _phi83701_ _ctx83696_ _K83691_))
              (_E8366883678_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_self83706_ _stx83707_)
        (let ((_method83709_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _self83706_
           _stx83707_
           _method83709_))))
    (define gx#core-apply-user-expander
      (lambda _g85736_
        (let ((_g85735_ (##length _g85736_)))
          (cond ((##fx= _g85735_ 2)
                 (apply (lambda (_self83706_ _stx83707_)
                          (gx#core-apply-user-expander__0
                           _self83706_
                           _stx83707_))
                        _g85736_))
                ((##fx= _g85735_ 3)
                 (apply (lambda (_self83711_ _stx83712_ _method83713_)
                          (gx#core-apply-user-expander__%
                           _self83711_
                           _stx83712_
                           _method83713_))
                        _g85736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g85736_))))))
    (define gx#core-apply-user-macro
      (lambda (_K83653_ _stx83654_ _ctx83655_ _phi83656_ _method83657_)
        (let ((_mark83659_
               (##structure
                gx#expander-mark::t
                '#f
                _ctx83655_
                _phi83656_
                _stx83654_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _K83653_
               (gx#stx-apply-mark _stx83654_ _mark83659_)
               _method83657_)
              _mark83659_))
           gx#current-expander-marks
           (cons _mark83659_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_stx83504_ _phi83505_ _ctx83506_)
        (let _lp83508_ ((_bind83510_
                         (gx#core-resolve-identifier__%
                          _stx83504_
                          _phi83505_
                          _ctx83506_)))
          (if (##structure-direct-instance-of?
               _bind83510_
               'gx#import-binding::t)
              (_lp83508_
               (##unchecked-structure-ref
                _bind83510_
                '4
                gx#import-binding::t
                '#f))
              (if (##structure-direct-instance-of?
                   _bind83510_
                   'gx#alias-binding::t)
                  (_lp83508_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref
                     _bind83510_
                     '4
                     gx#alias-binding::t
                     '#f)
                    _phi83505_
                    _ctx83506_))
                  _bind83510_)))))
    (define gx#resolve-identifier__0
      (lambda (_stx83515_)
        (let* ((_phi83517_ (gx#current-expander-phi))
               (_ctx83519_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx83515_ _phi83517_ _ctx83519_))))
    (define gx#resolve-identifier__1
      (lambda (_stx83521_ _phi83522_)
        (let ((_ctx83524_ (gx#current-expander-context)))
          (gx#resolve-identifier__% _stx83521_ _phi83522_ _ctx83524_))))
    (define gx#resolve-identifier
      (lambda _g85738_
        (let ((_g85737_ (##length _g85738_)))
          (cond ((##fx= _g85737_ 1)
                 (apply (lambda (_stx83515_)
                          (gx#resolve-identifier__0 _stx83515_))
                        _g85738_))
                ((##fx= _g85737_ 2)
                 (apply (lambda (_stx83521_ _phi83522_)
                          (gx#resolve-identifier__1 _stx83521_ _phi83522_))
                        _g85738_))
                ((##fx= _g85737_ 3)
                 (apply (lambda (_stx83526_ _phi83527_ _ctx83528_)
                          (gx#resolve-identifier__%
                           _stx83526_
                           _phi83527_
                           _ctx83528_))
                        _g85738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g85738_))))))
    (define gx#bind-identifier!__%
      (lambda (_stx83462_ _val83463_ _rebind?83464_ _phi83465_ _ctx83466_)
        (let ((_rebind?83468_
               (if (not _rebind?83464_)
                   gx#core-context-rebind?
                   (if (procedure? _rebind?83464_) _rebind?83464_ true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _stx83462_)
           _val83463_
           _rebind?83468_
           _phi83465_
           _ctx83466_))))
    (define gx#bind-identifier!__0
      (lambda (_stx83473_ _val83474_)
        (let* ((_rebind?83476_ '#f)
               (_phi83478_ (gx#current-expander-phi))
               (_ctx83480_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83473_
           _val83474_
           _rebind?83476_
           _phi83478_
           _ctx83480_))))
    (define gx#bind-identifier!__1
      (lambda (_stx83482_ _val83483_ _rebind?83484_)
        (let* ((_phi83486_ (gx#current-expander-phi))
               (_ctx83488_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83482_
           _val83483_
           _rebind?83484_
           _phi83486_
           _ctx83488_))))
    (define gx#bind-identifier!__2
      (lambda (_stx83490_ _val83491_ _rebind?83492_ _phi83493_)
        (let ((_ctx83495_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _stx83490_
           _val83491_
           _rebind?83492_
           _phi83493_
           _ctx83495_))))
    (define gx#bind-identifier!
      (lambda _g85740_
        (let ((_g85739_ (##length _g85740_)))
          (cond ((##fx= _g85739_ 2)
                 (apply (lambda (_stx83473_ _val83474_)
                          (gx#bind-identifier!__0 _stx83473_ _val83474_))
                        _g85740_))
                ((##fx= _g85739_ 3)
                 (apply (lambda (_stx83482_ _val83483_ _rebind?83484_)
                          (gx#bind-identifier!__1
                           _stx83482_
                           _val83483_
                           _rebind?83484_))
                        _g85740_))
                ((##fx= _g85739_ 4)
                 (apply (lambda (_stx83490_
                                 _val83491_
                                 _rebind?83492_
                                 _phi83493_)
                          (gx#bind-identifier!__2
                           _stx83490_
                           _val83491_
                           _rebind?83492_
                           _phi83493_))
                        _g85740_))
                ((##fx= _g85739_ 5)
                 (apply (lambda (_stx83497_
                                 _val83498_
                                 _rebind?83499_
                                 _phi83500_
                                 _ctx83501_)
                          (gx#bind-identifier!__%
                           _stx83497_
                           _val83498_
                           _rebind?83499_
                           _phi83500_
                           _ctx83501_))
                        _g85740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g85740_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_stx83434_ _phi83435_ _ctx83436_)
        (let _lp83438_ ((_e83440_ _stx83434_)
                        (_marks83441_ (gx#current-expander-marks)))
          (if (symbol? _e83440_)
              (gx#core-resolve-binding
               _e83440_
               _phi83435_
               _phi83435_
               _ctx83436_
               (reverse _marks83441_))
              (if (gx#identifier-quote? _e83440_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _e83440_ '1 gx#AST::t '#f)
                   _phi83435_
                   '0
                   (##unchecked-structure-ref
                    _e83440_
                    '3
                    gx#syntax-quote::t
                    '#f)
                   (##unchecked-structure-ref
                    _e83440_
                    '4
                    gx#syntax-quote::t
                    '#f))
                  (if (##structure-direct-instance-of?
                       _e83440_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _e83440_ '1 gx#AST::t '#f)
                       _phi83435_
                       _phi83435_
                       _ctx83436_
                       (foldl1 gx#apply-mark
                               (##unchecked-structure-ref
                                _e83440_
                                '3
                                gx#identifier-wrap::t
                                '#f)
                               _marks83441_))
                      (if (##structure-direct-instance-of?
                           _e83440_
                           'gx#syntax-wrap::t)
                          (_lp83438_
                           (##unchecked-structure-ref
                            _e83440_
                            '1
                            gx#AST::t
                            '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref
                             _e83440_
                             '3
                             gx#syntax-wrap::t
                             '#f)
                            _marks83441_))
                          (if (##structure-instance-of?
                               _e83440_
                               'gerbil#AST::t)
                              (_lp83438_
                               (##unchecked-structure-ref
                                _e83440_
                                '1
                                gx#AST::t
                                '#f)
                               _marks83441_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _stx83434_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_stx83446_)
        (let* ((_phi83448_ (gx#current-expander-phi))
               (_ctx83450_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx83446_ _phi83448_ _ctx83450_))))
    (define gx#core-resolve-identifier__1
      (lambda (_stx83452_ _phi83453_)
        (let ((_ctx83455_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__% _stx83452_ _phi83453_ _ctx83455_))))
    (define gx#core-resolve-identifier
      (lambda _g85742_
        (let ((_g85741_ (##length _g85742_)))
          (cond ((##fx= _g85741_ 1)
                 (apply (lambda (_stx83446_)
                          (gx#core-resolve-identifier__0 _stx83446_))
                        _g85742_))
                ((##fx= _g85741_ 2)
                 (apply (lambda (_stx83452_ _phi83453_)
                          (gx#core-resolve-identifier__1
                           _stx83452_
                           _phi83453_))
                        _g85742_))
                ((##fx= _g85741_ 3)
                 (apply (lambda (_stx83457_ _phi83458_ _ctx83459_)
                          (gx#core-resolve-identifier__%
                           _stx83457_
                           _phi83458_
                           _ctx83459_))
                        _g85742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g85742_))))))
    (define gx#core-resolve-binding
      (lambda (_id83347_ _phi83348_ _src-phi83349_ _ctx83350_ _marks83351_)
        (letrec ((_resolve83353_
                  (lambda (_ctx83421_ _src-phi83422_ _key83423_)
                    (let _lp83425_ ((_ctx83427_
                                     (gx#core-context-shift
                                      _ctx83421_
                                      _phi83348_))
                                    (_dphi83428_
                                     (fx- _phi83348_ _src-phi83422_)))
                      (let ((_$e83430_
                             (gx#core-context-resolve _ctx83427_ _key83423_)))
                        (if _$e83430_
                            (values _$e83430_)
                            (if (fxzero? _dphi83428_)
                                '#f
                                (if (fxpositive? _dphi83428_)
                                    (_lp83425_
                                     (gx#core-context-shift _ctx83427_ '-1)
                                     (fx- _dphi83428_ '1))
                                    (_lp83425_
                                     (gx#core-context-shift _ctx83427_ '1)
                                     (fx+ _dphi83428_ '1))))))))))
          (let _lp83355_ ((_ctx83357_ _ctx83350_)
                          (_src-phi83358_ _src-phi83349_)
                          (_rest83359_ _marks83351_))
            (let* ((_rest8336083368_ _rest83359_)
                   (_else8336283376_
                    (lambda ()
                      (_resolve83353_ _ctx83357_ _src-phi83358_ _id83347_)))
                   (_K8336483409_
                    (lambda (_rest83379_ _hd83380_)
                      (let* ((_hd8338183387_ _hd83380_)
                             (_E8338383391_
                              (lambda ()
                                (error '"No clause matching" _hd8338183387_)))
                             (_K8338483401_
                              (lambda (_subst83394_)
                                (let ((_$e83398_
                                       (let ((_key83396_
                                              (if _subst83394_
                                                  (hash-get
                                                   _subst83394_
                                                   _id83347_)
                                                  '#f)))
                                         (if _key83396_
                                             (_resolve83353_
                                              _ctx83357_
                                              _src-phi83358_
                                              _key83396_)
                                             '#f))))
                                  (if _$e83398_
                                      _$e83398_
                                      (_lp83355_
                                       (##unchecked-structure-ref
                                        _hd83380_
                                        '2
                                        gx#expander-mark::t
                                        '#f)
                                       (##unchecked-structure-ref
                                        _hd83380_
                                        '3
                                        gx#expander-mark::t
                                        '#f)
                                       _rest83379_))))))
                        (if (##structure-instance-of?
                             _hd8338183387_
                             'gx#expander-mark::t)
                            (let* ((_e8338583404_
                                    (##unchecked-structure-ref
                                     _hd8338183387_
                                     '1
                                     gx#expander-mark::t
                                     '#f))
                                   (_subst83407_ _e8338583404_))
                              (_K8338483401_ _subst83407_))
                            (_E8338383391_))))))
              (if (##pair? _rest8336083368_)
                  (let ((_hd8336583412_ (##car _rest8336083368_))
                        (_tl8336683414_ (##cdr _rest8336083368_)))
                    (let* ((_hd83417_ _hd8336583412_)
                           (_rest83419_ _tl8336683414_))
                      (_K8336483409_ _rest83419_ _hd83417_)))
                  (_else8336283376_)))))))
    (define gx#core-bind!__%
      (lambda (_key83223_ _val83224_ _rebind?83225_ _phi83226_ _ctx83227_)
        (letrec ((_update-binding83229_
                  (lambda (_xval83300_)
                    (if (or (_rebind?83225_ _ctx83227_ _xval83300_ _val83224_)
                            (and (##structure-direct-instance-of?
                                  _xval83300_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _xval83300_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _val83224_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _val83224_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _xval83300_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _val83224_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _val83224_
                                       '1
                                       gx#binding::t
                                       '#f)
                                      (##unchecked-structure-ref
                                       _xval83300_
                                       '1
                                       gx#binding::t
                                       '#f))))
                        _val83224_
                        (if (and (##structure-direct-instance-of?
                                  _val83224_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _val83224_
                                      '6
                                      gx#import-binding::t
                                      '#f)
                                     (and (##structure-instance-of?
                                           _xval83300_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _val83224_
                                                '1
                                                gx#binding::t
                                                '#f)
                                               (##unchecked-structure-ref
                                                _xval83300_
                                                '1
                                                gx#binding::t
                                                '#f)))))
                            _xval83300_
                            (if (and (##structure-direct-instance-of?
                                      _val83224_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _xval83300_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _key83223_
                                 (cons (##unchecked-structure-ref
                                        _val83224_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _val83224_
                                               '5
                                               gx#import-binding::t
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _xval83300_
                                        '1
                                        gx#binding::t
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _xval83300_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _xval83300_
                                                   '5
                                                   gx#import-binding::t
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _xval83300_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _key83223_
                                 _val83224_
                                 _xval83300_))))))
                 (_gensubst83230_
                  (lambda (_subst83295_ _id83296_)
                    (let ((_eid83298_
                           (gensym (if (uninterned-symbol? _id83296_)
                                       '%
                                       _id83296_))))
                      (hash-put! _subst83295_ _id83296_ _eid83298_)
                      _eid83298_)))
                 (_subst!83231_
                  (lambda (_key83233_)
                    (let* ((_key8323483242_ _key83233_)
                           (_else8323683250_ (lambda () _key83233_))
                           (_K8323883283_
                            (lambda (_mark83253_ _id83254_)
                              (let* ((_mark8325583261_ _mark83253_)
                                     (_E8325783265_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _mark8325583261_)))
                                     (_K8325883275_
                                      (lambda (_subst83268_)
                                        (if (not _subst83268_)
                                            (let ((_subst83270_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _mark83253_
                                               _subst83270_
                                               '1
                                               gx#expander-mark::t
                                               '#f)
                                              (_gensubst83230_
                                               _subst83270_
                                               _id83254_))
                                            (let ((_$e83272_
                                                   (hash-get
                                                    _subst83268_
                                                    _id83254_)))
                                              (if _$e83272_
                                                  (values _$e83272_)
                                                  (_gensubst83230_
                                                   _subst83268_
                                                   _id83254_)))))))
                                (if (##structure-instance-of?
                                     _mark8325583261_
                                     'gx#expander-mark::t)
                                    (let* ((_e8325983278_
                                            (##unchecked-structure-ref
                                             _mark8325583261_
                                             '1
                                             gx#expander-mark::t
                                             '#f))
                                           (_subst83281_ _e8325983278_))
                                      (_K8325883275_ _subst83281_))
                                    (_E8325783265_))))))
                      (if (##pair? _key8323483242_)
                          (let ((_hd8323983286_ (##car _key8323483242_))
                                (_tl8324083288_ (##cdr _key8323483242_)))
                            (let* ((_id83291_ _hd8323983286_)
                                   (_mark83293_ _tl8324083288_))
                              (_K8323883283_ _mark83293_ _id83291_)))
                          (_else8323683250_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _ctx83227_ _phi83226_)
           (_subst!83231_ _key83223_)
           _val83224_
           _update-binding83229_))))
    (define gx#core-bind!__0
      (lambda (_key83317_ _val83318_)
        (let* ((_rebind?83320_ false)
               (_phi83322_ (gx#current-expander-phi))
               (_ctx83324_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83317_
           _val83318_
           _rebind?83320_
           _phi83322_
           _ctx83324_))))
    (define gx#core-bind!__1
      (lambda (_key83326_ _val83327_ _rebind?83328_)
        (let* ((_phi83330_ (gx#current-expander-phi))
               (_ctx83332_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83326_
           _val83327_
           _rebind?83328_
           _phi83330_
           _ctx83332_))))
    (define gx#core-bind!__2
      (lambda (_key83334_ _val83335_ _rebind?83336_ _phi83337_)
        (let ((_ctx83339_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _key83334_
           _val83335_
           _rebind?83336_
           _phi83337_
           _ctx83339_))))
    (define gx#core-bind!
      (lambda _g85744_
        (let ((_g85743_ (##length _g85744_)))
          (cond ((##fx= _g85743_ 2)
                 (apply (lambda (_key83317_ _val83318_)
                          (gx#core-bind!__0 _key83317_ _val83318_))
                        _g85744_))
                ((##fx= _g85743_ 3)
                 (apply (lambda (_key83326_ _val83327_ _rebind?83328_)
                          (gx#core-bind!__1
                           _key83326_
                           _val83327_
                           _rebind?83328_))
                        _g85744_))
                ((##fx= _g85743_ 4)
                 (apply (lambda (_key83334_
                                 _val83335_
                                 _rebind?83336_
                                 _phi83337_)
                          (gx#core-bind!__2
                           _key83334_
                           _val83335_
                           _rebind?83336_
                           _phi83337_))
                        _g85744_))
                ((##fx= _g85743_ 5)
                 (apply (lambda (_key83341_
                                 _val83342_
                                 _rebind?83343_
                                 _phi83344_
                                 _ctx83345_)
                          (gx#core-bind!__%
                           _key83341_
                           _val83342_
                           _rebind?83343_
                           _phi83344_
                           _ctx83345_))
                        _g85744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g85744_))))))
    (define gx#core-identifier-key
      (lambda (_stx83157_)
        (if (symbol? _stx83157_)
            (let* ((_g8315883166_ (gx#current-expander-marks))
                   (_else8316083174_ (lambda () _stx83157_))
                   (_K8316283179_
                    (lambda (_hd83177_) (cons _stx83157_ _hd83177_))))
              (if (##pair? _g8315883166_)
                  (let* ((_hd8316383182_ (##car _g8315883166_))
                         (_hd83185_ _hd8316383182_))
                    (_K8316283179_ _hd83185_))
                  (_else8316083174_)))
            (if (gx#identifier? _stx83157_)
                (let* ((_id83187_ (gx#syntax-local-unwrap _stx83157_))
                       (_eid83189_ (gx#stx-e _id83187_))
                       (_marks83191_ (gx#stx-identifier-marks* _id83187_)))
                  (let* ((_marks8319383201_ _marks83191_)
                         (_else8319583209_ (lambda () _eid83189_))
                         (_K8319783214_
                          (lambda (_hd83212_) (cons _eid83189_ _hd83212_))))
                    (if (##pair? _marks8319383201_)
                        (let* ((_hd8319883217_ (##car _marks8319383201_))
                               (_hd83220_ _hd8319883217_))
                          (_K8319783214_ _hd83220_))
                        (_else8319583209_))))
                (gx#raise-syntax-error '#f '"Bad identifier" _stx83157_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_ctx83102_ _phi83103_)
        (letrec ((_make-phi83105_
                  (lambda (_super83155_)
                    (let ((__obj85715
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj85715
                       (gensym 'phi)
                       _super83155_)
                      __obj85715)))
                 (_make-phi/up83106_
                  (lambda (_ctx83150_ _super83151_)
                    (let ((_ctx+183153_ (_make-phi83105_ _super83151_)))
                      (##unchecked-structure-set!
                       _ctx83150_
                       _ctx+183153_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx+183153_
                       _ctx83150_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx+183153_)))
                 (_make-phi/down83107_
                  (lambda (_ctx83145_ _super83146_)
                    (let ((_ctx-183148_ (_make-phi83105_ _super83146_)))
                      (##unchecked-structure-set!
                       _ctx-183148_
                       _ctx83145_
                       '4
                       gx#phi-context::t
                       '#f)
                      (##unchecked-structure-set!
                       _ctx83145_
                       _ctx-183148_
                       '5
                       gx#phi-context::t
                       '#f)
                      _ctx-183148_)))
                 (_shift83108_
                  (lambda (_ctx83129_
                           _delta83130_
                           _make-delta-context83131_
                           _phi83132_
                           _K83133_)
                    (let ((_$e83135_
                           (##unchecked-structure-ref
                            _ctx83129_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if _$e83135_
                          ((lambda (_super83138_)
                             (let* ((_super83140_
                                     (_K83133_ _super83138_ _delta83130_))
                                    (_ctx+d83142_
                                     (_make-delta-context83131_
                                      _ctx83129_
                                      _super83140_)))
                               (_K83133_
                                _ctx+d83142_
                                (fx- _phi83132_ _delta83130_))))
                           _$e83135_)
                          (error '"Bad context" _ctx83129_))))))
          (let _K83110_ ((_ctx83112_ _ctx83102_) (_phi83113_ _phi83103_))
            (if (fxzero? _phi83113_)
                _ctx83112_
                (if (##structure-instance-of? _ctx83112_ 'gx#context-phi::t)
                    (if (fxpositive? _phi83113_)
                        (let ((_$e83115_
                               (##unchecked-structure-ref
                                _ctx83112_
                                '4
                                gx#phi-context::t
                                '#f)))
                          (if _$e83115_
                              ((lambda (_g8311783119_)
                                 (_K83110_ _g8311783119_ (fx- _phi83113_ '1)))
                               _$e83115_)
                              (_shift83108_
                               _ctx83112_
                               '1
                               _make-phi/up83106_
                               _phi83113_
                               _K83110_)))
                        (let ((_$e83122_
                               (##unchecked-structure-ref
                                _ctx83112_
                                '5
                                gx#phi-context::t
                                '#f)))
                          (if _$e83122_
                              ((lambda (_g8312483126_)
                                 (_K83110_ _g8312483126_ (fx+ _phi83113_ '1)))
                               _$e83122_)
                              (_shift83108_
                               _ctx83112_
                               '-1
                               _make-phi/down83107_
                               _phi83113_
                               _K83110_))))
                    _ctx83112_))))))
    (define gx#core-context-get
      (lambda (_ctx83099_ _key83100_)
        (hash-get
         (##unchecked-structure-ref _ctx83099_ '2 gx#expander-context::t '#f)
         _key83100_)))
    (define gx#core-context-put!
      (lambda (_ctx83095_ _key83096_ _val83097_)
        (hash-put!
         (##unchecked-structure-ref _ctx83095_ '2 gx#expander-context::t '#f)
         _key83096_
         _val83097_)))
    (define gx#core-context-resolve
      (lambda (_ctx83082_ _key83083_)
        (let _lp83085_ ((_ctx83087_ _ctx83082_))
          (let ((_$e83089_ (gx#core-context-get _ctx83087_ _key83083_)))
            (if _$e83089_
                (values _$e83089_)
                (let ((_$e83092_
                       (if (##structure-instance-of?
                            _ctx83087_
                            'gx#context-phi::t)
                           (##unchecked-structure-ref
                            _ctx83087_
                            '3
                            gx#phi-context::t
                            '#f)
                           '#f)))
                  (if _$e83092_ (_lp83085_ _$e83092_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_ctx83072_ _key83073_ _val83074_ _rebind83075_)
        (let ((_$e83077_ (gx#core-context-get _ctx83072_ _key83073_)))
          (if _$e83077_
              ((lambda (_xval83080_)
                 (gx#core-context-put!
                  _ctx83072_
                  _key83073_
                  (_rebind83075_ _xval83080_)))
               _$e83077_)
              (gx#core-context-put! _ctx83072_ _key83073_ _val83074_)))))
    (define gx#core-context-top__%
      (lambda (_ctx83050_ _stop?83051_)
        (let _lp83053_ ((_ctx83055_ _ctx83050_))
          (if (_stop?83051_ _ctx83055_)
              _ctx83055_
              (if (##structure-instance-of? _ctx83055_ 'gx#context-phi::t)
                  (_lp83053_
                   (##unchecked-structure-ref
                    _ctx83055_
                    '3
                    gx#phi-context::t
                    '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_ctx83061_ (gx#current-expander-context))
               (_stop?83063_ gx#top-context?))
          (gx#core-context-top__% _ctx83061_ _stop?83063_))))
    (define gx#core-context-top__1
      (lambda (_ctx83065_)
        (let ((_stop?83067_ gx#top-context?))
          (gx#core-context-top__% _ctx83065_ _stop?83067_))))
    (define gx#core-context-top
      (lambda _g85746_
        (let ((_g85745_ (##length _g85746_)))
          (cond ((##fx= _g85745_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g85746_))
                ((##fx= _g85745_ 1)
                 (apply (lambda (_ctx83065_)
                          (gx#core-context-top__1 _ctx83065_))
                        _g85746_))
                ((##fx= _g85745_ 2)
                 (apply (lambda (_ctx83069_ _stop?83070_)
                          (gx#core-context-top__% _ctx83069_ _stop?83070_))
                        _g85746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g85746_))))))
    (define gx#core-context-root__%
      (lambda (_ctx83035_)
        (let _lp83037_ ((_ctx83039_ _ctx83035_))
          (if (##structure-instance-of? _ctx83039_ 'gx#context-phi::t)
              (_lp83037_
               (##unchecked-structure-ref _ctx83039_ '3 gx#phi-context::t '#f))
              _ctx83039_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_ctx83045_ (gx#current-expander-context)))
          (gx#core-context-root__% _ctx83045_))))
    (define gx#core-context-root
      (lambda _g85748_
        (let ((_g85747_ (##length _g85748_)))
          (cond ((##fx= _g85747_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g85748_))
                ((##fx= _g85747_ 1)
                 (apply (lambda (_ctx83047_)
                          (gx#core-context-root__% _ctx83047_))
                        _g85748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g85748_))))))
    (define gx#core-context-rebind?__%
      (lambda (_ctx83016_ . __8301383017_)
        (let ((_$e83020_ (gx#current-expander-allow-rebind?)))
          (if _$e83020_
              _$e83020_
              (if (##structure-instance-of? _ctx83016_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _ctx83016_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _ctx83016_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_ctx83027_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _ctx83027_))))
    (define gx#core-context-rebind?
      (lambda _g85750_
        (let ((_g85749_ (##length _g85750_)))
          (cond ((##fx= _g85749_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g85750_))
                ((##fx= _g85749_ 1)
                 (apply (lambda (_ctx83029_)
                          (gx#core-context-rebind?__% _ctx83029_))
                        _g85750_))
                ((##fx>= _g85749_ 1)
                 (apply gx#core-context-rebind?__% _g85750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g85750_))))))
    (define gx#core-context-namespace__%
      (lambda (_ctx82999_)
        (let ((_$e83001_ (gx#core-context-top__1 _ctx82999_)))
          (if _$e83001_
              ((lambda (_ctx83004_)
                 (if (##structure-instance-of?
                      _ctx83004_
                      'gx#module-context::t)
                     (##unchecked-structure-ref
                      _ctx83004_
                      '6
                      gx#module-context::t
                      '#f)
                     '#f))
               _$e83001_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_ctx83010_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _ctx83010_))))
    (define gx#core-context-namespace
      (lambda _g85752_
        (let ((_g85751_ (##length _g85752_)))
          (cond ((##fx= _g85751_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g85752_))
                ((##fx= _g85751_ 1)
                 (apply (lambda (_ctx83012_)
                          (gx#core-context-namespace__% _ctx83012_))
                        _g85752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g85752_))))))
    (define gx#expander-binding?__%
      (lambda (_bind82985_ _is?82986_)
        (if (##structure-direct-instance-of? _bind82985_ 'gx#syntax-binding::t)
            (_is?82986_
             (##unchecked-structure-ref
              _bind82985_
              '4
              gx#syntax-binding::t
              '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_bind82991_)
        (let ((_is?82993_ gx#expander?))
          (gx#expander-binding?__% _bind82991_ _is?82993_))))
    (define gx#expander-binding?
      (lambda _g85754_
        (let ((_g85753_ (##length _g85754_)))
          (cond ((##fx= _g85753_ 1)
                 (apply (lambda (_bind82991_)
                          (gx#expander-binding?__0 _bind82991_))
                        _g85754_))
                ((##fx= _g85753_ 2)
                 (apply (lambda (_bind82995_ _is?82996_)
                          (gx#expander-binding?__% _bind82995_ _is?82996_))
                        _g85754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g85754_))))))
    (define gx#core-expander-binding?
      (lambda (_bind82982_)
        (gx#expander-binding?__% _bind82982_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_bind82980_)
        (gx#expander-binding?__% _bind82980_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_bind82974_)
        (letrec ((_direct-special-form?82976_
                  (lambda (_obj82978_)
                    (##structure-direct-instance-of?
                     _obj82978_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__% _bind82974_ _direct-special-form?82976_))))
    (define gx#special-form-binding?
      (lambda (_bind82972_)
        (gx#expander-binding?__% _bind82972_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_bind82963_)
        (letrec ((_feature?82965_
                  (lambda (_e82967_)
                    (let ((_$e82969_
                           (##structure-instance-of?
                            _e82967_
                            'gx#feature-expander::t)))
                      (if _$e82969_
                          _$e82969_
                          (##structure-instance-of?
                           _e82967_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _bind82963_ _feature?82965_))))
    (define gx#private-feature-binding?
      (lambda (_bind82961_)
        (gx#expander-binding?__% _bind82961_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_id82948_ _bound?82949_)
        (if (gx#identifier? _id82948_)
            (_bound?82949_ (gx#resolve-identifier__0 _id82948_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_id82954_)
        (let ((_bound?82956_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _id82954_ _bound?82956_))))
    (define gx#core-bound-identifier?
      (lambda _g85756_
        (let ((_g85755_ (##length _g85756_)))
          (cond ((##fx= _g85755_ 1)
                 (apply (lambda (_id82954_)
                          (gx#core-bound-identifier?__0 _id82954_))
                        _g85756_))
                ((##fx= _g85755_ 2)
                 (apply (lambda (_id82958_ _bound?82959_)
                          (gx#core-bound-identifier?__%
                           _id82958_
                           _bound?82959_))
                        _g85756_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g85756_))))))
    (define gx#core-identifier=?
      (lambda (_x82938_ _y82939_)
        (letrec ((_y=?82941_
                  (lambda (_xid82945_)
                    ((if (list? _y82939_) memq eq?) _xid82945_ _y82939_))))
          (let ((_bind82943_ (gx#resolve-identifier__0 _x82938_)))
            (if (##structure-instance-of? _bind82943_ 'gx#binding::t)
                (_y=?82941_
                 (##unchecked-structure-ref _bind82943_ '1 gx#binding::t '#f))
                (_y=?82941_ (gx#stx-e _x82938_)))))))
    (define gx#core-extern-symbol?
      (lambda (_e82936_)
        (if (interned-symbol? _e82936_)
            (string-index__0 (symbol->string _e82936_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_stx82891_ _src82892_ _ctx82893_ _marks82894_)
        (if (##structure? _stx82891_)
            (let ((_$e82896_ (gx#sealed-syntax-unwrap _stx82891_)))
              (if _$e82896_
                  (values _$e82896_)
                  (if (gx#identifier? _stx82891_)
                      (let ((_id82899_
                             (gx#stx-unwrap__% _stx82891_ _marks82894_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _id82899_ '1 gx#AST::t '#f)
                         (let ((_$e82901_
                                (##unchecked-structure-ref
                                 _id82899_
                                 '2
                                 gx#AST::t
                                 '#f)))
                           (if _$e82901_ _$e82901_ _src82892_))
                         _ctx82893_
                         (##unchecked-structure-ref
                          _id82899_
                          '3
                          gx#identifier-wrap::t
                          '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _stx82891_)
                       (let ((_$e82904_ (gx#stx-source _stx82891_)))
                         (if _$e82904_ _$e82904_ _src82892_))
                       _ctx82893_
                       (reverse _marks82894_)))))
            (##structure
             gx#syntax-quote::t
             _stx82891_
             _src82892_
             _ctx82893_
             (reverse _marks82894_)))))
    (define gx#core-quote-syntax__0
      (lambda (_stx82910_)
        (let* ((_src82912_ '#f)
               (_ctx82914_ (gx#current-expander-context))
               (_marks82916_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx82910_
           _src82912_
           _ctx82914_
           _marks82916_))))
    (define gx#core-quote-syntax__1
      (lambda (_stx82918_ _src82919_)
        (let* ((_ctx82921_ (gx#current-expander-context))
               (_marks82923_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx82918_
           _src82919_
           _ctx82921_
           _marks82923_))))
    (define gx#core-quote-syntax__2
      (lambda (_stx82925_ _src82926_ _ctx82927_)
        (let ((_marks82929_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _stx82925_
           _src82926_
           _ctx82927_
           _marks82929_))))
    (define gx#core-quote-syntax
      (lambda _g85758_
        (let ((_g85757_ (##length _g85758_)))
          (cond ((##fx= _g85757_ 1)
                 (apply (lambda (_stx82910_)
                          (gx#core-quote-syntax__0 _stx82910_))
                        _g85758_))
                ((##fx= _g85757_ 2)
                 (apply (lambda (_stx82918_ _src82919_)
                          (gx#core-quote-syntax__1 _stx82918_ _src82919_))
                        _g85758_))
                ((##fx= _g85757_ 3)
                 (apply (lambda (_stx82925_ _src82926_ _ctx82927_)
                          (gx#core-quote-syntax__2
                           _stx82925_
                           _src82926_
                           _ctx82927_))
                        _g85758_))
                ((##fx= _g85757_ 4)
                 (apply (lambda (_stx82931_ _src82932_ _ctx82933_ _marks82934_)
                          (gx#core-quote-syntax__%
                           _stx82931_
                           _src82932_
                           _ctx82933_
                           _marks82934_))
                        _g85758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g85758_))))))
    (define gx#core-cons
      (lambda (_hd82887_ _tl82888_)
        (cons (gx#core-quote-syntax__0 _hd82887_) _tl82888_)))
    (define gx#core-list
      (lambda (_hd82884_ . _rest82885_)
        (cons (gx#core-quote-syntax__0 _hd82884_) _rest82885_)))
    (define gx#core-cons*
      (lambda (_hd82881_ . _rest82882_)
        (apply cons* (gx#core-quote-syntax__0 _hd82881_) _rest82882_)))
    (define gx#core-resolve-path__%
      (lambda (_stx-path82855_ _rel82856_)
        (let ((_path82868_ (gx#stx-e _stx-path82855_))
              (_reldir82869_
               (let _lp82858_ ((_relsrc82860_
                                (let ((_$e82865_
                                       (gx#stx-source _stx-path82855_)))
                                  (if _$e82865_ _$e82865_ _rel82856_))))
                 (if (##structure-instance-of? _relsrc82860_ 'gerbil#AST::t)
                     (_lp82858_
                      (let ((_$e82862_ (gx#stx-source _relsrc82860_)))
                        (if _$e82862_ _$e82862_ (gx#stx-e _relsrc82860_))))
                     (if (source-location-path? _relsrc82860_)
                         (path-directory (source-location-path _relsrc82860_))
                         (if (string? _relsrc82860_)
                             (path-directory _relsrc82860_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _path82868_ (path-normalize _reldir82869_)))))
    (define gx#core-resolve-path__0
      (lambda (_stx-path82874_)
        (let ((_rel82876_ '#f))
          (gx#core-resolve-path__% _stx-path82874_ _rel82876_))))
    (define gx#core-resolve-path
      (lambda _g85760_
        (let ((_g85759_ (##length _g85760_)))
          (cond ((##fx= _g85759_ 1)
                 (apply (lambda (_stx-path82874_)
                          (gx#core-resolve-path__0 _stx-path82874_))
                        _g85760_))
                ((##fx= _g85759_ 2)
                 (apply (lambda (_stx-path82878_ _rel82879_)
                          (gx#core-resolve-path__% _stx-path82878_ _rel82879_))
                        _g85760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g85760_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_repr82811_ _ctx82812_)
        (let* ((_repr8281382820_ _repr82811_)
               (_E8281582824_
                (lambda () (error '"No clause matching" _repr8281382820_)))
               (_K8281682832_
                (lambda (_subs82827_ _phi82828_)
                  (let ((_subst82830_
                         (if (not (null? _subs82827_))
                             (list->hash-table-eq _subs82827_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _subst82830_
                     _ctx82812_
                     _phi82828_
                     '#f)))))
          (if (##pair? _repr8281382820_)
              (let ((_hd8281782835_ (##car _repr8281382820_))
                    (_tl8281882837_ (##cdr _repr8281382820_)))
                (let* ((_phi82840_ _hd8281782835_)
                       (_subs82842_ _tl8281882837_))
                  (_K8281682832_ _subs82842_ _phi82840_)))
              (_E8281582824_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_repr82847_)
        (let ((_ctx82849_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _repr82847_ _ctx82849_))))
    (define gx#core-deserialize-mark
      (lambda _g85762_
        (let ((_g85761_ (##length _g85762_)))
          (cond ((##fx= _g85761_ 1)
                 (apply (lambda (_repr82847_)
                          (gx#core-deserialize-mark__0 _repr82847_))
                        _g85762_))
                ((##fx= _g85761_ 2)
                 (apply (lambda (_repr82851_ _ctx82852_)
                          (gx#core-deserialize-mark__% _repr82851_ _ctx82852_))
                        _g85762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g85762_))))))
    (define gx#syntax-local-rewrap
      (lambda (_stx82808_)
        (gx#stx-rewrap _stx82808_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_stx82806_)
        (gx#stx-unwrap__% _stx82806_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_stx82776_)
        (let* ((_g8277782785_ (gx#current-expander-marks))
               (_else8277982793_ (lambda () _stx82776_))
               (_K8278182798_
                (lambda (_hd82796_) (gx#stx-apply-mark _stx82776_ _hd82796_))))
          (if (##pair? _g8277782785_)
              (let* ((_hd8278282801_ (##car _g8277782785_))
                     (_hd82804_ _hd8278282801_))
                (_K8278182798_ _hd82804_))
              (_else8277982793_)))))
    (define gx#syntax-local-e__%
      (lambda (_stx82761_ _E82762_)
        (let ((_bind82764_ (gx#resolve-identifier__0 _stx82761_)))
          (if (##structure-direct-instance-of?
               _bind82764_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref
               _bind82764_
               '4
               gx#syntax-binding::t
               '#f)
              (_E82762_ _stx82761_)))))
    (define gx#syntax-local-e__0
      (lambda (_stx82769_)
        (let ((_E82771_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _stx82769_ _E82771_))))
    (define gx#syntax-local-e
      (lambda _g85764_
        (let ((_g85763_ (##length _g85764_)))
          (cond ((##fx= _g85763_ 1)
                 (apply (lambda (_stx82769_) (gx#syntax-local-e__0 _stx82769_))
                        _g85764_))
                ((##fx= _g85763_ 2)
                 (apply (lambda (_stx82773_ _E82774_)
                          (gx#syntax-local-e__% _stx82773_ _E82774_))
                        _g85764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g85764_))))))
    (define gx#syntax-local-value__%
      (lambda (_stx82745_ _E82746_)
        (let ((_e82748_ (gx#syntax-local-e__% _stx82745_ _E82746_)))
          (if (##structure-instance-of? _e82748_ 'gx#expander::t)
              (##structure-ref _e82748_ '1 gx#expander::t '#f)
              _e82748_))))
    (define gx#syntax-local-value__0
      (lambda (_stx82753_)
        (let ((_E82755_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _stx82753_ _E82755_))))
    (define gx#syntax-local-value
      (lambda _g85766_
        (let ((_g85765_ (##length _g85766_)))
          (cond ((##fx= _g85765_ 1)
                 (apply (lambda (_stx82753_)
                          (gx#syntax-local-value__0 _stx82753_))
                        _g85766_))
                ((##fx= _g85765_ 2)
                 (apply (lambda (_stx82757_ _E82758_)
                          (gx#syntax-local-value__% _stx82757_ _E82758_))
                        _g85766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g85766_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_stx82742_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _stx82742_)))))
